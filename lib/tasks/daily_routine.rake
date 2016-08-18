desc "This task is called by the Heroku scheduler add-on"

task :daily_routine => :environment do
  puts "Updating feed..."
  # NewsFeed.update
  puts "done."
end