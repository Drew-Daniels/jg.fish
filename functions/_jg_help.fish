function _jg_help -d "Prints help and exits"
    printf "Usage: jg <COMMAND> [OPTIONS]\n\n"
    printf "Commands:\n"
    printf "  help    Prints help and exits\n"
    printf "  link    Copies Jira Issue Link for Current Git Branch\n"
    printf "  bname   Generates a Git branch name using a Jira Ticket ID\n"
    printf "  pr      Generates a Slack Message to Link to a Jira Ticket and Pull Request\n"
    printf "  prd     Generates a Description for a Given PR\n"
end