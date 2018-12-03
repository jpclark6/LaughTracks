RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Class methods' do
    it 'should find average length of specials with optional by age input' do
      robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Chicago")
      Special.create(title: "HBO Comedy Hour", length: 20, comedian_id: robin.id, pic_url: "placeholder.jpg")
      Special.create(title: "Comic Relief 5", length: 40, comedian_id: robin.id, pic_url: "placeholder.jpg")

      john = Comedian.create(first_name: "John", last_name: "Mulaney", age: "36", city: "Chicago")
      Special.create(title: "The Comeback Kid", length: 10, comedian_id: john.id, pic_url: "placeholder.jpg")
      Special.create(title: "New In Town", length: 50, comedian_id: john.id, pic_url: "placeholder.jpg")

      expect(Special.average_length(nil)).to eq(0.5)
      expect(Special.average_length(63)).to eq(0.5)
    end

    it 'should find total specials with optional by age input' do
      robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Chicago")
      Special.create(title: "HBO Comedy Hour", length: 20, comedian_id: robin.id, pic_url: "placeholder.jpg")
      Special.create(title: "Comic Relief 5", length: 40, comedian_id: robin.id, pic_url: "placeholder.jpg")

      john = Comedian.create(first_name: "John", last_name: "Mulaney", age: "36", city: "Chicago")
      Special.create(title: "The Comeback Kid", length: 10, comedian_id: john.id, pic_url: "placeholder.jpg")
      Special.create(title: "New In Town", length: 50, comedian_id: john.id, pic_url: "placeholder.jpg")

      expect(Special.tot_specials(nil)).to eq(4)
      expect(Special.tot_specials(36)).to eq(2)
    end
  end
end
