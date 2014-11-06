require 'open-uri'

class Stripe
  URL = 'https://status.stripe.com'

  def self.down?
    document = Nokogiri::HTML(open(URL))
    document.css('.title').text != 'All services are online.'
  end
end
