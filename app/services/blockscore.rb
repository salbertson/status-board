require 'open-uri'

class Blockscore < Service
  def name
    'Blockscore'
  end

  def url
    'http://status.blockscore.com/'
  end
end
