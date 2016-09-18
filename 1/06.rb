require_relative "05"

def diff_char_bi_gram(str1, str2)
  diff1 = char_bi_gram(str1) - char_bi_gram(str2)
  diff2 = char_bi_gram(str2) - char_bi_gram(str1)
  diff1 + diff2
end

def prod_char_bi_gram(str1, str2)
  char_bi_gram(str1) & char_bi_gram(str2)
end

def union_char_bi_gram(str1, str2)
  (char_bi_gram(str1) + char_bi_gram(str2)).uniq
end
