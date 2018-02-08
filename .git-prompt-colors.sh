# Custom Theme based on Single_line_Solarized

define_helpers() {
  PathShort="${BoldBlue}\u:${Cyan}\W"
}

override_git_prompt_colors() {
  DIM="\e[2m"

  GIT_PROMPT_THEME_NAME="Single_line_Solarized_Lauren"

  GIT_PROMPT_PREFIX="${White}[${ResetColor}"
  GIT_PROMPT_SUFFIX="${White}]${ResetColor}"
  GIT_PROMPT_BRANCH="${White}"
  GIT_PROMPT_SYMBOLS_AHEAD="${White}${DIM}+"
  GIT_PROMPT_SYMBOLS_BEHIND="${White}${DIM}-"
  GIT_PROMPT_SEPARATOR=""
  GIT_PROMPT_STAGED=""
  GIT_PROMPT_CONFLICTS=""
  GIT_PROMPT_CHANGED=""
  GIT_PROMPT_UNTRACKED=""
  GIT_PROMPT_STASHED=""
  GIT_PROMPT_CLEAN=""
  GIT_PROMPT_COMMAND_FAIL=""
  GIT_PROMPT_START_USER="🌱 ${Yellow}${PathShort}${ResetColor}"
  GIT_PROMPT_END_USER=" $ "
  GIT_PROMPT_END_ROOT="${BoldRed} # ${ResetColor}"
  GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="✭"
}

reload_git_prompt_colors "Single_line_Solarized_Lauren"
