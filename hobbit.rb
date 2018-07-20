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
  # try removing the @ sign here. It'll still pass.
  # done
  # try removing some other @ signs. what happens?
  # line 18 removed @.  Test passes. Same at 14. Test passes.
  # but at 10, 4 errors.
  # why do you think that is?
  # I think its because I'm just evaluating true/false in adult? and old?, and the age
  # that I'm evaluating comes from earlier in the program with no change to the age in the method itself.
  # but when the age needs to be *changed*, i need the instance variable (@) because I need to
  # carry that result around the entire program.
  # If i remove @ on lines 4 and 5 I get errors as well. I'm guessing because I need those
  # attributes all over the program and they need to be changable depending on my arguements that I pass
  # to the objects. 
 end

 def is_short?
  true
 end

 def two_plus_two
   2+2
 end

end
