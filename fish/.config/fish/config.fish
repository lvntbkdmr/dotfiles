set -gxp PATH /usr/local/lib/python3.9/dist-packages/ /usr/local/sbin $HOME/go/bin /snap/bin /opt/homebrew/bin
set -gx GOBIN $HOME/go/bin
set -gx GOPATH $HOME/go
set -gx EDITOR nvim
set -gx FZF_CTRL_T_COMMAND nvim

# git prompt settings
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_dirtystate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_conflictedstate "+"
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_cleanstate green --bold
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_branch cyan --dim --italics

# don't show any greetings
set fish_greeting ""

# don't describe the command for darwin
# https://github.com/fish-shell/fish-shell/issues/6270
function __fish_describe_command; end

# brew install jump, https://github.com/gsamokovarov/jump
status --is-interactive; and source (jump shell fish | psub)

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# Senstive functions which are not pushed to Github
# It contains work related stuff, some functions, aliases etc...
source ~/.config/fish/private.fish

set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

#theme_gruvbox dark medium

starship init fish | source

# Created by `pipx` on 2025-02-09 19:16:22
set PATH $PATH /Users/lvnt/.local/bin
