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
    num = 0
    count_string = self.split(/[.+!+?+]/)
    if count_string.include?("")
      count_string.delete("")
    end
    count_string.length
  end
end

