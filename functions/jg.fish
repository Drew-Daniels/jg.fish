function jg --argument-names cmd, subcmd -d "Jira Genie"

    set -l jg_version 0.0.1

    switch "$cmd"
        case -v --version
            echo "jg version, $jg_version"
        case "" -h --help
            printf "Usage: jg <COMMAND>\n\n"
            printf "Commands:\n"
            printf "  jlink   Copies Jira Issue Link for Current Git Branch\n"
            printf "  bname   Generates a Git branch name using a Jira Ticket ID\n"
            printf "  pr      Generates a Slack Message to Link to a Jira Ticket and Pull Request\n"
            printf "  prd     Generates a Description for a Given PR\n"
        case jlink
            jlink
        case bname
            bname $subcmd
        case pr
            pr $subcmd
        case prd
            prd $subcmd
    end
end
