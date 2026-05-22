# shellcheck shell=bash

# Load colors so we can access $fg and more.
autoload -U colors && colors

# Disable CTRL-s from freezing your terminal's output.
stty stop undef

# Enable comments when working in an interactive shell.
setopt interactive_comments

# Prompt. Using single quotes around the PROMPT is very important, otherwise
# the git branch will always be empty. Using single quotes delays the
# evaluation of the prompt. Also PROMPT is an alias to PS1.
git_prompt() {
  local branch
  branch="$(git symbolic-ref HEAD 2>/dev/null | cut -d'/' -f3-)"
  local branch_truncated="${branch:0:30}"
  if ((${#branch} > ${#branch_truncated})); then
    branch="${branch_truncated}..."
  fi

  [ -n "${branch}" ] && echo " (${branch})"
}
setopt PROMPT_SUBST
# shellcheck disable=SC2016
PROMPT='%B%{$fg[green]%}%n@%{$fg[green]%}%M %{$fg[blue]%}%~%{$fg[yellow]%}$(git_prompt)%{$reset_color%} %(?.$.%{$fg[red]%}$)%b '
export PROMPT

# History settings.
export HISTFILE="${DOTFRIEDRICE_PATH}/.config/zsh/.zsh_history"
export HISTSIZE=50000           # History lines stored in mememory.
export SAVEHIST=50000           # History lines stored on disk.
setopt EXTENDED_HISTORY         # Save history with timestamps.
setopt INC_APPEND_HISTORY_TIME  # Immediately append commands and track duration.
setopt HIST_IGNORE_ALL_DUPS     # Never add duplicate entries.
setopt HIST_IGNORE_SPACE        # Ignore commands that start with a space.
setopt HIST_REDUCE_BLANKS       # Remove unnecessary blank lines.

# Use modern completion system. Other than enabling globdots for showing
# hidden files, these ares values in the default generated zsh config.
autoload -U compinit
compinit
_comp_options+=(globdots)

zstyle ":completion:*" menu select=2
zstyle ":completion:*" auto-description "specify: %d"
zstyle ":completion:*" completer _expand _complete _correct _approximate
zstyle ":completion:*" format "Completing %d"
zstyle ":completion:*" group-name ""

# dircolors is a GNU utility that's not on macOS by default. With this not
# being used on macOS it means zsh's complete menu won't have colors.
command -v dircolors >/dev/null 2>&1 && eval "$(dircolors -b)"

# shellcheck disable=SC2016,SC2296
zstyle ":completion:*:default" list-colors '${(s.:.)LS_COLORS}'
zstyle ":completion:*" list-colors ""
zstyle ":completion:*" list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ":completion:*" matcher-list "" "m:{a-z}={A-Z}" "m:{a-zA-Z}={A-Za-z}" "r:|[._-]=* r:|=* l:|=*"
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ":completion:*" use-compctl false
zstyle ":completion:*" verbose true

# Use Vim key binds.
bindkey -v

# Ensure home / end keys continue to work.
bindkey "\e[1~" beginning-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[F" end-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[3~" delete-char

# Allows your gpg passphrase prompt to spawn (useful for signing commits).
GPG_TTY="$(tty)"
export GPG_TTY

# zsh-vi-mode-plugin sets a few key binds such as CTRL+r/p/n which may conflict
# with other binds. This ensures fzf and our binds always win. If you choose
# to remove this zsh plugin then each array item can exist normally in zshrc.
zvm_after_init_commands+=(
  ". <(fzf --zsh)"
  "bindkey '^p' history-search-backward"
  "bindkey '^n' history-search-forward"
  "bindkey '^[OA' history-search-backward"
  "bindkey '^[OB' history-search-forward"
  "bindkey '^[[A' history-search-backward"
  "bindkey '^[[B' history-search-forward"
)

# Configure fzf.
# shellcheck disable=SC1091
. "${XDG_CONFIG_HOME}/fzf/config.sh"

# zsh-autosuggestions settings.
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Load / source zsh plugins.
# shellcheck disable=SC1091
. "${XDG_DATA_HOME}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
# shellcheck disable=SC1091
. "${XDG_DATA_HOME}/zsh-autosuggestions/zsh-autosuggestions.zsh"
# shellcheck disable=SC1091
. "${XDG_DATA_HOME}/zsh-vi-mode/zsh-vi-mode.plugin.zsh"
# shellcheck disable=SC1091
. "${XDG_DATA_HOME}/fzf-tab/fzf-tab.plugin.zsh"

# Ensure colors match by using FZF_DEFAULT_OPTS.
zstyle ":fzf-tab:*" use-fzf-default-opts yes

# Preview file contents when tab completing directories.
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color=always \${realpath}"

# Load aliases if they exist.
# shellcheck disable=SC1091
[ -f "${XDG_CONFIG_HOME}/zsh/.aliases" ] && . "${XDG_CONFIG_HOME}/zsh/.aliases"

# Load local settings if they exist.
# shellcheck disable=SC1091
[ -f "${XDG_CONFIG_HOME}/zsh/.zshrc.local" ] && . "${XDG_CONFIG_HOME}/zsh/.zshrc.local"
# shellcheck disable=SC1091
if [ -f "${XDG_CONFIG_HOME}/zsh/.aliases.local" ]; then . "${XDG_CONFIG_HOME}/zsh/.aliases.local"; fi
