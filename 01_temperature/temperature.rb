#Function converts farengate temperature to celsius
def ftoc(farengate_temperature)
  #Using integer math
  (farengate_temperature - 32) * 5 / 9
end

#Function converts celsius temperature to farengate
def ctof(celsius_temperature)
  #Using floating point math
  celsius_temperature * 9.0 / 5.0 + 32.0
end