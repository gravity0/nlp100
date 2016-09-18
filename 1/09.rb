def random(str)
  words = split_word(str)
  words.map{|word| random_word(word)}
end

def random_word(word)
  if word.length > 4 then
    chars = word.chars
    head = chars.shift
    tail = chars.pop
    chars.shuffle!
    chars.unshift(head) << tail
    chars.join
  else
    word
  end
end


def split_word(str)
  str.split(/\s/).compact.reject{|elem| elem.empty?}
end
