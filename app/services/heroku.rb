class Heroku < Service
  def name
    "Heroku"
  end

  def url
    "https://status.heroku.com/api/v3/current-status"
  end

  def down?
    response = Typhoeus.get(url)
    JSON.parse(response.body)["status"]["Production"] != "green"
  end
end
