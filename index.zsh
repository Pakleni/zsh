# You can customize where you put it but it's generally recommended that you put in $HOME/.zplug
if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "lib/history", from:oh-my-zsh # support for history command
zplug "lib/completion", from:oh-my-zsh # support for highlighting TAB completion
zplug "zsh-users/zsh-autosuggestions" # realtime autocomplete for zsh based on command history

zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3 # Syntax highlighting for commands, load last
zplug 'dracula/zsh', as:theme # Theme!

# Actually install plugins, prompt user input
if ! zplug check --verbose; then
    printf "Install zplug plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load