class Punch < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :user_punched, presence: true

end