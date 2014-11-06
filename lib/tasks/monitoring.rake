namespace :monitoring do
  desc "Check status for every supported service"
  task :check_all => :environment do
    [:heroku].each do |service|
      # job api?
      Delayed::Job.enqueue StatusCheckJob.new(service)
    end
  end
end
