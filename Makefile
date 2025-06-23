tpm_target := $(HOME)/.tmux/plugins/tpm

clean_packages := test tmux aerospace ghostty ack zsh ctags edit git yabai input sbt skhd vrapper kitty starship yanky-borders

install_packages := tmux aerospace ghostty ack zsh ctags edit git yabai input sbt skhd vrapper kitty starship idea yanky-borders

.PHONY: install
install: $(tpm_target)
	for p in $(install_packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done
	stow -t $(HOME) --dotfiles alacritty

$(tpm_target):
	mkdir -p $(HOME)/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm $(HOME)/.tmux/plugins/tpm

.PHONY: clean
clean:
	for p in $(clean_packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
	stow -t $(HOME) -D --dotfiles alacritty
