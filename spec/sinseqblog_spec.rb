require 'spec_helper'
require_relative '../sinseqblog'

Capybara.app = sinseqblog

feature 'User can interact with anonymous posts' do
  scenario 'User can add anonymous posts' do
    visit '/'
    sinseq_blog = 'Hello world.'
    expect(page).to have_no_content(love_note)
    fill_in 'Post', with: sinseq_blog
    click_on 'Send post'
    expect(page).to have_content(love_note)
  end
end
