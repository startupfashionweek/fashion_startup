rails_env = ENV['RAILS_ENV'] || 'production'

threads 4,4

bind "unix:///var/nginx/public/fashion_startup/shared/tmp/puma/fashion_startup.sock"
pidfile "/var/nginx/public/fashion_startup/current/tmp/puma/pid"
state_path "/var/nginx/public/fashion_startup/current/tmp/puma/state"

activate_control_app