require 'open-uri'

class Pagerduty < Service
  def name
    'Pagerduty'
  end

  def url
    'http://status.pagerduty.com'
  end
end
