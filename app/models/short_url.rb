class ShortUrl < ApplicationRecord
  before_save :generate_url

  def generate_url
    UrlWorker.new.perform(url)


  end
end
