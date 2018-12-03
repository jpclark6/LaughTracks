RSpec.describe 'Main comedian page' do
  context 'as a visitor' do
    before :each do
      robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Alabama")
      Special.create(title: "HBO Comedy Hour", length: (20 * 60), comedian_id: robin.id, pic_url: "placeholder_r1.jpg")
      Special.create(title: "Comic Relief 5", length: (40 * 60), comedian_id: robin.id, pic_url: "placeholder_r2.jpg")

      dan = Comedian.create(first_name: "Dan", last_name: "Tester", age: 16, city: "Chicago")
      Special.create(title: "HBO Comedy Hour", length: (20 * 60), comedian_id: dan.id, pic_url: "placeholder_d1.jpg")
      Special.create(title: "Comic Relief 5", length: (40 * 60), comedian_id: dan.id, pic_url: "placeholder_d2.jpg")

      john = Comedian.create(first_name: "John", last_name: "Mulaney", age: 36, city: "Dallas")
      Special.create(title: "The Comeback Kid", length: (10 * 60), comedian_id: john.id, pic_url: "placeholder_j1.jpg")
      Special.create(title: "New In Town", length: (50 * 60), comedian_id: john.id, pic_url: "placeholder_j2.jpg")
      Special.create(title: "John Is Here", length: (100 * 60), comedian_id: john.id, pic_url: "placeholder_j3.jpg")
    end

    it 'should display name, age, and city for a comedian once' do
      visit '/comedians'
      within '#Williams-Robin' do
        expect(page).to have_content("Robin", count: 1)
        expect(page).to have_content("HBO Comedy Hour", count: 1)
      end
      within '#Mulaney-John' do
        expect(page).to have_content("Age: 36", count: 1)
        expect(page).to have_content("Specials: 3", count: 1)
      end
      within '#Tester-Dan' do
        expect(page).to have_content("Home town: Chicago", count: 1)
      end
    end

    it 'should find the average age of comedians on page' do
      visit '/comedians'
      expect(page).to have_content("Average age: 38.33")

      visit '/comedians?age=63'
      expect(page).to have_content("Average age: 63.0")
    end

    it 'should display the average run length of the specials on the page' do
      visit '/comedians'
      expect(page).to have_content("Average run length: 40.0 min")

      visit 'comedians?age=63'
      expect(page).to have_content("Average run length: 30.0 min")
    end

    it 'should display a list of cities on the page' do
      visit '/comedians'
      expect(page).to have_content("Chicago  Alabama  Dallas")

      visit '/comedians?age=63'
      expect(page).to have_content("Alabama")
      expect(page).to have_no_content("Chicago")
      expect(page).to have_no_content("Dallas")
    end

    it 'should display the total number of specials on the page' do
      visit '/comedians'
      expect(page).to have_content("Total specials: 7")

      visit '/comedians?age=63'
      expect(page).to have_content("Total specials: 2")
    end

    it 'should only show comedians with an age when an age is entered' do
      visit '/comedians'
      fill_in 'age', with: 36
      click_button 'Submit'
      expect(current_path).to eq('/comedians')
      expect(page).to have_content('John')
      expect(page).to have_no_content('Robin')
    end

    it 'shouldnt show any comedians when an age is entered that no one has' do
      visit '/comedians'
      fill_in 'age', with: 17
      click_button 'Submit'
      expect(current_path).to eq('/comedians')
      expect(page).to have_no_content('Home town')
    end

    it 'should include images for each comedian' do
      visit '/comedians'
      within '#Williams-Robin' do
        expect(page).to have_css("img[src*='placeholder_r1.jpg']")
        expect(page).to have_no_css("img[src*='placeholder_d1.jpg']")
      end
    end

    it 'should go to an individual comedians page if you click their name' do
      visit '/comedians'
      click_on 'Robin Williams'
      expect(current_path).to eq('/comedians/1')
    end

    it 'should display comedians in database order by default' do
      visit '/comedians'
      e1_1 = page.body =~ /Robin Williams/
      e1_2 = page.body =~ /Dan Tester/
      e1_3 = page.body =~ /John Mulaney/
      expect(e1_1 < e1_2).to eq(true)
      expect(e1_2 < e1_3).to eq(true)
    end

    it 'should display comedians in sorted order by name' do
      visit '/comedians'
      click_on 'Sort by name'
      e2_3 = page.body =~ /Robin Williams/
      e2_2 = page.body =~ /Dan Tester/
      e2_1 = page.body =~ /John Mulaney/
      expect(e2_1 < e2_2).to eq(true)
      expect(e2_2 < e2_3).to eq(true)
    end

    it 'should display comedians in sorted order by city' do
      visit '/comedians'
      elf = Comedian.create(first_name: "Elf", last_name: "Man", age: 36, city: "Berlington")
      Special.create(title: "The Comeback Kid", length: (10 * 60), comedian_id: elf.id, pic_url: "placeholder_j1.jpg")

      click_on 'Sort by city'
      e3_1 = page.body =~ /Robin Williams/
      e3_3 = page.body =~ /Dan Tester/
      e3_4 = page.body =~ /John Mulaney/
      e3_2 = page.body =~ /Elf Man/
      expect(e3_1 < e3_2).to eq(true)
      expect(e3_2 < e3_3).to eq(true)
      expect(e3_3 < e3_4).to eq(true)
    end

    it 'should display comedians in sorted order by age' do
      visit '/comedians'
      click_on 'Sort by age'
      e4_3 = page.body =~ /Robin Williams/
      e4_1 = page.body =~ /Dan Tester/
      e4_2 = page.body =~ /John Mulaney/
      expect(e4_1 < e4_2).to eq(true)
      expect(e4_2 < e4_3).to eq(true)
    end
  end
end
