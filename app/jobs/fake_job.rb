class FakeJob < ActiveJob::Base
  queue_as :default

  def perform
    # Do something later
    puts 'Starting JOB'
    sleep 5
    puts 'ENDED JOB'
  end
end
