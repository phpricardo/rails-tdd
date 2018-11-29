describe 'Matchers de Igualdade' do
    it '#equal - Testa se é o mesmo objeto' do
        x = "Ruby"
        y = "Ruby"

        expect(x).not_to equal(y)
        expect(x).to equal(x)
    end

    it '#be - Testa se é o mesmo objeto' do
        x = "Ruby"
        y = "Ruby"

        expect(x).not_to be(y)
        expect(x).to be(x)
    end

    it '#eql - Testa o valor' do
        x = "Ruby"
        y = "Ruby"

        expect(x).to eql(y)
    end

    it '#eq - Testa o valor (equivalente ao eql)' do
        x = "Ruby"
        y = "Ruby"

        expect(x).to eql(y)
    end
end