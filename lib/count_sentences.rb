require 'pry'

class String

  def sentence?
    self.end_with?(".")
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
    arrange = self.split(" ")
    i=0
    arrange.each do |word|
      if word.end_with?("?", ".", "!")
        i += 1
      end
    end
    return i
  end
end