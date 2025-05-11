tpm_target := $(HOME)/.tmux/plugins/tpm

clean_packages := test tmux aerospace ghostty ack zsh ctags edit git

install_packages := tmux aerospace ghostty ack zsh ctags edit git

.PHONY: install
install: $(tpm_target)
	for p in $(install_packages); do \
		stow -t $(HOME) --no-folding --dotfiles $$p; \
	done

$(tpm_target):
	mkdir -p $(HOME)/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm $(HOME)/.tmux/plugins/tpm

.PHONY: clean
clean:
	for p in $(clean_packages); do \
		stow -t $(HOME) -D --dotfiles $$p; \
	done
