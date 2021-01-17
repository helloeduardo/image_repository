class ImageFacade
  def self.images_by_text(text)
    image_data = ImageService.images_by_text(text)

    image_data.map do |data|
      Image.new(data)
    end
  end
end
