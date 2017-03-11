# generates permutations
class PermutationGenerator
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def list_permutations
    [@phrase]
  end
end

