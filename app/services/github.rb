require 'open-uri'

class Github < Service
  def name
    'GitHub'
  end

  def url
    'https://status.github.com/api/status.json'
  end

  def down?
    response = Typhoeus.get(url)
    JSON.parse(response.body)["status"] != "good"
  end
end
