require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true:false
  end

  def question?
    self.end_with?("?") ? true:false
  end

  def exclamation?
    self.end_with?("!") ? true:false
  end

  def count_sentences
   #self.split.each_cons(2).map{|char| char.pop if char[0] == char[1] }.filter {|punc| punc = "." && "?" && "!"}.count
    #self.split.map{|char,index| delete[char] if char == char[index+1]}.filter {|punc| punc = "." && "?" && "!"}.count
   ## self.split.filter {|punc| punc = "." && "?" && "!"}.count

   #self.split.each_cons(2).filter {|punc| punc = "." && "?" && "!"}.count
   #self.scan(/((.)\2*)/).map(&:first).filter {|punc| punc = "." && "?" && "!"}.count
   self.split(/\.|\?|!/).filter { |s| !s.empty? }.count


  end
end