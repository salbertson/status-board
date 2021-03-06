class Slack
  def initialize(settings)
    @settings = settings
  end

  def notify(service)
    Typhoeus.post(
      @settings["url"],
      body: "#{service.name} might be having issues - #{service.url} (via #{ENV["ROOT_URL"] || "Status Board"})"
    )
  end
end
