tpm_target := $(HOME)/.tmux/plugins/tpm

.PHONY: stow
stow: $(tpm_target)
	stow -t $(HOME) --no-folding test
	stow -t $(HOME) --no-folding tmux

$(tpm_target):
	mkdir -p $(HOME)/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm $(HOME)/.tmux/plugins/tpm
