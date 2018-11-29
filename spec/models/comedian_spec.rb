RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(first_name: 'Mitch', last_name: 'Headburg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe 'Class methods' do
    it 'should find average age of comedians' do
      Comedian.create(first_name: "Fn", last_name: "Ln", age: 10, city: "Denver")
      Comedian.create(first_name: "Fn2", last_name: "Ln2", age: 20, city: "Alb")
      comedians = Comedian.all
      expected = 15
      actual = Comedian.average_age(comedians)
      expect(actual).to eq(expected)
    end
  end
end
