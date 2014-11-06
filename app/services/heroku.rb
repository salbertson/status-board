class Heroku
  URL = "https://status.heroku.com/api/v3/current-status"

  def self.down?
    response = Typhoeus.get(URL)
    JSON.parse(response.body)["status"]["Production"] != "green"
  end
end
