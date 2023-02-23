class GenerateRandomUserJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "starting job"
    sleep 5
    puts "job completed"

  end
end
