# Class that decides how to comment code based on language
require 'lang/ruby'

class Commenter
  attr_accessor :content, :language
  def initialize(content, language)
    @content = content
    @language = language
  end

end
