 class Vampire
 attr_reader :name,
             :pet

   def initialize(name, pet = "bat")
     @name = name
     @pet = pet
     @drinks = 0
   end

 def thirsty?
   if @drinks == 0
    true
   else
   false
  end
end

 def drink
   @drinks += 1
 end

end
