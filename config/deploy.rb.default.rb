set :application, 'my_app_hoge'
set :repo_url, 'https://github.com/hogeuser/hogehoge.git'
# 例えば　set :repo_url, 'https://github.com/yujikawase/testcake.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :branch, 'master'

set :deploy_to, '/var/www/my_app'
set :scm, :git
# set :deploy_via, :remote_cache

set :format, :pretty
set :log_level, :debug
set :pty, true


set :linked_files, %w{cake/cakephp-2.3.10/app/Config/database.php}
set :linked_dirs, %w{cake/cakephp-2.3.10/app/tmp}

remote_file 'config/newrelic.yml' => '/tmp/newrelic.yml', roles: :app

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 2

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  #after :finishing, 'deploy:cleanup'

end


namespace :scp do

  task :upload do
    source = "../vagrant/shared" # ローカルのフォルダを
    target = "/var/www/my_app/" # サーバーにアップロードする
    desc "Upload Dir"
    on roles(:all) do
      upload!(source, target, :recursive => true)
    end
  end
end

namespace :clearcache do
  target = "cake/cakephp-2.3.10/app/tmp"
  desc "Clear tmp cache"
  task :tmp do
    on roles(:all) do
      # ディレクトリは消さずにファイルのみを削除したい、また、エラーは出したく無いために、findコマンドを使用した
      rm = capture "find #{release_path}/#{target}/ -type f | xargs"
      if rm!="" then
        execute :echo, "hoge"
        execute :rm, "#{rm}"
      end

    end
  end
end


