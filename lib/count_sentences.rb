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
      self.split('.').join('?').split('?').join('!').split('!').delete_if do |sentence| sentence.size < 3 end.size
  end
end

