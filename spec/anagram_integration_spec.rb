require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('user will put words into the sentence to check to see if it is an anagram of the original word', {:type => :feature}) do
  it('takes the original word and checks it against all words') do
    visit('/')
    fill_in('originalword', with: 'cat')
    fill_in('sentence', with: 'act tac the happy')
    click_button('Send')
    expect(page).to have_content("act tac are anagrams of cat")
  end
end
