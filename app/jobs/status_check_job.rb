class StatusCheckJob
  def initialize(service_name)
    @service_name = service_name.to_s
  end

  def perform
    service = @service_name.classify.constantize

    # notify users when down!!!
    if service.up?
      puts "Everything is gooooood!"
    end
  end
end
