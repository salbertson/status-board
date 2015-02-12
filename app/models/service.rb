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
    !fetch_document.css('.page-status').text.include?('All Systems Operational')
  end

  def to_hash
    { id: id, name: name, url: url }
  end

  private

  def fetch_document
    Nokogiri::HTML(open(url))
  rescue RuntimeError => error
    if error.message.include? 'redirection forbidden'
      url = error.message[/-> (.*$)/, 1]
      Nokogiri::HTML(open(url))
    else
      raise
    end
  end
end
