PROMPT='%{$fg[cyan]%}%B%(4~|../%3~|%~)%{$reset_color%} $(git_prompt_info)%(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} '
RPROMPT='[%*]'

# user %{$fg[blue]%}%B%n%b%{$reset_color%}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[red]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
