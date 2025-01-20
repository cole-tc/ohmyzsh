# Cole's theme

# Grab the current date (%D) and time (%t):
HASH="%{$fg_bold[red]%}#"

DATETIME="%{$fg_bold[yellow]%}%D{%a %m-%d-%y} %{$reset_color%}@ %{$fg_bold[yellow]%}%D{%k:%M:%S}%{$reset_color%}"

# Grab the current username
CURRENT_USER="%{$fg_bold[green]%}%n%{$reset_color%}"

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DIRNAME="%{$fg[magenta]%}%~%{$reset_color%}"

# For the git prompt, use a white @ and cyan text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}@ %{$fg[cyan]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}[%{$fg_bold[green]%}✔"

# Add a red ✘ if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}[%{$fg_bold[red]%}✘"

MAIN_PROMPT="\$(git_prompt_info) %(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$reset_color%}"

# Put it all together!
PROMPT="$HASH $DATETIME | $CURRENT_USER in $DIRNAME
$MAIN_PROMPT"
