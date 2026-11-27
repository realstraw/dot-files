no_fold_packages := aerospace ghostty ack zsh ctags edit git yabai input sbt skhd vrapper kitty starship idea yanky-borders zellij neovide claude codex bin aerc herdr
fold_packages := tmux alacritty

packages := $(no_fold_packages) $(fold_packages)

.PHONY: migrate
migrate:
	./migrate.sh

.PHONY: install
install: migrate
	git submodule update --init --recursive
	$(MAKE) link
	$(MAKE) merge

# Symlink packages with Stow only (no migrate, no merge).
.PHONY: link
link:
	for p in $(no_fold_packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done
	for p in $(fold_packages); do \
		stow -t $(HOME) --dotfiles $$p; \
	done

# Configs that tools and other installers (devbar, aisuite) also write to, so
# they're merged instead of symlinked: merged/dot-X/F merges into ~/.X/F.
# Live values win; repo hook groups are appended once. Backs up each target.
.PHONY: merge
merge:
	@for src in $$(find merged -name '*.json' -path 'merged/dot-*'); do \
		dst="$(HOME)/.$${src#merged/dot-}"; \
		mkdir -p "$$(dirname "$$dst")"; \
		[ -f "$$dst" ] || echo '{}' > "$$dst"; \
		cp -p "$$dst" "$$dst.bak" && \
		jq --argjson repo "$$(cat "$$src")" -f merged/merge.jq "$$dst.bak" > "$$dst.tmp" && \
		mv "$$dst.tmp" "$$dst" && \
		echo "merged $$src -> $$dst" || exit 1; \
	done

.PHONY: update-submodules
update-submodules:
	git submodule update --remote --merge

.PHONY: clean
clean:
	for p in $(packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
