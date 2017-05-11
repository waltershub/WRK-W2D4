require 'byebug'
def first_anagram?(str , str2 )
  perms_array = str.chars.to_a.permutation.map(&:join)

  perms_array.include?(str2)
end

def second_anagram?(str, str2)
  str.chars.each do |letter|
    if str2.include?(letter)
      str2[str2.index(letter)] = ""
      str[str.index(letter)] = ""
    end
  end
  return true if str2 == "" && str == ""
  false
end

def third_anagram(str, str2)
  if str.chars.sort == str2.chars.sort
    return true
  end
  false
end

def fourth_anagram(str, str2)
  hash1 = Hash.new{|h,k| h[k]=0}
  hash2  = Hash.new{|h,k| h[k]=0}

  str.chars.each do |letter|
    hash1[letter] += str.count(letter)
  end
  str2.chars.each do |letter|
    hash2[letter] += str2.count(letter)
  end
  hash1 == hash2
end

def fifth_anagram(str, str2)
  hash1 = Hash.new{|h,k| h[k]=0}

  str.chars.each do |letter|
    hash1[letter] += str.count(letter)
  end
  str2.chars.each do |letter|
    hash1[letter] += str2.count(letter)
  end
  comparison_array = hash1.values
  return false if comparison_array.any?{|value| com.count(value) == 1 }
  true
end
