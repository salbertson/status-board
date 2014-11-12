namespace :monitoring do
  desc "Check status for every supported service"
  task :check_all => :environment do
    Services.all.each do |service|
      Delayed::Job.enqueue StatusCheckJob.new(service.id)
    end
  end
end
