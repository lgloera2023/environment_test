# location: spec/unit/unit_spec.rb
require 'rails_helper'
require 'date'

RSpec.describe Book, type: :model do
  subject do
    described_class.new
  end

  it 'has valid title' do
    subject.title = "Harry Potter"
    expect(subject.title).to eq('Harry Potter')
  end

  it 'has valid author' do
    subject.author = "J.K. Rowling"
    expect(subject.author).to eq('J.K. Rowling')
  end

  it 'has valid price' do
    subject.price = 20.23
    expect(subject.price).to eq(20.23)
  end

  it 'has valid date' do
    subject.publishedDate = Date.new(1997,6,26)
    expect(subject.publishedDate).to eq(Date.new(1997,6,26))
  end
end