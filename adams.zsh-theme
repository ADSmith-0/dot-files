PROMPT="%{$fg[cyan]%}%B%(3~|../%2~|%~)%{$reset_color%} "
PROMPT+='$(git_prompt_info)%{$fg_bold[yellow]%}$(git_commits_ahead)$(git_prompt_ahead)$(git_commits_behind)$(git_prompt_behind)%{$reset_color%}'
PROMPT+="%(?:%{$fg_bold[green]%}%1{$%}:%{$fg_bold[red]%}%1{$%})%{$reset_color%} "
RPROMPT='[%*]'

# 30<..<%~%<< -- for truncating to 30 character
# %(4~|../%3~|%~) -- for truncating the path at 3 folders
ZSH_THEME_GIT_PROMPT_PREFIX="%B%{$fg[blue]%}(%{$FG[171]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}%B)%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%B%{$fg[red]%}*%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="⇡ "
ZSH_THEME_GIT_PROMPT_BEHIND="⇣ "
