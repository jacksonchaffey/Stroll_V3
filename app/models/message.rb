class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  #Message must contain text, a conversation to belong to and the writing users' id.
  validates_presence_of :body, :conversation_id, :user_id

  private
  def message_time
    created_at.strftime("%d/%m/%y at %l:%M %p")
  end
end
