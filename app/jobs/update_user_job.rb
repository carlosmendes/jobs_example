class UpdateUserJob < ActiveJob::Base
  queue_as :critical

  def perform(user_id)
    # Do something later
    u = User.find(user_id)

    u.company = "Le Wagon"
    u.save
    sleep 5
    puts 'I just saved the user with email: '+u.email
  end
end
