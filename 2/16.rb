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

def split(n, file_path)
  str = FileReader.read(file_path)
  result = []
  str.split("\n").each_with_index{|line, idx|
    result[idx % n.to_i] = [] if result[idx % n.to_i].nil?
    result[idx % n.to_i] << idx.to_s + "_" + line
  }
  result.each{|elem|
    elem.each{|e|
      puts e
    }
    puts
  }
end

split(ARGV[1], ARGV[0])
