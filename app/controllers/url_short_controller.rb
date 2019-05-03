class UrlShortController < ApplicationController
  def generate_short_url
    # Verify if the record exist
    # 
    url_short_obj = ShortUrl.find_by_url(params[:web_url])
    if url_short_obj
      msg = url_short_obj.short_url
      status = :ok
    else
      url_short_obj = ShortUrl.new
      url_short_obj.url = params[:web_url]
      if url_short_obj.save
        msg = url_short_obj.short_url
        status = :created
      else
        msg = url_short_obj.errors
        status = unprocessable_entity
      end
    end

    respond_to do |format|
      format.json { render json: msg, status: status }
    end
  end
end
