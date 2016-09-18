def each_join(str1, str2)
  chars1 = str1.chars
  chars2 = str2.chars
  result = []

  chars1.each{|elem|
    result << elem 
    result << chars2.shift if !chars2.empty?
  }
  result.join + chars2.join
end

