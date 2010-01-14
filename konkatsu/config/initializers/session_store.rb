# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_konkatsu_session',
  :secret      => '492700b35d47d328e92939f522c0a3f7a80ba9b20f0c49cdb60b51852ed4619179c5f570079cc9ee12b00399fa61b2e4a5c9dc8f23736b71ccca8d66fa0aab3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
