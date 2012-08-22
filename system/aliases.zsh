# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

function spotlight () {
  if (($# == 0))
    then echo "spotlight [dir] query";
  fi
  if (($# == 2)) then
    mdfind -onlyin $2 $1
  else
    mdfind -onlyin . $1
  fi
}
alias ƒ="spotlight"

