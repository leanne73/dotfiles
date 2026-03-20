alias rs='bundle exec bin/rails s'
alias rc='bin/rails c'

alias killrs='kill -9 /src/tmp/pids/server.pid'
alias ss='spring stop'

alias lint='git diff main --name-only | xargs rubocop -A --force-exclusion'

alias migrate='bin/rails db:migrate RAILS_ENV=development'
alias migrate_dev='bin/rails db:migrate RAILS_ENV=development'
alias migrate_test='bin/rails db:migrate RAILS_ENV=test'

function migrate_all() {
  echo 'migrating dev db'
  bin/rails db:migrate RAILS_ENV=development
  echo 'migrating test db'
  bin/rails db:migrate RAILS_ENV=test
}
