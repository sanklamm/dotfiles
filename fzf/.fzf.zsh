# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sean/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/sean/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sean/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sean/.fzf/shell/key-bindings.zsh"
