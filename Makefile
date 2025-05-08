tpm_target := $(HOME)/.tmux/plugins/tpm

packages := test tmux zshrc aerospace ghostty

.PHONY: install
install: $(tpm_target)
	for p in $(packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done

$(tpm_target):
	mkdir -p $(HOME)/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm $(HOME)/.tmux/plugins/tpm

.PHONY: clean
clean:
	for p in $(packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
