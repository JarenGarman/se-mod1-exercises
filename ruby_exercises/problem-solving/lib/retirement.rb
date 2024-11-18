class Retirement
  def initialize
  end
  def calculate(age, retirement_age)
    if age >= 0 && retirement_age >= 0
      "You have #{retirement_age - age} years left until you can retire. It is 2015, so you can retire in #{2015 + retirement_age - age}."
    else
    "Error. Age cannot be negative."
    end
  end
end