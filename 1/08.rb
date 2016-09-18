def encrypt(str)
  str.chars.map{|char|
    if char.ord.between?(97, 122) then
      (219 - char.ord).chr("UTF-8")
    else
      char
    end
  }.join
end
