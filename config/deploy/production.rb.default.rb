set :stage, :production

# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
role :app, %w{hogeuser1@192.168.***.111,hogeuser2@192.168.***.222}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
# server 'vagrant.local', user: '', roles: %w{web app}, my_property: :my_value

# you can set custom ssh options

server 'hogeuser1@192.168.***.111',
  user: 'hogeuser1',
  port: '22',
  roles: %w{app},
  ssh_options: {
    #user: 'user_name', # overrides user setting above
    keys: %w(/hogehoge/insecure_private_key),
    #forward_agent: false,
    #auth_methods: %w(publickey password)
    # password: 'please use keys'
  }

  server 'hogeuser2@192.168.***.222',
  user: 'hogeuser2',
  port: '22',
  roles: %w{app},
  ssh_options: {
    #user: 'user_name', # overrides user setting above
    keys: %w(/hogehoge/insecure_private_key),
    #forward_agent: false,
    #auth_methods: %w(publickey password)
    # password: 'please use keys'
  }
# setting per server overrides global ssh_options

# fetch(:default_env).merge!(rails_env: :production)
