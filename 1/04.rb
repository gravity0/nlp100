def create_word_index_hash(str)
  words = split_word(str)
  result = {}
  words.each_with_index{|word, idx|
    index = str.index(word)
    key = get_key(word, idx)
    result.store(key, index) 
  }
  result
end

def split_word(str)
  str.split(/\s|,|\./).compact.reject{|elem| elem.empty?}
end

def get_key(word, idx)
  key = ""
  if [1,5,6,7,8,9,15,16,19].include?(idx + 1) then
    key = word.chars.first
  else
    key = word.slice(0, 2) 
  end
  key
end
