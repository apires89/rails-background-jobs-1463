class FakeJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    p "I'm starting a fake cleanup job!"
    sleep 3
    puts "Job complete!"
  end
end
