class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true, length: { maximum: 150, minimum: 3 }

  after_create :send_email

  private
    def send_email
      ContactMailer.contact_email(self).deliver
    end
end
