# 確認コマンド　cut -f 1 2/resource/hightemp_for_sort.txt | sort | uniq -c | sort -r

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

def get_frequency(str)
  result = {}
  str.gsub(/\t/, " ").split("\n").map{|line|
    if result.has_key?(line.split(" ")[0]) then
      result[line.split(" ")[0]] += 1
    else
      result[line.split(" ")[0]] = 1
    end
  }
  result.sort{|a,b| b[1]<=>a[1]}
end

def doOutput(file_path)
  str = FileReader.read(file_path)
  get_frequency(str).each {|elem|
    puts "#{elem[1]} #{elem[0]}"
  }
end

doOutput(ARGV[0])
