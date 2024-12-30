function random-id -d "Generate a random id using alphanumeric characters"
    set n 12
    if test (count $argv) -gt 0
        set n $argv[1]
    end

    cat /dev/urandom | LC_ALL=C tr -dc a-zA-Z0-9 | fold -w $n | head -n 1 | tr -d '\\n' | pbcopy
end
