# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Student starts with a grade of C. Can study for better grades or slack off to drop grades.
class Student < T::Struct
  sig { void }
  def initialize
    super
    @grade_index = T.let(2, Integer)
    @grade_array = T.let(%w[A B C D F], T::Array[String])
    @grade = T.let('C', String)
  end

  sig { returns(String) }
  def grade
    @grade = T.must(@grade_array[@grade_index])
  end

  sig { void }
  def study
    return if @grade_index.zero?

    @grade_index -= 1
  end

  sig { void }
  def slack_off
    return if @grade_index == 4

    @grade_index += 1
  end
end
