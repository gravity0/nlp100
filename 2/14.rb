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

  module_function :read
end

def get_lines(n)
  file_path = File.expand_path("../resource/hightemp.txt", __FILE__)
  str = FileReader.read(file_path)
  str.split("\n").each_with_index{|line, idx|
    p line if idx.to_i < n.to_i
  }
end
