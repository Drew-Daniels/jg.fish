function jg --argument-names cmd rest -d "Jira Genie"

    set -l jg_version 0.0.1

    echo "cmd: $cmd"

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
        case jlink
            _l $rest
        case bname
            _bname $rest
        case pr
            _pr $rest
        case prd
            _prd $rest
    end
end
