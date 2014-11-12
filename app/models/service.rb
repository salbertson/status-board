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
    raise("You should define #down? in service class")
  end

  def to_hash
    { id: id, name: name, url: url }
  end
end
