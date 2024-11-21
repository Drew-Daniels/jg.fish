function jg --argument-names cmd -d "Jira Genie"
    switch "$cmd"

        case "" -h --help
            printf "Usage: jg <COMMAND>\n\n"
            printf "Commands:\n"
            printf "  jlink   Copies Jira Issue Link for Current Git Branch\n"
            printf "  bname   Generates a Git branch name using a Jira Ticket ID\n"
            printf "  pr      Generates a Slack Message to Link to a Jira Ticket and Pull Request\n"
            printf "  prd     Generates a Description for a Given PR\n"
            return 0
    end
end
