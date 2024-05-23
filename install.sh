#!/bin/zsh

# Self-install
[[ -d $HOME/.config/.files ]] || git clone git@github.com:ckupe/dotfiles.git $HOME/.config/.files
scriptDir=$HOME/.config/.files

# Neovim
ln -sf $scriptDir/nvim $HOME/.config/nvim

# Alacritty
# We use Alacritty's default Linux config directory as our storage location here.
[[ -d $HOME/.config/alacritty ]] || mkdir -p $HOME/.config/alacritty
[[ -d $HOME/.config/alacritty/themes ]] || git clone https://github.com/alacritty/alacritty-theme $HOME/.config/alacritty/themes
ln -sf $scriptDir/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

# Zsh
[[ -d $HOME/.oh-my-zsh ]] || /bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[[ -f $HOME/.oh-my-zsh/themes/ckupe.zsh-theme ]] || curl -s https://raw.githubusercontent.com/ckupe/ckupe.zsh-theme/HEAD/ckupe.zsh-theme -o $HOME/.oh-my-zsh/themes/ckupe.zsh-theme
ln -sf $scriptDir/zsh/zshrc $HOME/.zshrc

# Tmux
ln -sf $scriptDir/tmux/tmux.conf $HOME/.tmux.conf
