# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails/tree/master/assets
#   https://github.com/capistrano/rails/tree/master/migrations
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
# require 'capistrano/bundler'
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'


#rbenvが読み込めてないのか？

# server 'vagrant.local', roles: [:web, :app]
# desc "Report Uptimes"
# task :uptime do
#   on roles(:all) do |host|
#   	run "echo helloworld_`date` >> /home/vagrant/captest"
#     # info "Host #{host} (#{host.roles.to_a.join(', ')}):\t#{capture(:uptime)}"
#   end
# end

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }

# set :user, 'vagrant'

# # helloworldという名前でhoge1(yyy.yyy.yyy.yyy), hoge2(zzz.zzz.zzz.zzz)それぞれにリモートコマンドを実行するタスクを定義
# task :helloworld, :hosts => "vagrant.local" do
#   # /home/memorycraft/footprintというファイルにhelloworld_日付という文字列を追加する
#   run "echo helloworld_`date` >> /home/vagrant/captest"
# end