# typed: false
# frozen_string_literal: true

require 'rspec'
require_relative 'student'

RSpec.describe Student do
  it 'has a mediocre grade' do
    student = described_class.new

    expect(student.grade).to eq('C')
  end

  it 'can improve its grade' do
    student = described_class.new

    2.times { student.study }
    expect(student.grade).to eq('A')
  end

  it 'can only get so good' do
    student = described_class.new

    3.times { student.study }

    expect(student.grade).to eq('A')
  end

  it 'can get worse' do
    student = described_class.new

    2.times { student.slack_off }
    expect(student.grade).to eq('F')
  end

  it 'can only get so worse' do
    student = described_class.new

    100.times { student.slack_off }
    expect(student.grade).to eq('F')
  end

  it 'slacking off is immediately noticable' do
    student = described_class.new

    100.times { student.study }
    student.slack_off

    expect(student.grade).to eq('B')
  end

  it 'however, so is studying' do
    student = described_class.new

    100.times { student.slack_off }
    student.study

    expect(student.grade).to eq('D')
  end
end
