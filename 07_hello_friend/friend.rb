class Friend
  def greeting(who = nil)
    who = who != nil ? ", " + who : ""
    "Hello#{who}!"
  end
end