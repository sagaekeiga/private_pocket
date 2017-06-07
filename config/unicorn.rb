worker_processes 2
working_directory "/home/anime/private_pocket/current" #appと同じ階層を指定

timeout 3600


listen "/var/run/unicorn/private_pocket.sock"
pid "/var/run/unicorn/private_pocket.pid"


stderr_path "/home/anime/private_pocket/current/log/unicorn.log"
stdout_path "/home/anime/private_pocket/current/log/unicorn.log"


preload_app true