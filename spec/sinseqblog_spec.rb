require 'spec_helper'
require_relative '../Sinseqblog'

Capybara.app = Sinseqblog

feature 'things manager' do
  scenario 'User creates new things' do
    visit '/'
    fill_in 'Post', with: "things"
    click_on 'Send post'
  end
end
