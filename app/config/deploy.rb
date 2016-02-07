set :application, "MyTest"
set :domain,      "root@167.114.249.91"
set :deploy_to,   "/var/www/html/test1"
set :app_path,    "app"

set :repository,  "https://github.com/Rorominouche/test1.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  3

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL