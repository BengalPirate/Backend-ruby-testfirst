#write your code here
def translate(sentence)
    sentence.split.map { |word| translate_word(word) }.join(" ")
  end
  
  def translate_word(word)
    if word.match(/\A[aeiou]/)
      word + "ay"
    elsif word.match(/\A[^aeiou]*qu/)
      qu_index = word.index("qu") + 2
      word[qu_index..-1] + word[0, qu_index] + "ay"
    else
      consonants = word.match(/\A[^aeiou]+/).to_s
      word[consonants.length..-1] + consonants + "ay"
    end
  end
  