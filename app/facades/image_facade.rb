class ImageFacade
  def self.images(params)
    image_data = ImageService.images(params)

    image_data.map do |data|
      Image.new(data)
    end
  end
end
