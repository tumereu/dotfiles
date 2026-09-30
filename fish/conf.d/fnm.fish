if status is-interactive; and command -q fnm
    fnm env --use-on-cd --version-file-strategy recursive --resolve-engines=false --shell fish | source
end
