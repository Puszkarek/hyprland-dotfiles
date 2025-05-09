# Catppuccin color palette

# --> special
set -l foreground 0e0e17
set -l selection 0f630c

# --> palette
set -l teal ff3845
set -l flamingo ff3845
set -l mauve ff3845
set -l pink ff00ff
set -l red ff2e6e
set -l peach fb932e
set -l green ff3845
set -l yellow fb932e
set -l blue 2570d4
set -l gray ffacac
set -l completion fb932e

# Syntax Highlighting
set -g fish_color_normal $foreground
set -g fish_color_command $blue
set -g fish_color_param $green
set -g fish_color_keyword $red
set -g fish_color_quote $peach
set -g fish_color_redirection $green
set -g fish_color_end $green
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
