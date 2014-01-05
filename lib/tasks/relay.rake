namespace :relay do

  task run: :environment do
    Relay.task
end