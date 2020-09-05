class TodoList < ApplicationRecord
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  belongs_to :user

  validates_presence_of :name
end