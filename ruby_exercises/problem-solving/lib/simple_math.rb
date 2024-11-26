# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Basic calculator. Accepts two numbers and performs math on them. Can add, subtract, multiply, or divide
class SimpleMath
  sig { params(num1: Integer, num2: Integer).returns(Integer) }
  def add(num1, num2)
    num1 + num2
  end

  sig { params(num1: Integer, num2: Integer).returns(Integer) }
  def subtract(num1, num2)
    num1 - num2
  end

  sig { params(num1: Integer, num2: Integer).returns(Integer) }
  def multiply(num1, num2)
    num1 * num2
  end

  sig { params(num1: Integer, num2: Integer).returns(Integer) }
  def divide(num1, num2)
    num1 / num2
  end
end
