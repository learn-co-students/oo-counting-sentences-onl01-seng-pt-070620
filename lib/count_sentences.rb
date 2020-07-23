require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
    
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end

  end

  def count_sentences
    sentences_arr = self.split(/[.?!]/)
    sentences_arr.delete_if {|sentence|sentence.empty?}
    sentences_arr.length
  end

end