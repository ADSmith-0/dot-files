PROMPT="%{$fg[cyan]%}%B%(4~|../%3~|%~)%{$reset_color%} "
PROMPT+='$(git_prompt_info)$(git_commits_ahead)$(git_prompt_ahead)$(git_commits_behind)$(git_prompt_behind)% '
PROMPT+="%(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "
RPROMPT='[%*]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[135]%}%B(%{$fg_no_bold[red]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$FG[135]%}%B)%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[yellow]%}⇡"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[yellow]%}⇣%{$reset_color%}"
