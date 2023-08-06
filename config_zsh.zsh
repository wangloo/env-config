#!/usr/bin/zsh

source ~/.zshrc

[ -z $ZSH_CUSTOM ] && {
    echo "include my .zshrc first"
    exit
}

# dowload oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# download autosuggestion and highlight
git clone https://github.com/zsh-users/zsh-autosuggestions "$$ZSH_CUSTOM"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$$ZSH_CUSTOM"/plugins/zsh-syntax-highlighting

echo -e "\nplease edit .zshrc to enable plugins, copy the following:"
echo -e "plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)"
