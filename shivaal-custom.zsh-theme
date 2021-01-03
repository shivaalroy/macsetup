PROMPT='%{$fg[green]%}%~ %{$fg[magenta]%}$ '
RPS1='$(git_prompt_info) %{$fg[cyan]%}$(date +%H:%M:%S)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ⚡%{$fg[yellow]%}"
