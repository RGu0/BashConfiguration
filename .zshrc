source ~/.zplug/init.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-zsh
# autoload colors && colors
# setopt prompt_subst

# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# Bundles from the default repo (robbyrussell's oh-my-zsh).
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/rand-quote", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", defer:2
# zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"

# Can manage local plugins
# zplug "~/.zsh", from:local

# Load theme file
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load #--verbose

# All the alias

# Set proxy
# alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias disproxy='unset all_proxy'

chpwd() { ls -aG }

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

export GOPATH=$HOME/golang
export GOROOT=/usr/local/Cellar/go/1.15/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# export LANGUAGE="en_US.UTF-8"
# export LANG=en
# export LC_CTYPE="UTF-8"
export LC_ALL="en_US.UTF-8"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ruiguo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ruiguo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ruiguo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ruiguo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#autojump
# [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export PATH="/opt/homebrew/bin:$PATH"

# clear
# cowsay Moo...
