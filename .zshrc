# Autoloads
    autoload -U compinit; compinit
    autoload -U colors; colors
    autoload -Uz vcs_info

# http://briancarper.net/blog/570/git-info-in-your-zsh-prompt
    zstyle ':vcs_info:*' stagedstr '%F{28}●'
    zstyle ':vcs_info:*' unstagedstr '%F{11}●'
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
    zstyle ':vcs_info:*' enable git svn
    precmd () {
        local num_untracked="$(git ls-files --other --exclude-standard 2> /dev/null | wc -l)"
        if [[ $num_untracked -ne 0 ]] {
            local untracked="%F{red}●"
        }

        zstyle ':vcs_info:*' formats "[%F{cyan}%b%c%u${untracked}%f] "
        vcs_info
    }

# History
    HISTFILE=~/.zhistory
    HISTSIZE=11000
    SAVEHIST=10000
    setopt   appendhistory

# Pagers and Editors
    set -o vi
    export EDITOR="vim"
    export VISUAL="vim"
    export CLICOLOR="yes"

# Prompt
    setopt prompt_subst
    export PS1='%F{red}%h%f> '
    export RPS1='${vcs_info_msg_0_}%F{yellow}%m%f:%F{green}%d%f'

# Platform Specific
    case $(uname -s) in
    "OpenBSD")
        alias ls='colorls'
        export LC_CTYPE="en_US.UTF-8"
        ;;
    "Linux")
        alias grep='grep --color=auto'
        alias ls='ls --color=auto'
        ;;
    "Darwin")
        # Needed for homebrew.
        export PATH="/usr/local/bin:${PATH}"
        export PATH="${PATH}:/usr/local/sbin"
        ;;
    esac

# Macros:
    # Read man pages with vim
    man () { vim -c "Man $*" -c "only" }

# Source Local ZSH Configs
    zshrc_local="${HOME}/.zshrc_local"
    if [[ -e "$zshrc_local" ]]; then
        source "$zshrc_local"
    fi
