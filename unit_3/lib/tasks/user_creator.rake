namespace :test do
   desc "User creating"
   task user_creator: :environment do
    i = 0
    while i < 5 do
      User.create name: "test #{i}", email: "test email #{i}"
      #p "test #{i}"
      i += 1
    end
     p User.all.map(&:name)
   end
 end
