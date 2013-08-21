require 'spec_helper'

feature 'Uploading Photos' do

  before do
    visit '/'
  end

  scenario "can upload a photo" do
    click_link 'Upload Photos'
    click_link "Choose File"
    attach_file "map", File.expand_path('spec/fixtures/map.png')
    click_link "Create Photo"
    within("#photos") {page.should have_content("map.png")}
  end

end
