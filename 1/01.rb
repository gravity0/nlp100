def joinEvenChars(str)
  result = []
  str.chars.each_with_index{|elem, idx|
    result.push(elem) if idx %2 == 0
  }
  result.join
end
