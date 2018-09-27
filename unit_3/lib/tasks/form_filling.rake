namespace :test do
   desc "Fill in initial info into posts and comments tables"
   task form_filling: :environment do
    User.all.ids.each  do |x|
      Post.create title: "Insert mane of post #{x}", body: 'Insert text', user_id: x
      Comment.create body: 'Insert text', user_id: x, post_id: 1
    end

   end
 end
