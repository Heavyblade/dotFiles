# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/Users/cvazquez/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo zsh-syntax-highlighting zsh-autosuggestions rbenv bundler ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
eval "$(rbenv init -)"
export SSL_CERT_FILE=/Users/cvazquez/cacert.pem
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/cvazquez/.local/bin
export EDITOR=nvim
export GOPATH=/Users/cvazquez/go
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PGPASSWORD=postgres
export PGUSER=postgres
export PATH="/usr/local/opt/node@14/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@14/lib"
export CPPFLAGS="-I/usr/local/opt/node@14/include"

export ANDROID_NDK_HOME="/usr/local/share/android-ndk"
#if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    #tmux attach -t default || tmux new -s default
#fi

# PCI-DDS [Secure Communication](https://github.com/spreedly/pci-dss/blob/master/records/secure-communication.md#gpg-installation--setup)
GPG1_DIR=/usr/local/opt/gnupg@1.4/libexec/gpgbin
#GPG1_DIR=$(brew --prefix gpg1)/libexec/gpgbin

if [ -d "${GPG1_DIR}" ]; then
    export PATH="${GPG1_DIR}:${PATH}"
fi
# End PCI-DDS required

if type brew &>/dev/null; then
  FPATH=/usr/local/share/zsh/site-functions:$FPATH
fi

autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
#export GITHUB_TOKEN=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
export GITHUB_TOKEN=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

alias vim="nvim -c \"Telescope find_files\""
alias core="cd ~/rails/spreedly/core && vim ."
alias am="cd ~/rails/spreedly/active_merchant && vim ."
alias work="cd ~/Dropbox/obsidian/ && nvim ."
alias team="cd \"/Users/cvazquez/Google Drive/My Drive/knowledge_vault\" && nvim"
alias gcc='gcc-12'
alias cat='bat'
alias ls='exa --icons --color=always'
alias ts='task list project:Today'
alias ta='task add project:Today'
alias fv='nvim $(fzf)'
export CC=gcc-12
export OPENAI_API_KEY="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"

. /usr/local/opt/asdf/libexec/asdf.sh

source ~/.zoxide.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
