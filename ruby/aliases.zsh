alias r='rvm use 1.9.2'
alias u='unicorn'
alias f='RAILS_ENV=fi'

alias sc='rails console'
alias ss='rails s -p `available_rails_port`'
alias sg='script/generate'
alias sd='script/destroy'

alias migrate='rake db:migrate db:test:clone'

alias s="ps aux | grep \"[r]uby\" | grep script/server || echo \"You're not running any, dawg.\""