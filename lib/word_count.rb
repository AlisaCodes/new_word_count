class String
  define_method(:word_count) do |word_to_count|
  count = 0
  punctuation = [",", ".", ":", ";"]
  text = self.gsub(/punctuation/," ")
  text.downcase.split(" ").each do |word|

      if word == word_to_count
        count += 1
      end
    end
    count
  end
end
