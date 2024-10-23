PROMPT="%{$fg[blue]%}%B%(4~|../%3~|%~)%{$reset_color%} "
PROMPT+='$(git_prompt_info)%{$fg_bold[yellow]%}$(git_commits_ahead)$(git_prompt_ahead)$(git_commits_behind)$(git_prompt_behind)%{$reset_color%}'
PROMPT+="%(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "
RPROMPT='[%*]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[171]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_AHEAD="⇡ "
ZSH_THEME_GIT_PROMPT_BEHIND="⇣ "
