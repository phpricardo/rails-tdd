require 'Calculator'

describe Calculator, "Sobre a calculadora" do

    context '#div' do
        it 'divide by 0' do
            expect{subject.div(5, 0)}.to raise_error(ZeroDivisionError)
            expect{subject.div(5, 0)}.to raise_error("divided by 0")
            expect{subject.div(5, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
            expect{subject.div(5, 0)}.to raise_error(/divided/)
        end
    end

    context '#sum' do
        it 'with positive numbers' do
            result = subject.sum(5, 7)
            expect(result).to eq(12)
        end

        it 'with positive and negatives numbers' do
            result = subject.sum(-5, 7)
            expect(result).to eq(2)
        end

        it 'with negatives numbers' do
            result = subject.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end
end


# Outra forma

# describe Calculator do

#     context '#sum' do
#         it 'with positive numbers' do
#             result = subject.sum(5, 7)
#             expect(result).to eq(12)
#         end

#         it 'with positive and negatives numbers' do
#             result = subject.sum(-5, 7)
#             expect(result).to eq(2)
#         end

#         it 'with negatives numbers' do
#             result = subject.sum(-5, -7)
#             expect(result).to eq(-12)
#         end
#     end
# end