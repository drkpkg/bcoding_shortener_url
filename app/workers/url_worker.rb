require 'nokogiri'
require 'open-uri'

class UrlWorker
  include Sidekiq::Worker

  def perform(url)
    url_obj = open(url)
    page_doc = Nokogiri::HTML(url_obj)
    page_doc.xpath('//title').each(&:content)
  end

end
