# frozen_string_literal: false

# Define class
class Lovisa
  attr_reader :title, :characteristics

  def initialize(title, characteristics = %w[brilliant])
    @title = title
    @characteristics = characteristics
  end

  def brilliant?
    @characteristics.include?('brilliant')
  end

  def kind?
    @characteristics.include?('kind')
  end

  def say(string)
    string.insert(0, '**;* ')
    string.insert(-1, ' **;*')
  end
end
