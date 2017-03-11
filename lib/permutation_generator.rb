# generates permutations
class PermutationGenerator
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def list_permutations
    permutations_for(@phrase).flatten
  end

  def permutations_for(input_string)
    if input_string.length == 1
      [input_string]
    else
      input_string.chars.map do |character|
        sub_permutations = permutations_for input_string.delete(character)
        distribute_letter(character, sub_permutations.flatten)
      end
    end
  end

  def distribute_letter(letter, array_of_strings)
    array_of_strings.map do |string|
      letter + string
    end
  end
end

