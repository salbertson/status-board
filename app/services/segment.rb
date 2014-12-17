require 'open-uri'

class Segment < Service
  def name
    'Segment'
  end

  def url
    'http://status.segment.com'
  end
end
