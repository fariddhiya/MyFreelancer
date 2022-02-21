class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_one_attached :attachment_file

  validates :title, presence: { message: "Title cannot be blank" }
  validates :description, presence: { message: "Description cannot be blank" }
  validates :delivery, numericality: { only_integer: true, message: "Delivery must be a number" }
  
end
