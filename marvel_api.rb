# require gems
require 'faraday'
require 'dotenv'
Dotenv.load

class MarvelApi

  # list of all the characters
  def get_all_characters_list
    Faraday.get("#{ENV["BASE_URL"]}/v1/public/characters?ts=#{get_timestamp}&apikey=#{ENV["PUBLIC_KEY"]}&hash=#{get_hash}")
  end

  private

  # get uniq time stemp
  def get_timestamp
    Time.now.strftime("%d%m%Y%H%M%S")
  end

  # get digest hash
  def get_hash
    Digest::MD5.hexdigest("#{get_ts}#{ENV["PRIVATE_KEY"]}#{ENV["PUBLIC_KEY"]}")
  end
end
