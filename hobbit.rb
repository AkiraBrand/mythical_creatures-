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
   age > 32
 end

 def old?
  age >= 101
 end

 def has_ring?
  name == "Frodo"
 end

 def is_short?
  true
 end

 def two_plus_two
   2+2
 end
 
 def elevenses
   "second breakfast"
 end

end
