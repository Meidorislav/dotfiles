if status is-interactive
    set -g fish_greeting

    # Tools
    starship init fish | source
    zoxide init fish | source
    fzf --fish | source

    # ls -> eza
    alias ls 'eza --icons --group-directories-first'
    alias ll 'eza -l --icons --git --group-directories-first'
    alias la 'eza -la --icons --git --group-directories-first'
    alias lt 'eza --tree --level=2 --icons'

    # cat -> bat
    alias cat 'bat --paging=never'
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

    # Abbreviations (expand on space)
    abbr -a g git
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit
    abbr -a gp git push
    abbr -a gl git log --oneline --graph
    abbr -a xi sudo xbps-install -S
    abbr -a xr sudo xbps-remove -R
    abbr -a xs xbps-query -Rs
    abbr -a xu sudo xbps-install -Su
end

fish_add_path ~/.local/bin
