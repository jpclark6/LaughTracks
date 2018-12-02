RSpec.describe 'New comedian page' do
  context 'as a visitor' do
    it 'should have the content for new comedian' do
      visit '/comedians/new'
      expect(page).to have_content('Add new comedian:')
    end

    it 'should save new comedians in the database' do
      visit '/comedians'
      click_on 'Add new comedian'

      expect(current_path).to eq('/comedians/new')
      
      first_name = "Newguy"
      last_name = "That"
      city = "Nowhere"
      age = "104"

      fill_in 'comedian[first_name]', with: first_name
      fill_in 'comedian[last_name]', with: last_name
      fill_in 'comedian[city]', with: city
      fill_in 'comedian[age]', with: age
      click_button 'Submit'

      expect(current_path).to eq('/comedians')
      expect(page).to have_content("#{first_name} #{last_name}")
    end
  end
end
