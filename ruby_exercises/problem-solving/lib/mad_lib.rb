# typed: strict
# frozen_string_literal: true

require_relative '../../monkey_patch'
# Add a noun, verb, adjective, and adverb to create your own madlib.
class MadLib
  sig { params(noun: String).void }
  def noun(noun)
    @noun = T.let(noun, T.nilable(String))
  end

  sig { params(verb: String).void }
  def verb(verb)
    @verb = T.let(verb, T.nilable(String))
  end

  sig { params(adjective: String).void }
  def adjective(adjective)
    @adjective = T.let(adjective, T.nilable(String))
  end

  sig { params(adverb: String).void }
  def adverb(adverb)
    @adverb = T.let(adverb, T.nilable(String))
  end

  sig { returns(String) }
  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end
