packages := tmux aerospace ghostty ack zsh ctags edit git yabai input sbt skhd vrapper kitty starship idea yanky-borders zellij neovide claude bin

.PHONY: migrate
migrate:
	./migrate.sh

.PHONY: install
install: migrate
	git submodule update --init --recursive
	for p in $(packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done
	stow -t $(HOME) --dotfiles alacritty

.PHONY: clean
clean:
	for p in $(packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
	stow -t $(HOME) -D --dotfiles alacritty
