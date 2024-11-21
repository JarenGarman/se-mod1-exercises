# frozen_string_literal: true

# Define class
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def greeting
    "Woof, I'm #{@name} the #{@breed}!"
  end
end
