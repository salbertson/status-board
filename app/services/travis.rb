require 'open-uri'

class Travis < Service
  def name
    'Travis CI'
  end

  def url
    'http://status.travis-ci.com'
  end
end
