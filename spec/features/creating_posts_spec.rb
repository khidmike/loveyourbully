require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/bully.jpg")
    fill_in 'Caption', with: 'my best buddy #whosagoodboy'
    click_button 'Create Post'
    expect(page).to have_content('#whosagoodboy')
    expect(page).to have_css("img[src*='bully.jpg']")
  end

  scenario 'no image attached' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: 'my best buddy #whosagoodboy'
    click_button 'Create Post'
    expect(page).to have_content('Error: You must include an image with your post.')
  end

end
