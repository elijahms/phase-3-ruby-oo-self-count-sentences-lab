require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    string_arr = self.split((/\.|\?|!/))

    string_arr.filter{|sentence| !sentence.empty? binding.pry}.length
    
    # string_arr.length
    
    # self.split("").map { |char| 
    # if (char == "." || char == "?" || char == "!")
    #   count += 1
    # end 
    # }

  end
end
