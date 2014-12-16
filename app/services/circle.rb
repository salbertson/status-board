require 'open-uri'

class Circle < Service
  def name
    'Circle CI'
  end

  def url
    'http://status.circleci.com'
  end
end
