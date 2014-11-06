class Heroku
  def self.down?
    response = Typhoeus.get("https://status.heroku.com/api/v3/current-status")
    JSON.parse(response.body)["status"]["Production"] != "green"
  end
end
