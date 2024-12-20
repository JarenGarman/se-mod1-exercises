# typed: false
# frozen_string_literal: false

require 'rspec'
RSpec.describe 'Inject' do
  it 'test 1' do
    numbers = [28, 12, 38, 1, 91]
    # Iterate over the numbers array defined above,
    # to find the difference of all the numbers
    difference = 0
    numbers.each do |number|
      difference -= number
    end
    expect(difference).to eq(-170)
  end

  it 'test 2' do
    bills = {
      rent: 800,
      car: 240,
      insurance: 110,
      medical: 1112
    }
    # Iterate over the bills hash defined above
    # to find the difference of all the values

    difference = 0
    bills.each_value do |amount|
      difference -= amount
    end
    expect(difference).to eq(-2262)
  end

  it 'test 3' do
    numbers = [2, 3, 5, 7]
    # Iterate over the numbers array defined above
    # to find the product of all the numbers

    product = 1
    numbers.each do |number|
      product *= number
    end
    expect(product).to eq(210)
  end

  it 'test 4' do
    scrabble_score = {
      letter_total: 23,
      word_muliplier: 3,
      bonus: 2
    }
    # Iterate over the scarbble_score hash defined above
    # to find the product of all the values

    product = 1
    scrabble_score.each_value do |value|
      product *= value
    end
    expect(product).to eq(138)
  end

  it 'test 5' do
    airlines = %w[Southwest Delta United Frontier]
    # Iterate over the airlines array defined above to
    # create a hash with the name of the airline as the
    # key and the length of the name as the value

    number_of_letters = {}
    airlines.each do |airline|
      number_of_letters[airline] = airline.length
    end
    expected = {
      'Southwest' => 9,
      'Delta' => 5,
      'United' => 6,
      'Frontier' => 8
    }
    expect(number_of_letters).to eq(expected)
  end

  it 'test 6' do
    topping_calories = {
      pepperoni: 430,
      sausage: 400,
      olives: 10,
      peppers: 10,
      onions: 20
    }
    # Iterate over the topping_calories hash defined above
    # to create an array of all the toppings

    toppings = []
    topping_calories.each_key do |topping|
      toppings << topping.to_s
    end
    expect(toppings).to eq(%w[pepperoni sausage olives peppers onions])
  end

  it 'test 7' do
    elements = [['a', 1], ['b', 9], ['c', 21]]
    # Iterate over the elements array defined above
    # to find the sum of all the integers

    sum_of_second_values = 0
    elements.each do |_letter, integer|
      sum_of_second_values += integer
    end
    expect(sum_of_second_values).to eq(31)
  end

  it 'test 8' do
    toppings = {
      pepperoni: {
        calories: 430,
        quantity: 5
      },
      sausage: {
        calories: 400,
        quantity: 10
      },
      olives: {
        calories: 10,
        quantity: 20
      },
      peppers: {
        calories: 10,
        quantity: 20
      },
      onions: {
        calories: 20,
        quantity: 20
      }
    }
    # Iterate over the toppings hash defined above to find
    # total calories. You will need to multiply each topping's
    # calorie count by the quantity

    total_calories = 0
    toppings.each_value do |hash|
      total_calories += (hash[:calories] * hash[:quantity])
    end
    expect(total_calories).to eq(6950)
  end

  it 'test 9' do
    grades = {
      quizzes: [8, 5, 3, 6, 5],
      tests: [23, 21, 24],
      essays: [10, 11, 10],
      final: [47]
    }
    # Iterate over the elements array defined above
    # to calculate the final grade. The final grade is
    # calculated by averaging each category together and
    # summing all of the averages

    final_grade = 0.0
    grades.each_value do |array|
      final_grade += (array.sum / array.size.to_f)
    end
    expect(final_grade).to eq(85.40)
  end

  it 'test 10' do
    menu = {
      empanadas: {
        flavors: %w[chicken potato steak veggie],
        gluten_free: false
      },
      scones: {
        flavors: %w[blueberry vanilla],
        gluten_free: false
      },
      parfaits: {
        flavors: %w[blueberry strawberry cherry],
        gluten_free: true
      }
    }

    # Iterate over the menu hash above to create a printable
    # version of the menu

    printable_menu = "Menu:\n"
    menu.each do |item, hash|
      gluten = if hash[:gluten_free]
                 "(gluten free)\n"
               else
                 "(non gluten free)\n"
               end
      hash[:flavors][hash[:flavors].size - 1].insert(0, 'and ')
      printable_menu.insert(-1, "- #{hash[:flavors].join(', ')} #{item} #{gluten}")
    end
    expected =  "Menu:\n" \
                "- chicken, potato, steak, and veggie empanadas (non gluten free)\n" \
                "- blueberry, and vanilla scones (non gluten free)\n" \
                "- blueberry, strawberry, and cherry parfaits (gluten free)\n"

    expect(printable_menu).to eq(expected)
  end
end
