module Common
  extend ActiveSupport::Concern

  def client_new
      Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['CONSUMER_KEY']
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = session[:token]
      config.access_token_secret = session[:secret]
    end
  end

end
