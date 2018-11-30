RSpec.describe 'Main comedian page' do
  context 'as a visitor' do
    before :each do
      robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Alabama")
      Special.create(title: "HBO Comedy Hour", length: 20, comedian_id: robin.id, pic_url: "placeholder_r1.jpg")
      Special.create(title: "Comic Relief 5", length: 40, comedian_id: robin.id, pic_url: "placeholder_r2.jpg")

      dan = Comedian.create(first_name: "Dan", last_name: "Tester", age: 16, city: "Chicago")
      Special.create(title: "HBO Comedy Hour", length: 20, comedian_id: dan.id, pic_url: "placeholder_d1.jpg")
      Special.create(title: "Comic Relief 5", length: 40, comedian_id: dan.id, pic_url: "placeholder_d2.jpg")

      john = Comedian.create(first_name: "John", last_name: "Mulaney", age: 36, city: "Dallas")
      Special.create(title: "The Comeback Kid", length: 10, comedian_id: john.id, pic_url: "placeholder_j1.jpg")
      Special.create(title: "New In Town", length: 50, comedian_id: john.id, pic_url: "placeholder_j2.jpg")
      Special.create(title: "John Is Here", length: 100, comedian_id: john.id, pic_url: "placeholder_j3.jpg")
    end

    it 'should display name, age, and city for a comedian once' do

    end
  end
end
