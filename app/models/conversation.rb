class Conversation < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: "User"
  belongs_to :recipient, :foregn_key => :recipient_id, class_name: "User"

  has_many :messags, dependent: :destroy
end
