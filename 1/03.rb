def count_word_size(str)
  words = str.split(/\s|,|\./).compact.reject{|elem| elem.empty?}
  result = []
  words.each{|word|
    result << word.length 
  }
  result
end
