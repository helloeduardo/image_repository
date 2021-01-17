class ImageService
  def self.images_by_text(text)
    response = conn.get("v7.0/images/search") do |req|
      req.params["q"] = text
    end

    JSON.parse(response.body, symbolize_names: true)[:value]
  end

  def self.conn
    Faraday.new("https://api.bing.microsoft.com/") do |connection|
      connection.headers['Ocp-Apim-Subscription-Key'] = ENV['BING_KEY_1']
    end
  end
end
