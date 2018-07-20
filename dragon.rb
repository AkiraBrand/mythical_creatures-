class Dragon
  def initialize (dragon_name, dragon_color, rider_name)
   @dragon_name = dragon_name
   @dragon_color = dragon_color
   @rider_name = rider_name
   @hungry = true
   @food_in_stomach = 0
  end

 def name
   @dragon_name
 end

 def rider
   @rider_name
 end

  def color
    @dragon_color
  end

  def hungry?
   @hungry
  end

  def eat
    #make the dragon eat 3 times, after 3 times hunger = false
    #plus sign makes new status permanent, and then adds one to that status, etc etc
    @food_in_stomach += 1
  unless
    @food_in_stomach < 3
    @hungry = false
    break
   end
  end

end
