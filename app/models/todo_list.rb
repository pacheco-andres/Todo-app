class TodoList < ApplicationRecord
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
  belongs_to :user

  validates_presence_of :name

  def to_csv
    attributes = %w{todo_list_name task_description completed created_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      tasks.each do |task|
        csv << [name, task.description, task.completed, task.created_at]
      end
    end
  end
end