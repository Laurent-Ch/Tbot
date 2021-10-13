# Link/Call the twitter and dotenv gems.
require 'twitter'
require 'dotenv'

# Make dotenv load the .env file.
Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécutes app.rb) et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV.
 
# Quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter

  # Array of users to which a message will be sent
  names = ["@frontendmenteur", "@luuucasog","@Ragnvulf", "@8UK0W5K1", "charleedouard1", "@mrprst", "@lamour_ronan", "@bigdduwa", "@nathvideobot"]

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_API_KEY"]
    config.consumer_secret     = ENV["TWITTER_API_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end

 # Tweet a simple message 
 # DONE! DO NOT REPEAT!
#client.update('First tweet #bonjour_monde')

# Now, say hello to a specific group of people
# DONE! DO NOT REPEAT!
#  names.each do |i|
#    client.update("#{i} Salut à toi jeune entrepreneur ! #bonjour_monde")
#  end

end
 
login_twitter








