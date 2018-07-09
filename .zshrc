# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="avit"
	# ZSH_THEME="bira"
# ZSH_THEME="dstufft"
# ZSH_THEME="duellj"
# ZSH_THEME="fino"
# ZSH_THEME="fino-time"
# ZSH_THEME="crcandy"

# ZSH_THEME="frontcube"
# ZSH_THEME="funky"
# ZSH_THEME="fwalch"
# ZSH_THEME="gallifrey"
# ZSH_THEME="gallois"
# ZSH_THEME="garyblessington"
# ZSH_THEME="gentoo"
# ZSH_THEME="geoffgarside"
# ZSH_THEME="gianu"
	# ZSH_THEME="gnzh"
# ZSH_THEME="gozilla"
# ZSH_THEME="half-life"
# ZSH_THEME="humza"
# ZSH_THEME="imajes"
		ZSH_THEME="intheloop"
# ZSH_THEME="itchy"
# ZSH_THEME="jaischeema"
# ZSH_THEME="jbergantine"
# ZSH_THEME="jispwoso"
# ZSH_THEME="jnrowe"
# ZSH_THEME="jonathan"
# ZSH_THEME="josh"
# ZSH_THEME="jreese"
# ZSH_THEME="jtriley"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="junkfood"
# ZSH_THEME="kafeitu"
# ZSH_THEME="kardan"
# ZSH_THEME="kennethreitz"
# ZSH_THEME="kiwi"
# ZSH_THEME="kolo"
# ZSH_THEME="kphoen"
# ZSH_THEME="lambda"
# ZSH_THEME="linuxonly"
# ZSH_THEME="lukerandall"
#ZSH_THEME="macovsky-ruby"
#ZSH_THEME="macovsky"
#ZSH_THEME="maran"
#ZSH_THEME="mgutz"
#ZSH_THEME="mh"
#ZSH_THEME="michelebologna"
#ZSH_THEME="mikeh"
#ZSH_THEME="miloshadzic"
#ZSH_THEME="minimal"
#ZSH_THEME="mira"
#ZSH_THEME="mortalscumbag"
#ZSH_THEME="mrtazz"
#ZSH_THEME="murilasso"
#ZSH_THEME="muse"
#ZSH_THEME="nanotech"
#ZSH_THEME="nebirhos"
#ZSH_THEME="nicoulaj"
#ZSH_THEME="norm"
#ZSH_THEME="obraun"
#ZSH_THEME="peepcode"
#ZSH_THEME="philips"
#ZSH_THEME="pmcgee"
#ZSH_THEME="pure"
#ZSH_THEME="pygmalion"
#ZSH_THEME="re5et"
#ZSH_THEME="rgm"
#ZSH_THEME="risto"
#ZSH_THEME="rixius"
#ZSH_THEME="rkj-repos"
#ZSH_THEME="rkj"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="sammy"
#ZSH_THEME="simonoff"
#ZSH_THEME="simple"
#ZSH_THEME="skaro"
#ZSH_THEME="smt"
#ZSH_THEME="Soliah"
#ZSH_THEME="sonicradish"
#ZSH_THEME="sorin"
#ZSH_THEME="sporty_256"
#ZSH_THEME="steeef"
#ZSH_THEME="strug"
#ZSH_THEME="sunaku"
#ZSH_THEME="sunrise"
#ZSH_THEME="superjarin"
#ZSH_THEME="suvash"
#ZSH_THEME="takashiyoshida"
#ZSH_THEME="terminalparty"
#ZSH_THEME="theunraveler"
#ZSH_THEME="tjkirch"
#ZSH_THEME="tjkirch_mod"
#ZSH_THEME="tonotdo"
#ZSH_THEME="trapd00r"
#ZSH_THEME="wedisagree"
#ZSH_THEME="wezm+"
#ZSH_THEME="wezm"
#ZSH_THEME="wuffers"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="xiong-chiamiov"
#ZSH_THEME="ys"
# ZSH_THEME="zhann"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm node ubuntu vi-mode)

# User configuration

source $ZSH/oh-my-zsh.sh
# хранить историю в указанном файле
# export HISTFILE=~/.zsh_history
# максимальное число команд, хранимых в сеансе
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
# включить историю команд
setopt APPEND_HISTORY
# убрать повторяющиеся команды, пустые строки и пр.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

export PATH="$HOME/.yarn/bin:./**/.bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

