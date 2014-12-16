require 'open-uri'

class CustomerIo < Service
  def name
    'Customer.io'
  end

  def url
    'http://status.customer.io'
  end
end
