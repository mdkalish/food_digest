require 'uri'
require 'net/http'
require 'json'

class PostsReader
  ACCESS_TOKEN = ENV['food_digest_fb_access_token']
  LINK = "https://graph.facebook.com/quchniapolska/feed?fields=from,name,message,created_time,link&access_token=#{ENV['food_digest_fb_access_token']}"

  def initialize(uri = LINK, options = {}, access_token = nil)
    @uri = URI.parse(uri)
  end

  def read
    Net::HTTP.get_response(@uri)
  end

  def read_messages
    messages = []
    JSON.parse(read.body)['data'].each { |k| messages.push(k['message']) }
    puts messages
  end
end
