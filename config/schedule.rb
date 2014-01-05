# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

job_type :runner, "cd :path && bin/rails runner -e :environment ':task' :output"

# Update worker stats every minute
every 1.minutes do
	# Only runs if no rake process exists
  		rake "relay:run"	
end
