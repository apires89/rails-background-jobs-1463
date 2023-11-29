class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    p "Calling an API Clearbit for example on #{user.email}"

    ##API CALL HERE

    sleep 2

    puts "Enriched #{user.email}"
    # Do something later
  end
end
