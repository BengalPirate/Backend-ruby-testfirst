class Book
    attr_reader :title
  
    def title=(new_title)
      @title = capitalize_title(new_title)
    end
  
    private
  
    def capitalize_title(title)
      exceptions = %w[the a an and in of]
      words = title.split
      words.each_with_index.map do |word, index|
        if index == 0 || !exceptions.include?(word)
          word.capitalize
        else
          word
        end
      end.join(' ')
    end
  end
  
