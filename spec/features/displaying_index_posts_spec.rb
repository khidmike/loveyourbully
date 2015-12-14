require 'rails_helper.rb'


  feature 'Displaying posts index' do
    scenario 'view index' do
      job_one = create(:post, caption: "Post 1")
      job_two = create(:post, caption: "Post 2")

      visit '/'
      expect(page).to have_content("Post 1")
      expect(page).to have_content("Post 2")
      expect(page).to have_css("img[src*='bully']")
    end
  end
