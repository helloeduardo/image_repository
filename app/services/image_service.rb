class ImageService
  def self.images(params)
    response = conn.get("v7.0/images/search") do |req|
      req.params["q"] = params[:text]
      req.params["color"] = params[:color] if params[:color]
      req.params["aspect"] = params[:aspect] if params[:aspect]
    end

    JSON.parse(response.body, symbolize_names: true)[:value]
  end

  def self.conn
    Faraday.new("https://api.bing.microsoft.com/") do |connection|
      connection.headers['Ocp-Apim-Subscription-Key'] = ENV['BING_KEY_1']
    end
  end
end
