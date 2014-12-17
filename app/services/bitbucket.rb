require 'open-uri'

class Bitbucket < Service
  def name
    'Bitbucket'
  end

  def url
    'http://status.bitbucket.org'
  end
end
