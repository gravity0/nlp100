def word_bi_gram(str)
  words = str.split(/\s|,|\./).compact.reject{|elem| elem.empty?}
  words.map.with_index{|word, idx|
    [word, words[idx + 1]]
  }.uniq
end

def char_bi_gram(str)
  chars = str.split(/\s|,|\./).compact.reject{|elem| elem.empty?}.join.chars
  chars.map.with_index{|char, idx|
    [char, chars[idx + 1]]
  }.uniq
end
