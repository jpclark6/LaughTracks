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
      expect(expected).to eq(actual)
    end

    it 'should return a list of distinct cities with optional age' do
      Comedian.create(first_name: "Fn", last_name: "Ln", age: 10, city: "Denver")
      Comedian.create(first_name: "Fn2", last_name: "Ln2", age: 20, city: "Alb")
      Comedian.create(first_name: "Fnasf", last_name: "Lfsn", age: 20, city: "Alb")
      expect(Comedian.cities(nil)).to eq(['Alb', 'Denver'])
      expect(Comedian.cities(20)).to eq(['Alb'])
    end

    it 'should sort comedians depending on which params it will take' do
      c1 = Comedian.create(first_name: "Fn", last_name: "Bob", age: 10, city: "Denver")
      c2 = Comedian.create(first_name: "Fn2", last_name: "Al", age: 25, city: "Alb")
      c3 = Comedian.create(first_name: "Fnasf", last_name: "Car", age: 20, city: "Berl")
      params = {}
      params[:age] = 20
      expect(Comedian.sort(params)).to eq([c3])
      params = {}
      params[:sort] = "city"
      expect(Comedian.sort(params)).to eq([c2, c3, c1])
      params = {}
      params[:sort] = "age"
      expect(Comedian.sort(params)).to eq([c1, c3, c2])
      params = {}
      params[:sort] = "name"
      expect(Comedian.sort(params)).to eq([c2, c1, c3])
      params = {}
      expect(Comedian.sort(params)).to eq([c1, c2, c3])
    end
  end
end
