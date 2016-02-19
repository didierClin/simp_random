set :stage, :production

# Replace 127.0.0.1 with your server's IP address!
server '51.255.201.63', user: 'deploy', roles: %w{web app db}
