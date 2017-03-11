require 'rspec'
require 'permutation_generator'

describe PermutationGenerator do
  describe :list_permutations do
    context 'given a string with one letter' do
      it 'returns that letter' do
        generator = PermutationGenerator.new('a')

        expect(generator.list_permutations)
          .to eq([generator.phrase])
      end
    end

    context 'given a string with two letters' do
      it 'returns both valid permutations' do
        phrase = 'ab'
        generator = PermutationGenerator.new(phrase)

        expect(generator.list_permutations)
          .to match_array(%w(ab ba))
      end
    end

    context 'given a string with three letters' do
      it 'returns all valid permutations' do
        phrase = 'abc'
        generator = PermutationGenerator.new(phrase)

        expect(generator.list_permutations)
          .to match_array(%w(abc acb bac bca cab cba))
      end
    end
  end
end
