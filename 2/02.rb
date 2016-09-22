require_relative "02"

def replace_tab_to_space()
  file_path = File.expand_path("../resource/hightemp.txt", __FILE__)
  FileReader.read(file_path).gsub(/\t/, " ")
end
