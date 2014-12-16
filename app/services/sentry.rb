require 'open-uri'

class Sentry < Service
  def name
    'Sentry'
  end

  def url
    'http://status.getsentry.com'
  end
end
