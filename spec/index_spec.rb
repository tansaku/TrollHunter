require 'index'
require 'capybara/rspec'

Capybara.app = Sinatra::Application.new

feature 'Main page' do

  scenario 'shows the available dungeons' do
    visit('/')
    expect(page).to have_content("Click here to enter Land_of_trolls")
  end
end