class Image
  attr_reader :url

  def initialize(data)
    @url = data[:thumbnailUrl]
  end
end
