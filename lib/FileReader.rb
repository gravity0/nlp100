module FileReader
  def read(file_path)
    begin
      File.open(file_path) do |file|
        file.each_line.reduce([]){|acc, line| acc << line}
      end
    end
    rescue SystemCallError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    end

  module_function :read
end
