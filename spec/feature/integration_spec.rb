# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
	scenario 'valid inputs' do
		visit new_book_path
		fill_in 'Title', with: 'hairry potter'
		fill_in 'Author', with: 'jk'
		fill_in 'Price', with: '4'
		select '2021', :from => 'book_published_date_1i'
		select 'January', :from => 'book_published_date_2i'
		select '22', :from => 'book_published_date_3i'
		click_on 'Create Book'
		visit books_path
		expect(page).to have_content('hairry potter')
		expect(page).to have_content('jk')
		expect(page).to have_content('4')
		expect(page).to have_content('2021-01-22')
	end
end