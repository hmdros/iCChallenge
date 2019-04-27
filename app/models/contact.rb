class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/,
                              message: 'E-mail format invalid' }
end
