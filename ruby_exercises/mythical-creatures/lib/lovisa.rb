# typed: strict
# frozen_string_literal: false

require_relative '../../monkey_patch'
# Describe a lovisa with a title and characteristics
class Lovisa
  sig { returns(String) }
  attr_reader :title

  sig { returns(T::Array[String]) }
  attr_reader :characteristics

  sig { params(title: String, characteristics: T::Array[String]).void }
  def initialize(title, characteristics = %w[brilliant])
    @title = title
    @characteristics = characteristics
  end

  sig { returns(T::Boolean) }
  def brilliant?
    @characteristics.include?('brilliant')
  end

  sig { returns(T::Boolean) }
  def kind?
    @characteristics.include?('kind')
  end

  sig { params(string: String).returns(String) }
  def say(string)
    string.insert(0, '**;* ')
    string.insert(-1, ' **;*')
  end
end
