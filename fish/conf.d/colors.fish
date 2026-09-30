status is-interactive; or return
set -g fish_greeting
set -g fish_color_normal normal
set -g fish_color_command 5f87d7
set -g fish_color_keyword normal
set -g fish_color_option normal
set -g fish_color_quote yellow
set -g fish_color_redirection cyan --bold
set -g fish_color_end green
set -g fish_color_error brred
set -g fish_color_param cyan
set -g fish_color_comment red
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_search_match white --background=brblack
set -g fish_color_history_current --bold
set -g fish_color_operator brcyan
set -g fish_color_escape brcyan
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_valid_path --underline
set -g fish_color_autosuggestion brblack
set -g fish_color_user brgreen
set -g fish_color_host normal
set -g fish_color_host_remote normal
set -g fish_color_status red
set -g fish_color_cancel --reverse
set -g fish_pager_color_prefix normal --bold --underline
set -g fish_pager_color_completion normal
set -g fish_pager_color_description yellow --italics
set -g fish_pager_color_progress brwhite --background=cyan
set -g fish_pager_color_selected_background --reverse
for suffix in background secondary_background secondary_completion secondary_description secondary_prefix selected_completion selected_description selected_prefix
    set -g fish_pager_color_$suffix
end
