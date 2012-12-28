class Dictionary
  def initialize
    @entries = Hash.new
  end

  attr_accessor :entries

  def add(new_dicticion)
    if new_dicticion.class == Hash
      @entries.merge!(new_dicticion)
    elsif new_dicticion.class == String
      @entries[new_dicticion] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(ent_key)
    @entries.keys.any? { |little_word| ent_key == little_word }
  end

  def find(ent_key)
    ret = Hash.new
    unless ent_key == "nothing"
      @entries.each do |key, value|
        if (key.count ent_key) > 0
          ret[key] = value
        end
      end
    end
    ret
  end

  def printable
    ret = ""
    @entries.sort.each { |key, value| ret += "[#{key}] \"#{value}\"\n" }
    ret[0..-2]
  end
end