
# Alias to update Git Branch
alias sourcebash="source ~/.bash_profile"

# Allow different versions of Ruby
eval "$(rbenv init -)"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

# Editor with Sublime
export EDITOR="subl -w"

# Prompt
#export PS1="🌱 \[\e[36m\]\u\[\e[m\]\[\e[36m\]:\[\e[m\]\[\e[36m\]\W\[\e[m\] \[\e[36m\]\\$\[\e[m\] "

# Prompt with Git Branch
export PS1="🌱 \[\e[36m\]\u:\W\[\e[m\]\[\e[37m\]$(parse_git_branch)\[\e[m\] $ "

# Git Bash Prompt
# https://github.com/magicmonty/bash-git-prompt

GIT_PROMPT_ONLY_IN_REPO=1                 # only use when in a Git repository

# GIT_PROMPT_FETCH_REMOTE_STATUS=0        # uncomment to avoid fetching remote status
# GIT_PROMPT_IGNORE_SUBMODULES=1          # uncomment to avoid searching for changed files in submodules

# GIT_PROMPT_SHOW_UPSTREAM=1              # uncomment to show upstream tracking branch
# GIT_PROMPT_SHOW_UNTRACKED_FILES=all     # can be no, normal or all; determines counting of untracked files

# GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0   # uncomment to avoid printing the number of changed files

# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh     # uncomment to support Git older than 1.7.10

# GIT_PROMPT_START=...            # uncomment for custom prompt start sequence
# GIT_PROMPT_END=...              # uncomment for custom prompt end sequence

GIT_PROMPT_THEME=Custom           # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
# GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
# GIT_PROMPT_THEME=Single_line_Solarized          # use theme optimized for solarized color scheme

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
