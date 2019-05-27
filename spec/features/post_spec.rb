require 'rails_helper'

describe 'navigate' do
  describe 'index' do
    it 'can be reached successfully' do
      visit posts_path
      expect(page.status_code).to eq(200)
    end
    it "has a title of posts " do
      visit posts_path
      expect(page).to have_content(/Posts index/)
    end
  end 

  describe 'creation' do
    before do 
      visit new_post_path
    end
    it 'can reach new form' do
      expect(page.status_code).to eq(200)
    end
    it 'can be created on new form page' do 
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "rationale"
      click_on "Save"
      expect(page).to have_content("rationale")
    end
  end 
end