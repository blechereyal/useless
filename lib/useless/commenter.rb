# Class that decides how to comment code based on language
require 'useless/language'

class Commenter
  attr_accessor :content, :language
  def initialize(content, language)
    @content = content
    @language = Language.new(language)
  end

  def apply
    content.each_line.map do |line|
      @language.template.call(line) 
    end.join('')
  end
end
