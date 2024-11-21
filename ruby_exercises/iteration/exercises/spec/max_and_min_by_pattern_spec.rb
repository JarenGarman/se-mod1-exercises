# frozen_string_literal: true

RSpec.describe 'max and min by pattern' do
  it 'test 1'  do
    numbers = [1, 100, 1000, 1_000_000]
    greatest = numbers[0]
    numbers.each do |number|
      greatest = number if number > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  it 'test 2' do
    magnitudes = {
      ones: 1,
      hundreds: 100,
      thousands: 1000,
      millions: 1_000_000
    }
    greatest = magnitudes[magnitudes.keys[0]]
    magnitudes.each_value do |value|
      greatest = value if value > greatest
    end
    expect(greatest).to eq(1_000_000)
  end

  it 'test 3' do
    meals = %w[banana nuts salad steak cake]
    shortest_word = meals[0]
    meals.each do |meal|
      shortest_word = meal if meal.length < shortest_word.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 4' do
    meals = {
      breakfast: 'banana',
      snack: 'nuts',
      lunch: 'salad',
      dinner: 'steak',
      dessert: 'cake'
    }
    shortest_word = meals[meals.keys.first]
    meals.each_value do |dish|
      shortest_word = dish if dish.length < shortest_word.length
    end

    expect(shortest_word).to eq('nuts')
  end

  it 'test 5' do
    stats = [3001, 431, 1695, 0.27601, 0.340]
    most_digits = stats[0]
    stats.each do |stat|
      most_digits = stat if stat.to_s.length > most_digits.to_s.length
    end
    expect(most_digits).to eq(0.27601)
  end

  it 'test 6' do
    stats = {
      games_played: 3001,
      home_runs: 431,
      rbi: 1695,
      batting_average: 0.27601,
      on_base_percentage: 0.340
    }
    most_digits = stats[stats.keys.first]
    stats.each_value do |stat|
      most_digits = stat if stat.to_s.length > most_digits.to_s.length
    end
    expect(most_digits).to eq(0.27601)
  end

  it 'test 7' do
    ages = [39, 45, 29, 24, 50]
    oldest = ages.first
    ages.each do |age|
      oldest = age if age > oldest
    end
    expect(oldest).to eq(50)
  end

  it 'test 8' do
    ages = {
      abdi: 39,
      hassan: 45,
      ladonna: 29,
      margaret: 24,
      miguel: 50
    }
    oldest = { name: ages.first[0].to_s, age: ages.first[1] }
    ages.each do |name, age|
      oldest = { name: name.to_s, age: age } if age > oldest[:age]
    end
    expected = { name: 'miguel', age: 50 }
    expect(oldest).to eq(expected)
  end

  it 'test 9' do
    programmers = [%w[katrina sandi jim aaron desi], %w[abby jon susan]]
    fewest_programmers = programmers.first
    programmers.each do |array|
      fewest_programmers = array if array.size < fewest_programmers.size
    end
    expect(fewest_programmers).to eq(%w[abby jon susan])
  end

  it 'test 10' do
    programmers = { ruby: %w[katrina sandi jim aaron desi], java: %w[abby jon susan] }
    fewest_programmers = programmers.keys.first
    programmers.each do |language, array|
      fewest_programmers = language if array.size < programmers.fetch(fewest_programmers).size
    end
    expect(fewest_programmers).to eq(:java)
  end
end
