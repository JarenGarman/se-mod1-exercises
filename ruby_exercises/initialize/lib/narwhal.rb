# typed: true
# frozen_string_literal: true

# Define class
class Narwhal
  attr_reader :name, :weight, :cute

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @cute = hash[:cute]
  end
end
