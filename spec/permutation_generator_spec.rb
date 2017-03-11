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

        expect(generator.list_permutations).to eq([phrase])
      end
    end
  end
end
