require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count execution path', {:type => :feature}) do

  it('counts how many times a word occurs in a text') do
    visit('/')
    fill_in('sentence', :with => 'made of wax')
    fill_in('word', :with => 'wax')
    click_button('Count')
    expect(page).to have_content('1')
  end

end
