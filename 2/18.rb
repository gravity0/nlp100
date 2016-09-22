# 確認コマンド　sort -r -n -k 3,3 2/resource/hightemp.txt

Line = Struct.new(:prefecture, :city, :highest_temperature, :date) do
  def <=>(another_line)
    if self.highest_temperature < another_line.highest_temperature
      -1
    elsif self.highest_temperature > another_line.highest_temperature
      1
    else
      0
    end
  end
end

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

def get_lines(str)
  str.gsub(/\t/, " ").split("\n").map{|line|
    Line.new(
        line.split(" ")[0],
        line.split(" ")[1],
        line.split(" ")[2],
        line.split(" ")[3]
    )
  }
end

def doOutput(file_path)
  str = FileReader.read(file_path)
  puts get_lines(str).sort{|line1, line2| line2 <=> line1}
end

doOutput(ARGV[0])
