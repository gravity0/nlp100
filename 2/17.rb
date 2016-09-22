# 確認コマンド　cut -f 1 2/resource/hightemp.txt | sort | uniq
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

def get_first_col(str)
  str.gsub(/\t/, " ").split("\n").map{|line|
    line.split(" ").first
  }.uniq
end

def uniq_col(file_path)
  str = FileReader.read(file_path)
  puts get_first_col(str)
end

uniq_col(ARGV[0])
