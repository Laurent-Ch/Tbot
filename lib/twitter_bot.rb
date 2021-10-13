# Link/Call the twitter and dotenv gems.
require 'twitter'
require 'dotenv'

# Make dotenv fetch the access keys within the .env file.
Dotenv.load('.env')

def login_twitter
  # Array of users to which a message will be sent.
  names = ['@frontendmenteur', '@luuucasog', '@Ragnvulf', '@8UK0W5K1', 'charleedouard1', '@mrprst', '@lamour_ronan',
           '@bigdduwa', '@nathvideobot']
  
  # Switch from "Twitter::REST::[...]"" to "Twitter::STREAM::[...]" for the streamin part
  # Access protocol (calling keys).
  client = Twitter::Streaming::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_API_KEY']
    config.consumer_secret     = ENV['TWITTER_API_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
  end
  # Tasks.

  #   Tweet a simple message.
  #   DONE! DO NOT REPEAT!
  #   client.update('First tweet #bonjour_monde')
  #
  #   Now, say hello to a specific group of people.
  #   DONE! DO NOT REPEAT!
  #   names.each do |i|
  #     client.update("#{i} Salut à toi jeune entrepreneur ! #bonjour_monde")
  #   end
  #
  #   Now, let's automatically like 20 recent tweets containing a specific hastag.
  #   DONE! DO NOT REPEAT!
  #   tweets = client.search("#bonjour_monde", result_type: "recent").take(20)
  #   client.favorite(tweets)

  #   Now, let's do the same thing as above, but rather than liking tweets containing a specific hastag, we'll follow the users'.
  #   It will not return 3 users if there's not enough recent tweets: 3 is more of a "maximum" thing
  #   DONE! DO NOT REPEAT!
  #   client.search("#bonjour_monde", result_type: "recent").take(3).collect do |tweet|
  #     client.follow(tweet.user)
  #   end

  # D
  topics = ["#bonjour_monde"]
  client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end

end

login_twitter
