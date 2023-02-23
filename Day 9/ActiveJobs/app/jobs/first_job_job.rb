class FirstJobJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sleep 5
    puts "hello"
  end
end
