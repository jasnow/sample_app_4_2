# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# FYI: secret_token for both Rails 3.2.x and Rails 4.0
SampleApp31::Application.config.secret_token = 'd067c5ec2f38b4130e27d15561fbec8babae0b4a2b6a2c18839b4ea168db2bb701a1f0e541efa1d2fd630488fa3a9b271d2eff6c202cadfb62a5af0ce228da81'

### RAILS 4.0:
###
SampleApp31::Application.config.secret_key_base = 'd067c5ec2f38b4130e27d15561fbec8babae0b4a2b6a2c18839b4ea168db2bb701a1f0e541efa1d2fd630488fa3a9b271d2eff6c202cadfb62a5af0ce228da81'
