class WeeklyReportMailer < ApplicationMailer
  def pending_tasks
    User.all.each do |user|
      todo_list_ids = user.todo_lists.ids
      not_completed_tasks = Task.where(todo_list_id: todo_list_ids).where(completed: false)
      if not_completed_tasks.count > 0
        @pending_tasks = not_completed_tasks
        mail(to: user.email, subject: 'Weekly report of not completed tasks')
      end
    end
  end
end
