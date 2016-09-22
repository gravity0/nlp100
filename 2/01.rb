module FileReader
  def read(file_path)
    begin
      File.open(file_path) do |file|
        file.read
      end
    end
    rescue SystemCallError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    end

  def write(file_path, str)
    begin
      File.open(file_path, "w") do |file|
        file.print(str)
      end
    end
    rescue SystemCallError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    rescue IOError => e
      puts %Q(class=[#{e.class}] message=[#{e.message}])
    end

    
  module_function :read
  module_function :write
end

def count_lines()
  file_path = File.expand_path("../resource/hightemp.txt", __FILE__)
  FileReader.read(file_path).split("\n").size
end

