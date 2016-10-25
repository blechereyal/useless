class Language
  attr_accessor :lang_name
  def initialize(lang_name)
    @lang_name = lang_name
  end

  def self.template(options)
    Proc.new {|line| line == "\n" || line == "\t\n" ? line : options[:prepend] + ' ' + line }
  end

  TEMPLATES = {
    ruby: template(prepend: '#') 
  }
 
  def template
    self.class::TEMPLATES[lang_name.downcase.to_sym]
  end
end
