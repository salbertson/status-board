namespace :monitoring do
  desc "Check status for every supported service"
  task :check_all => :environment do
    service_names = Dir.glob("app/services/*").map do |filepath|
      File.basename(filepath, ".rb")
    end

    service_names.each do |service_name|
      Delayed::Job.enqueue StatusCheckJob.new(service_name)
    end
  end
end
