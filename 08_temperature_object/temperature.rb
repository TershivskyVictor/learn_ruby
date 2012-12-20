class Temperature
  #Constants
  CELSIUS_TO_FARENGATE_KOEF = 9.0 / 5.0
  FARENGATE_TO_CELSIUS_KOEF = 1.0 / CELSIUS_TO_FARENGATE_KOEF
  CELSIUS_AND_FARENGATE_NULL_KOEF = 32.0

  #default value of Temperature is fahrenheit - default its nil
  def initialize(start_value)
    @options_hash = start_value
    if start_value.has_key? :c
      @fahrenheit = Temperature.ctof(start_value[:c])
    elsif start_value.has_key? :f
      @fahrenheit = start_value[:f]
    else
      @fahrenheit = nil
    end
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    Temperature.ftoc(@fahrenheit)
  end

  def self.from_celsius(temperature_celsius)
    obj = self.allocate
    obj.send :initialize, :c => temperature_celsius
    obj
  end

  def self.from_fahrenheit(temperature_fahrenheit)
    obj = self.allocate
    obj.send :initialize, :f => temperature_fahrenheit
    obj
  end

  #Converts farengate temperature to celsius
  def self.ftoc(farengate_temperature)
    #Using integer math
    (farengate_temperature - CELSIUS_AND_FARENGATE_NULL_KOEF) * FARENGATE_TO_CELSIUS_KOEF
  end

  #Converts celsius temperature to farengate
  def self.ctof(celsius_temperature)
    #Using floating point math
    celsius_temperature * CELSIUS_TO_FARENGATE_KOEF + CELSIUS_AND_FARENGATE_NULL_KOEF
  end
end

class Celsius < Temperature
  def initialize(celsius_input)
    @fahrenheit = Temperature.ctof(celsius_input)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit_input)
    @fahrenheit = fahrenheit_input
  end
end