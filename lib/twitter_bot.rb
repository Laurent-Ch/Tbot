# Link/Call the twitter and dotenv gems.
require 'twitter'
require 'dotenv'

# Make dotenv fetch the access keys within the .env file
Dotenv.load('.env')

def login_twitter
  # Array of users to which a message will be sent
  names = ['@frontendmenteur', '@luuucasog', '@Ragnvulf', '@8UK0W5K1', 'charleedouard1', '@mrprst', '@lamour_ronan',
           '@bigdduwa', '@nathvideobot']

  # Access protocol (calling keys)
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_API_KEY']
    config.consumer_secret     = ENV['TWITTER_API_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
  end

  # Tasks

  #   Tweet a simple message
  #   DONE! DO NOT REPEAT!
  #   client.update('First tweet #bonjour_monde')
  #
  #   Now, say hello to a specific group of people
  #   DONE! DO NOT REPEAT!
  #   names.each do |i|
  #     client.update("#{i} Salut à toi jeune entrepreneur ! #bonjour_monde")
  #   end
  #
  #   Now, let's automatically like 20 recent tweets containing a specific hastag
  #   DONE! DO NOT REPEAT!
  #   tweets = client.search("#bonjour_monde", result_type: "recent").take(20)
  #   client.favorite(tweets)
end

login_twitter
