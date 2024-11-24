# typed: true
# frozen_string_literal: true

# Define class
class Student
  attr_reader :grade

  def initialize
    @grade = 'C'
  end

  def study
    case @grade
    when 'F'
      @grade = 'D'
    when 'D'
      @grade = 'C'
    when 'C'
      @grade = 'B'
    when 'B'
      @grade = 'A'
    end
  end

  def slack_off
    case @grade
    when 'A'
      @grade = 'B'
    when 'B'
      @grade = 'C'
    when 'C'
      @grade = 'D'
    when 'D'
      @grade = 'F'
    end
  end
end
