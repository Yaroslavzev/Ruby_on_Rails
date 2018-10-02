namespace :test do
  desc 'Say hello'
  task hello: :environment do
    puts 'Hello'
  end
end
