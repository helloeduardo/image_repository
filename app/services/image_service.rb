class ImageService
  def self.images(params)
    if params[:image_url]
      response = similar_images(params[:image_url])
      JSON.parse(response, symbolize_names: true)[:tags][0][:actions][2][:data][:value].first(35)
    else
      response = image_search(params)
      JSON.parse(response.body, symbolize_names: true)[:value]
    end
  end

  def self.conn
    Faraday.new("https://api.bing.microsoft.com/") do |connection|
      connection.headers['Ocp-Apim-Subscription-Key'] = ENV['BING_KEY_1']
    end
  end

  def self.image_search(params)
    conn.get("v7.0/images/search") do |req|
      req.params["q"] = params[:text]
      req.params["color"] = params[:color] if params[:color]
      req.params["aspect"] = params[:aspect] if params[:aspect]
    end
  end

  def self.similar_images(image_url)
    body = {
      imageInfo: {
        url: image_url
      }
    }
    #
    # conn.post("/v7.0/images/visualsearch") do |req|
    #   req.headers['Content-Type'] = 'multipart/form-data; boundary=boundary_1234-abcd'
    #   req.body =
    # end

    require "uri"
    require "net/http"

    url = URI("https://api.bing.microsoft.com/v7.0/images/visualsearch")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Post.new(url)
    request["Ocp-Apim-Subscription-Key"] = "4c11370b85ff4eb2a4a38059fc40946d"
    form_data = [['knowledgeRequest', body.to_json]]
    request.set_form form_data, 'multipart/form-data'
    response = https.request(request)
    response.read_body
  end
end
