require 'open-uri'

class NewRelicService < Service
  def name
    'New Relic'
  end

  def url
    'https://status.newrelic.com/'
  end
end
