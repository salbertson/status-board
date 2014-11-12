require 'open-uri'

class Stripe < Service
  def name
    'Stripe'
  end

  def url
    'https://status.stripe.com'
  end

  def down?
    document = Nokogiri::HTML(open(url))
    document.css('.title').text != 'All services are online.'
  end
end
