class SharedHistory < ApplicationRecord
  belongs_to :appointment

  belongs_to :owner_user, foreign_key: 'owner_user_id', class_name: 'User'
  belongs_to :shared_user, foreign_key: 'shared_user_id', class_name: 'User'

  validates :expiration_date, :shared_user_id, :owner_user_id, :appointment_id, presence: true
end
