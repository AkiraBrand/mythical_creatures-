class Hobbit
 attr_reader :name, :disposition, :age
 def initialize (name, disposition = "homebody")
  @name = name
  @disposition = disposition
  @age = 0
 end

 def celebrate_birthday
   @age += 1
 end

 def adult?
   @age > 32
 end

 def old?
  @age >= 101
 end

 def has_ring?
  @name == "Frodo"
  # try removing the @ sign here. It'll still pass.
  # try removing some other @ signs. what happens? 
  # why do you think that is?
 end

 def is_short?
  true
 end

end
