# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/blake_donnelly/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="crunch"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#aliases
#
alias glog='git log --graph --abbrev-commit --decorate --date=relative --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)" --all'
alias gs='git status'
alias gp='git push'
alias gpull='git pull'
alias ga='git add .'
alias gac='git add $PWD'
alias gr='git restore --staged .'
alias gpr='git pull --rebase'
alias gprm='git pull --rebase origin master'
alias gprd='git pull --rebase origin develop'
alias grc='git add . && git rebase --continue'
alias gca='git commit --amend --no-edit .'
alias gc='git commit -m'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias groll='git reset --soft HEAD~1'
alias codegen='npm run graphql:codegen'


#tmux
alias nmux='tmux new-session \; split-window -v \; split-window -h\; resize-pane -D \; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\; resize-pane -D\;'
alias kmux='killall tmux'

#docker
alias pgadmin='docker run --rm -p 5050:5050 thajeztah/pgadmin4'

#nvim
alias .='nvim'
alias vrc='nvim ~/.config/nvim/init.lua'
alias zrc='nvim ~/.zshrc'
alias trc='nvim ~/.tmux.conf'

# Open dev environment
alias angopen='open http://localhost:4200'
alias pgopen='open http://localhost:5050'

# Google search
alias chrome='{read -r arr; open -a "Google Chrome" "${arr}"} <<<'
alias browser='{read -r arr; chrome ${arr} } <<<'
alias google='{read -r arr; browser "https://google.com/search?q=${arr}";} <<<'

#Datatabase
alias genpush='npm run db:push && npm run generate'
alias genpushseed='npm run db:push && npm run generate && npm run seed:destructive'
alias seed='npm run seed:destructive'

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOOGLE_APPLICATION_CREDENTIALS="Users/blake_donnelly/Downloads/zzz-clickops-temp-a2374f718e3a.json"

export EDITOR='nvim'
export VISUAL='nvim'

export DOF_GIT_TOKEN=glpat-S6_HBMtCf487sgXDjPmc

source $(brew --prefix nvm)/nvm.sh

#docker
alias dcu='docker-compose up'
alias dcd='docker-compose down'

#history grep
alias hg='history | grep'

#checkout most recent branch
alias gg='git checkout -'

#run backend
#alias du='TMPDIR=/tmp/localstack-s3 dcu'

#docker prune
alias dp='docker network prune && docker volume prune'

#docker update
alias dua='npm run db:push && npm run db:save'

#api
alias ap="cd .. && cd cap-api"

#web
alias we="cd .. && cd cap-web"

#branches
alias br="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"

#yolo push
alias gpf="git push --force --no-verify"

#popbih
alias pop="git stash pop"

#add ammed push
alias push='git add . && gca && gp --force'

#stash that ish
alias stash='git stash'

#feeling a lil envy?
alias en='. .env'

#giggity go
alias go='yarn start dev'
alias mock='yarn start:mock'
alias test='yarn test'


alias grh='git reset --hard'
alias grs='git reset --soft'

alias gmm='gcm && gpull && gg && git merge master'

alias tu='tilt up'
alias td='tilt down'

alias sed='gsed'

alias mockit='python dummy_script.py && python populate_data_from_csv.py mock_data_csvs/ilc_bd'

alias treecp="tree -I 'node_modules|*.config|*.py|*.pyc' | pbcopy"


alias tag='git tag v-1.0-$(date +%F-%H-%M-%S) && git push origin v-1.0-$(date +%F-%H-%M-%S)'


#alias rcache="find . -type d -name "__pycache__" -exec rm -rf {} + && find . -type f -name "*.pyc" -exec rm -f {} +"


#alias tag='git tag clicks-$(date +%F).bd && git push origin clicks-$(date +%F).bd'
#alias tags='git tag staging-$(date +%F).bd && git push origin staging-$(date +%F).bd'
#alias tagr='git tag -d clicks-$(date +%F).bd && git push --delete origin clicks-$(date +%F).bd && git tag clicks-$(date +%F).bd && git push origin clicks-$(date +%F).bd'


#alias lintbe='docker compose run --rm app sh -c "flake8"'

#alias lint='npm run fix-lint && gca'

#alias fixit='npm run fix-lint && gca && tagr && git push --force'

#alias fixit='npm run fix-lint && gca && tagr && git push --force'

##docker
#alias gap='docker compose run --rm app sh -c "python manage.py migrate_schemas --shared"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant modrno"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant danner"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant gap "\
#&& docker compose run --rm app sh -c "python manage.py create_tenant athleta --schema_name=gap"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant banana-republic --schema_name=gap"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant old-navy --schema_name=gap"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant r-b --schema_name=rag_bone"\
#&& docker compose run --rm app sh -c "python manage.py seed tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py seed modrno"\
#&& docker compose run --rm app sh -c "python manage.py seed r-b"\
#&& docker compose run --rm app sh -c "python manage.py seed lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py seed danner"\
#&& docker compose run --rm app sh -c "python manage.py seed old-navy"\
#&& docker compose run --rm app sh -c "python manage.py seed gap"\
#&& docker compose run --rm app sh -c "python manage.py seed banana-republic"\
#&& docker compose run --rm app sh -c "python manage.py update_policy tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py update_policy modrno"\
#&& docker compose run --rm app sh -c "python manage.py update_policy danner"\
#&& docker compose run --rm app sh -c "python manage.py update_policy lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py update_policy r-b"\'
#
##smallseed
#alias nogap='docker compose run --rm app sh -c "python manage.py migrate_schemas --shared"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant modrno"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant danner"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant ll-bean"\
#&& docker compose run --rm app sh -c "python manage.py create_tenant r-b --schema_name=rag_bone"\
#&& docker compose run --rm app sh -c "python manage.py seed tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py seed modrno"\
#&& docker compose run --rm app sh -c "python manage.py seed r-b"\
#&& docker compose run --rm app sh -c "python manage.py seed lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py seed danner"\
#&& docker compose run --rm app sh -c "python manage.py seed danner"\
#&& docker compose run --rm app sh -c "python manage.py seed ll-bean"\
#&& docker compose run --rm app sh -c "python manage.py update_policy tuckernuck"\
#&& docker compose run --rm app sh -c "python manage.py update_policy gap"\
#&& docker compose run --rm app sh -c "python manage.py update_policy modrno"\
#&& docker compose run --rm app sh -c "python manage.py update_policy danner"\
#&& docker compose run --rm app sh -c "python manage.py update_policy lacrosse"\
#&& docker compose run --rm app sh -c "python manage.py update_policy r-b"'

#git rebase continue

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#iStaffing V2.0 Config
#ENGAGEMENTSERVICE_PATH=~/iStaffing/td_pd_istaffing-iStaffing-engagements-api
#EPEOPLESERVICE_PATH=~/iStaffing/td_pd_istaffing-istaffing-ebs-api
#SERVICES_PATH=~/iStaffing/td_pd_istaffing-iStaffing-v2.0
#alias rservices="cd $SERVICES_PATH/services; ./gradlew bootRun"
#alias rmocks="cd $SERVICES_PATH/mocks; ./gradlew  bootRun"
#alias rfront="cd $SERVICES_PATH/frontend; npm start"
#alias reservice="cd $ENGAGEMENTSERVICE_PATH/; ./gradlew bootRun"
#alias rebsservice="cd $EPEOPLESERVICE_PATH/; ./gradlew bootRun"
#alias functional="cd $SERVICES_PATH/; ./gradlew setupEnv"
#export EBS_PEOPLE_API_TOKEN=el5AUWlaOzZnQUd2fEFobG9oMys+VTYmXFtadFkvCg==
#export AUTH_KEY=123456
#export PERSONS_APIKEY=3742-804e6367-b11b-4494-bc66-69dfce4cb0e8
#export DB_USERNAME=xxmck_estf
#export DB_PASSWORD=mckinsey16
#export ADMIN_USERNAME=istaffingdev
#export ADMIN_PASSWORD=bmRXeTR9TzM7V2tHLE02WkU8PWlQVEhLP1c5X3cK
#export LDAP_USER=svc_istaffing_dev
#export LDAP_PASSWORD=Qq1D8rV2rYTz
#export SERVICES_EPEOPLE_AUTH_TOKEN=el5AUWlaOzZnQUd2fEFobG9oMys+VTYmXFtadFkvCg==
#export PUBLIC_API_AUTH_TOKEN=PDxPPzpERD0oXWtpaE43NWV9aGElYSlpclZqQHYK
#export SERVICES_ENGAGE_AUTH_TOKEN=Sj5KQkI9WnNAdGQ9ejhFJ2gpczt+RGhJWS9rXG8K
#export OAUTH_CLIENT_ID=3742-804e6367-b11b-4494-bc66-69dfce4cb0e8
#export OAUTH_CLIENT_SECRET=b98cf2ad-e4d0-4f12-b6de-a4193be4513d
#export APIX_OAUTH_CLIENT_ID=3742-804e6367-b11b-4494-bc66-69dfce4cb0e8
#export APIX_OAUTH_CLIENT_SECRET=b98cf2ad-e4d0-4f12-b6de-a4193be4513d
#export APIX_USERNAME=integrated_Staffing_Product_Team@mckinsey.com
#export APIX_PASSWORD=K[XKxHAVe9QiuBo4
#export KEY_STORE_PASSWORD=secret
#export REDIS_PASSWORD="redisDeV@123!"
#export SERVICES_EVENTS_AUTH_TOKEN="95c9bc17-d6fe-40bd-b27e-140cc390b463"
#export EVENTS_DB_USERNAME="pd-notification-dev"
#export EVENTS_DB_PASSWORD="q3EXRnQJub5L92"
#export SOLR_AUTH_USERNAME=istf
#export SOLR_AUTH_PASSWORD=5UCzym7?DWmR3%A+
#export OKTA_FIA_PORTAL_USERNAME=svc_istaffing_dev
#export OKTA_FIA_PORTAL_PASSWORD=Qq1D8rV2rYTz
#export STAFFING_RECOMMENDATIONS_API_AUTH_KEY="ekJdNktJRSMrRGJzRG40a3AnPktffHsuR3pOM3EK"
#export STAFFING_RECOMMENDATIONS_DB_USERNAME="istaffing_recommendations"
#export STAFFING_RECOMMENDATIONS_DB_PASSWORD="Y7f4&L0sV"
#export CONFLICTS_API_CLIENT_ID="9dd8084b6c9dc77a232e6a392047a89afef9f42c7a0c69ac9329ce07af9cdd1b"
#export CONFLICTS_API_CLIENT_SECRET="2266581dd26a9417ccafa8505f40c664536229cda5cbd274d644d454e0407ed9"
#export API_GATEWAY_CLIENT_ID="0oa3k3orznWwauLmq697"
#export API_GATEWAY_CLIENT_SECRET="nbYieIlx0MUZwdi4H2Gq0_JXdiW6SONu0FgD8XbI"
#export API_GATEWAY_CLIENT_ID_DEV="0oa3jn21gxY3gPl7A697"
#export API_GATEWAY_CLIENT_SECRET_DEV="SqOWqcwoYOB6OdNdYmWgKN-Ce_x68ULra5Sc32RO"
#export CONFLICTS_GATEWAY_ID="3gn9p9z812"
#export MYSTAFFING_OKTA_CLIENT_ID=0oa1nszdmiDHBCY2y5d7
#export ISTAFFING_API_OPPORTUNITIES_AUTH_TOKEN=z2O5ABwj86ywYBlttc4w+DfSL4thMG2PSgQcy6DGA0IOWns=
#export ISTAFFING_API_AUTHENTICATION_KEY=PDxPPzpERD0oXWtpaE43NWV9aGElYSlpclZqQHYK
#export NPM_TOKEN=c3ZjX2lzdGFmZmluZ19ybzpBS0NwOGs4WjR0eXhGaXlkSFVMVVE0a3pMN21FdWNvbWtZWUo4alRFZ2kyY2VkQXNxOUdlUDhWYllQTGFWa29TUnd6b00zOUIx
#export SERVICES_PEOPLE_AUTH_TOKEN=el5AUWlaOzZnQUd2fEFobG9oMys+VTYmXFtadFkvCg==
#export STAFFING_RECOMMENDATIONS_DB_URL="jdbc:mysql://qa-mysqldb0910cluster.amdc.mckinsey.com:3311/istaffing_recommendations?useLegacyDatetimeCode=false&serverTimezone=UTC"
#export FLAGSMITH_ENDPOINT=https://copilot-flagsmith-dev.intranet.mckinsey.com/api/v1/
#export FLAGSMITH_ENVIRONMENT_ID=ser.mt2ayQANnjdTetDK2pv9aD
#export ARTIFACTORY_USERNAME=blake_donnelly@mckinsey.com
#export ARTIFACTORY_PASSWORD=AKCp8nzWdEEQ9PAcMvBKNwS1s4gZeDepPDijtpft8ptoob35cCjwx8eZ6G8HzUGqLXEwNAAeH
#export PERSON_LEARNING_GATEWAY_ID=44hn6qmu7j
#export ENGAGE_GATEWAY_ID=yge2dhyp2a

#bankx
export KUBECONFIG=~/.kube/config/dev.yaml

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/blake_donnelly/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/blake_donnelly/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/blake_donnelly/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/blake_donnelly/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

