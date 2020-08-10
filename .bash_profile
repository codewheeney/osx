export PATH=$HOME/.rbenv/shims:HOME/.rbenv/versions/`cat $HOME/.rbenv/version`/bin:/Applications/Postgres.app/Contents/Versions/11/bin:$PATH
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

GOPATH=~/go
export GOPATH


export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home

# Make working with Postgres-in-Docker easier
# export PGHOST=localhost
# export PGUSER=

export MANPAGER=more

alias gpr="git pull --rebase"
alias giff="git diff"
alias edit="vi"

# Helpers for running the appliance
alias be="~/be.sh"
alias spubsub="bundle exec thin start -R pubsub.ru -p 9292"
alias railserv="bundle exec rails s"
alias redisserv="redis-server backend/servers/redis-dev.conf"
alias psqltc="psql --host=localhost --username="
alias psqltc11="/Applications/Postgres.app/Contents/Versions/11/bin/psql --host=localhost --username="

# resetting the DB
alias zorchdb="bundle exec rake db:drop db:create db:migrate"
alias qzorch="bundle exec rake db:drop db:create db:structure:load"
alias seeddb="bundle exec rake db:seed"
alias migratedb="bundle exec rake db:migrate"

# build/rebuild
alias build="make build-backend"
alias clean="make clean-backend"
alias b="make build-backend-no-tests"
alias rebuild="make clean-backend;make build-backend"
alias dir="ls -altr"

alias mb="mvn clean install"
alias mb11="JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home mb"

alias psql10="/Applications/Postgres.app/Contents/Versions/10/bin/psql -p 5433"
alias psqlo="/Applications/Postgres.app/Contents/Versions/10/bin/psql -p 5433 -d overcast"
alias psql96="/Applications/Postgres.app/Contents/Versions/9.6/bin/psql"
alias psql11="/Applications/Postgres.app/Contents/Versions/11/bin/psql"

alias java11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"

alias psql-tric="PGPASSWORD='setme' psql -d tric -U tric_db_admin"

alias k=kubectl

# Temporarily stop mcafee
alias stopmacafee="sudo /usr/local/McAfee/AntiMalware/VSControl stopoas"

# repeat last command with sudo
alias please=alias please='sudo $(fc -ln -1)'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# source <(kubectl completion bash)

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
