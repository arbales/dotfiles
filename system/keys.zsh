# Remove the hosts that I don't want to keep around- in this case, only
# keep the first host. Like a boss.
alias hosts="head -2 ~/.ssh/known_hosts | tail -1 > ~/.ssh/known_hosts"

alias pubkey="more ~/.ssh/id_dsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"
