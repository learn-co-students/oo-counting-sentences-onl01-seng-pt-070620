require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  #binding.pry
    # if self.split(/\.|\?|\!/) > 0
    #   return sentence.count
    # else
    #   0
    # end
    self.split(/[.?!]+/).count
  end
end