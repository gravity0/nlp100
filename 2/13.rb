require_relative "01"

def merge(file1, file2)
  str1 = FileReader.read(file1)
  str2 = FileReader.read(file2)

  rows1 = str1.split("\n")
  rows2 = str2.split("\n")

  result = []
  rows1.size.times do |n|
    result << rows1[n].to_s + "\t" + rows2[n].to_s
  end
  
  file_name = "../resource/merged.txt"
  save_file_path = File.expand_path(file_name, __FILE__)
  FileReader.write(save_file_path, result.join("\n"))
end
