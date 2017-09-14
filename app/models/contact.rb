class Contact < ApplicationRecord
  validates :name, presence: true
  validates :message, presence: true, length: { maximum: 150, minimum: 3 }
end
