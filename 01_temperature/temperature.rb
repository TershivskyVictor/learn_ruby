#Constants
CELSIUS_TO_FARENGATE_KOEF = 9.0 / 5.0
FARENGATE_TO_CELSIUS_KOEF = 1.0 / CELSIUS_TO_FARENGATE_KOEF
CELSIUS_AND_FARENGATE_NULL_KOEF = 32.0

#Function converts farengate temperature to celsius
def ftoc(farengate_temperature)
  #Using integer math
  (farengate_temperature - CELSIUS_AND_FARENGATE_NULL_KOEF) * FARENGATE_TO_CELSIUS_KOEF
end

#Function converts celsius temperature to farengate
def ctof(celsius_temperature)
  #Using floating point math
  celsius_temperature * CELSIUS_TO_FARENGATE_KOEF + CELSIUS_AND_FARENGATE_NULL_KOEF
end