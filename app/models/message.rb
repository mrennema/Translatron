class Message < ActiveRecord::Base
  validates :text, presence: true, length: { minimum: 2 }
  belongs_to :receiver, class_name: :user 
  belongs_to :sender, class_name: :user
end
