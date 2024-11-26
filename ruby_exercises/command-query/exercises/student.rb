# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Student starts with a grade of C. Can study for better grades or slack off to drop grades.
class Student < T::Struct
  const :grade_index, Integer, default: 2
  const :grade_array, T::Array[String], default: %w[A B C D F]

  sig { returns(T.nilable(String)) }
  def grade
    @grade_array[@grade_index]
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
