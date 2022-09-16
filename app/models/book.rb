class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :publishedDate, presence: true
    has_many :pages
end
