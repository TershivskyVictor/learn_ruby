class XmlDocument
   def initialize(indents = false)
    @indents = indents
    @curr_indent = 0
  end

  def method_missing(meth, *args, &block)
    new_tag = *args
    output_string = (@indents ? "  " * @curr_indent : "") + "<" + meth.to_s
    if new_tag.class == Hash
      new_tag.each { |key, value| output_string += " #{key}='#{value}'" }
      output_string += "/>"
    elsif block
      output_string += ">"
      output_string += "\n" if @indents
      @curr_indent += 1
      output_string += yield
      @curr_indent -= 1
      output_string += (@indents ? "  " * @curr_indent : "") + "</" + meth.to_s + ">"
    elsif new_tag.class == String
      output_string = (@indents ? "  " * @curr_indent : "") + "<#{meth}/>"
    else
      output_string += "/>"
    end
    @indents ? output_string + "\n" : output_string
  end
end