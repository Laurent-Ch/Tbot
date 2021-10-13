# 1. Link/Call the twitter and dotenv gems.
require 'twitter'
require 'dotenv'

#2. Make dotenv load the .env file.
Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécutes app.rb) et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV.
 
# 3. Quelques lignes qui appellent les clés d'API de ton fichier .env
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end
 
 # 4. Ligne qui permet de tweeter sur ton compte.
client.update('Sending a tweet via the API')
