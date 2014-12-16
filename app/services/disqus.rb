require 'open-uri'

class Disqus < Service
  def name
    'Disqus'
  end

  def url
    'https://status.disqus.com'
  end
end
