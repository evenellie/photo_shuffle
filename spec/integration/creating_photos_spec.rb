require 'spec_helper'

feature 'Uploading Photos' do

  before do
    visit '/'
  end

  scenario "can upload a photo" do
    click_link 'Upload Photos'
    attach_file "Photo 1", File.expand_path('spec/fixtures/photo_1.jpg')
    within("#photos") {page.should have_content("photo_1.jpg")}
  end

end
