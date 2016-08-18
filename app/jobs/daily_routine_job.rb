class DailyRoutineJob < ActiveJob::Base
  queue_as :default

  def perform
    # call tommorrows job
    DailyRoutineJob.set(wait_until: Time.now + 1.second).perform_later

	# DO YOU STUFFF

	puts 'I DID MY STUFF' 
  end
end
