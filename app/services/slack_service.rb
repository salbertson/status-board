require 'open-uri'

class SlackService < Service
  def name
    'Slack'
  end

  def url
    'https://status.slack.com/'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.current_status').text.
      include?("All's good under the hood, boss!") == false
  end
end
