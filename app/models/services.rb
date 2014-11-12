class Services
  def self.all
    Dir.glob("app/services/*").map do |filepath|
      File.basename(filepath, ".rb").classify.constantize.new
    end
  end

  def self.find(id)
    id.to_s.classify.constantize.new
  end
end
