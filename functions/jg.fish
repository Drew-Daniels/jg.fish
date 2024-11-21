function jg --argument-names cmd -d "Jira Genie"
    set -l jg_version 0.0.1

    echo "cmd: $cmd"

    read --local --null --array stdin && set --append argv $stdin

    echo "argv in jg: $argv"

    switch "$cmd"
        case -v --version
            echo "jg version, $jg_version"
        case "" help -h --help
            printf "Usage: jg <COMMAND> [OPTIONS]\n\n"
            printf "Commands:\n"
            printf "  help    Prints help and exits\n"
            printf "  l       Copies Jira Issue Link for Current Git Branch\n"
            printf "  bname   Generates a Git branch name using a Jira Ticket ID\n"
            printf "  pr      Generates a Slack Message to Link to a Jira Ticket and Pull Request\n"
            printf "  prd     Generates a Description for a Given PR\n"
        case jl
            _l $argv
        case bname
            _bname $argv
        case pr
            _pr $argv
        case prd
            _prd $argv
    end
end
