# 確認コマンド　

require "./lib/FileReader"
require "./lib/FileWriter"
require 'json'

def get_texts(lines)
  lines.select{|line|
    JSON.load(line)["text"].include?("イギリス")
  }
end

def doOutput(file_path, output_path)
  out = output_path.nil? ? File.expand_path("../dist/out_20.json", __FILE__) : output_path
  str = FileReader.read(file_path)
  p get_texts(str).size
  FileWriter.write(out, get_texts(str))
end

doOutput(ARGV[0], ARGV[1])
