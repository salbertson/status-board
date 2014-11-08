class Services
  def self.all
    Dir.glob("app/services/*").map do |filepath|
      Service.new(File.basename(filepath, ".rb"))
    end
  end
end
