export PATH=".:bin:/usr/local/bin:/usr/local/sbin:$HOME/.sfs:$ZSH/bin:$PATH"

# The Postgres app
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Homebrew Setup in Opt
eval "$(/opt/homebrew/bin/brew shellenv)"

# For Rust
export PATH="$PATH:$HOME/.cargo/bin"

# Local bin
export PATH="$PATH:$HOME/.local/bin"
