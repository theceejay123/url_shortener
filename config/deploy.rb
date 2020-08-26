# config valid for current version and patch releases of Capistrano
lock '~> 3.14.1'

set :application, 'url_shortener'
set :repo_url, 'git@github.com:theceejay123/url_shortener.git'

set :rbenv_type, :user
set :rbenv_ruby, '2.7.1'

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
append :linked_files, 'config/database.yml', 'config/master.key'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5

# Optionally, you can symlink your database.yml and/or secrets.yml file from the shared directory during deploy
# This is useful if you don't want to use ENV variables
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

set :assets_roles, []
