# require gems
require 'faraday'
require 'dotenv'
Dotenv.load

class MarvelApi

  attr_accessor :params

  def initialize(params=nil)
    @params = params
  end

  # list of all the characters records
  def get_all_characters_list
    Faraday.get("#{ENV["BASE_URL"]}/v1/public/characters?ts=#{get_timestamp}&apikey=#{ENV["PUBLIC_KEY"]}&hash=#{get_hash}")
  end

  # get only character record
  def get_character
    Faraday.get("#{ENV["BASE_URL"]}/v1/public/characters/#{params[:character_id]}?ts=#{get_timestamp}&apikey=#{ENV["PUBLIC_KEY"]}&hash=#{get_hash}")
  end

  private

  # get uniq time stemp
  def get_timestamp
    Time.now.strftime("%d%m%Y%H%M%S")
  end

  # get digest hash
  def get_hash
    Digest::MD5.hexdigest("#{get_timestamp}#{ENV["PRIVATE_KEY"]}#{ENV["PUBLIC_KEY"]}")
  end
end
