#!/bin/zsh

scriptDir=$(cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P)
[[ -d $HOME/.config/nvim ]] || ln -sf $scriptDir/nvim $HOME/.config/nvim
# We use Alacritty's default Linux config directory as our storage location here.
[[ -d $HOME/.config/alacritty/themes ]] || git clone https://github.com/alacritty/alacritty-theme $HOME/.config/alacritty/themes
[[ -d $HOME/.config/alacritty ]] || mkdir -p $HOME/.config/alacritty
ln -sf $scriptDir/alacritty.toml $HOME/.config/alacritty/alacritty.toml

ln -sf $scriptDir/zshrc $HOME/.zshrc
ln -sf $scriptDir/tmux.conf $HOME/.tmux.conf

[[ -f $HOME/.oh-my-zsh/themes/ckupe.zsh-theme ]] || curl -s https://raw.githubusercontent.com/ckupe/ckupe.zsh-theme/HEAD/ckupe.zsh-theme -o $HOME/.oh-my-zsh/themes/ckupe.zsh-theme

