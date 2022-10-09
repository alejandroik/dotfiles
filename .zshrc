export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

plugins=(git docker docker-compose zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

yt-a() {
  yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 -o "/mnt/sda/Music/%(title)s.%(ext)s" "$1"
}
yt-v() {
  yt-dlp -o "~/Downloads/%(title)s.%(ext)s" "$1" 
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
