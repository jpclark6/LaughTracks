RSpec.describe 'Individual comedian page' do
  context 'as a visitor' do
    before :each do
      robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Alabama")
      Special.create(title: "HBO Comedy Hour", length: (20 * 60), comedian_id: robin.id, pic_url: "placeholder_r1.jpg")
      Special.create(title: "Comic Relief 5", length: (40 * 60), comedian_id: robin.id, pic_url: "placeholder_r2.jpg")

      dan = Comedian.create(first_name: "Dan", last_name: "Tester", age: 16, city: "Chicago")
      Special.create(title: "HBO Comedy Hour", length: (20 * 60), comedian_id: dan.id, pic_url: "placeholder_d1.jpg")
      Special.create(title: "Comic Relief 6", length: (40 * 60), comedian_id: dan.id, pic_url: "placeholder_d2.jpg")

      john = Comedian.create(first_name: "John", last_name: "Mulaney", age: 36, city: "Dallas")
      Special.create(title: "The Comeback Kid", length: (10 * 60), comedian_id: john.id, pic_url: "placeholder_j1.jpg")
      Special.create(title: "New In Town", length: (50 * 60), comedian_id: john.id, pic_url: "placeholder_j2.jpg")
      Special.create(title: "John Is Here", length: (100 * 60), comedian_id: john.id, pic_url: "placeholder_j3.jpg")
    end

    it 'should show only one comedian on their page' do
      visit '/comedians/1'
      expect(page).to have_content("Robin Williams")
      expect(page).to have_no_content("John Mulaney")
    end

    it 'should show only one comedians specials on their page' do
      visit '/comedians/1'
      expect(page).to have_content("Comic Relief 5")
      expect(page).to have_no_content("Comic Relief 6")
    end
  end
end
