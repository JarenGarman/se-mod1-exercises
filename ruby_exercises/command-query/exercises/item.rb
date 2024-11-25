# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Define an item to be used with the Clearance class.
class Item < T::Struct
  const :type, T.nilable(String)
  const :price, T.nilable(Integer)
  const :discount, T.nilable(Integer)
  const :deal, T.nilable(Float)

  sig { params(item: T::Hash[Symbol, T::Hash[Symbol, Integer]]).void }
  def define(item) # rubocop:disable Metrics/AbcSize
    @type = T.let(item.keys[0].to_s, T.nilable(String))
    @price = T.let(T.must(item.values.flatten[0])[:price], T.nilable(Integer))
    @discount = T.let(T.must(item.values.flatten[0])[:discount], T.nilable(Integer))
    @deal = T.let(1.0 - ((T.must(@price) - T.must(@discount)) / @price.to_f), T.nilable(Float))
  end
end
