if [[ -z ${TMUX+X}${ZSH_SCRIPT+X}${ZSH_EXECUTION_STRING+X} ]]; then
  exec tmux
fi

if [[ ! -r ~/Repos/znap/znap.zsh ]]; then
  git clone --depth=1 https://github.com/marlonrichert/zsh-snap.git ~/.znap
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_AUTOSUGGEST_MANUAL_REBIND=1

source ~/.znap/znap.zsh

znap source romkatv/powerlevel10k
znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions

source ~/.p10k.zsh
