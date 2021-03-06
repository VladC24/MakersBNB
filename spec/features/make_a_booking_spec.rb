require 'spec_helper'

require_relative '../helpers/helpers'

feature 'requests' do
  scenario 'a user can see a space in detail' do
    sign_up
    list_space
    click_link('spaceID_1')
    expect(page).to have_content 'Comfortable warm bed, double room.'
    expect(page).to have_button 'Request to book'
  end

  scenario 'a user can request to book a space' do
    sign_up
    list_space
    book_space
    expect(page).to have_content 'Booking request has been sent.'
  end
end
