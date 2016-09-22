require_relative "01"

def write(col_num)
  resource_file_path = File.expand_path("../resource/hightemp.txt", __FILE__)
  str = FileReader.read(resource_file_path)
  col = get_col(str, col_num)
  file_name = "../resource/col" + col_num.to_s + ".txt"
  save_file_path = File.expand_path(file_name, __FILE__)
  FileReader.write(save_file_path, col)
end

def get_col(str, col_num)
  str.gsub(/\t/, " ").split("\n").map{|line|
    line.split(" ")[col_num - 1]
  }.join("\n")
end
