no_fold_packages := aerospace ghostty ack zsh ctags edit git yabai input sbt skhd vrapper kitty starship idea yanky-borders zellij neovide claude bin
fold_packages := tmux alacritty

packages := $(no_fold_packages) $(fold_packages)

.PHONY: migrate
migrate:
	./migrate.sh

.PHONY: install
install: migrate
	git submodule update --init --recursive
	for p in $(no_fold_packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done
	for p in $(fold_packages); do \
		stow -t $(HOME) --dotfiles $$p; \
	done

.PHONY: update-submodules
update-submodules:
	git submodule update --remote --merge

.PHONY: clean
clean:
	for p in $(packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
