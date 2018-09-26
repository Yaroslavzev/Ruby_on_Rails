namespace :test do
  desc "Coint all .rb files"
  task counter: :environment do
    path = Pathname.new('.')
    def scan(path, counter = 0)
      entries = Dir.new(path).reject{|x| %w[. ..].include? x}.map {|x| path.join x}
      entries.reduce(counter) do |counter, item|
        if File.directory?(item)
          scan(item, counter)
        elsif item.extname == '.rb'
          counter +1
        else
          counter
        end
      end
      end
    puts scan(path)
  end
end
