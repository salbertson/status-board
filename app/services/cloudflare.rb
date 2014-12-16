require 'open-uri'

class Cloudflare < Service
  def name
    'Cloudflare'
  end

  def url
    'http://cloudflarestatus.com/'
  end
end
