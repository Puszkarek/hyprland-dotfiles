# Catppuccin color palette

# --> special
set -l foreground 33ff00
set -l selection ffb000

# --> palette
set -l teal 33ff00
set -l flamingo 33ff00
set -l mauve 33ff00
set -l pink 33ff00
set -l red 33ff00
set -l peach 33ff00
set -l green 33ff00
set -l yellow 33ff00
set -l blue 33ff00
set -l gray bbffac
set -l completion ffb000

# Syntax Highlighting
set -g fish_color_normal $foreground
set -g fish_color_command $blue
set -g fish_color_param $flamingo
set -g fish_color_keyword $red
set -g fish_color_quote $green
set -g fish_color_redirection $pink
set -g fish_color_end $peach
set -g fish_color_error $red
set -g fish_color_gray $gray
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $pink
set -g fish_color_escape $flamingo
set -g fish_color_autosuggestion $gray
set -g fish_color_cancel $red

# Prompt
set -g fish_color_cwd $yellow
set -g fish_color_user $teal
set -g fish_color_host $blue

# Completion Pager
set -g fish_pager_color_progress $completion
set -g fish_pager_color_prefix $completion
set -g fish_pager_color_completion $completion
set -g fish_pager_color_description $completion
