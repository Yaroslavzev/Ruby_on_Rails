namespace :test do
  desc "Coint lines in all .rb files"
  task lines_counter: :environment do
    path = Pathname.new('.')
    def scan(path, counter = 0, count = 0)
      entries = Dir.new(path).reject{|x| %w[. ..].include? x}.map {|x| path.join x}
      entries.reduce(counter) do |counter, item|
        if File.directory?(item)
          scan(item, counter)
        elsif item.extname == '.rb'
          File.open(item) {|f| count = f.read.count("\n")}
          counter + count
        else
          counter
        end
      end
      end
    puts scan(path)
  end
end
