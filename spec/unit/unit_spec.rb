# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
	subject do
		described_class.new(title: 'harry potter', author: 'jk', price: '5', published_date: '2022-01-31')
	end

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without a name' do
		subject.title = nil
		expect(subject).not_to be_valid
	end 

	it 'is not valid without an author' do
		subject.author = nil
		expect(subject).not_to be_valid
	end

	it 'is not valid without a price' do
		subject.price = nil
		expect(subject).not_to be_valid
	end

	it 'is not valid without a published date' do
		subject.published_date = nil
		expect(subject).not_to be_valid
	end
end