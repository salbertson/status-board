class Service
  def id
    self.class.to_s.underscore
  end

  def name
    raise("You should define NAME in service class")
  end

  def url
    raise("You should define URL in service class")
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.page-status').text.include?('All Systems Operational') == false
  end

  def to_hash
    { id: id, name: name, url: url }
  end
end
