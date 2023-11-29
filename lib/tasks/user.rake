namespace :user do
  desc "Enrinch all of the users with Clearbit API"
  task update_all: :environment do
    users = User.all
    puts "Enrinching update of #{users.size} users"
    users.each do |user|
      UpdateUserJob.perform_later(user)
    end
  end

end
