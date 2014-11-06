require 'open-uri'

class Stripe
  def self.down?
    document = Nokogiri::HTML(open('https://status.stripe.com'))
    document.css('.title').text == 'All services are online.'
  end
end
