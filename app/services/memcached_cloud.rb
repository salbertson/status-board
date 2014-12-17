require 'open-uri'

class MemcachedCloud < Service
  def name
    'Memcached Cloud'
  end

  def url
    'https://status.redislabs.com'
  end
end
