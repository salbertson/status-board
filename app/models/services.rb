class Services
  def self.all
    Dir.glob("app/services/*").map do |filepath|
      File.basename(filepath, ".rb").titleize.gsub(/\s+/, "").constantize.new
    end
  end

  def self.find(id)
    id.to_s.titleize.gsub(/\s+/, "").constantize.new
  end
end
