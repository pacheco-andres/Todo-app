class WeeklyReport
  include Sidekiq::Worker

  def perform
    WeeklyReportMailer.pending_tasks.deliver_now
  end
end
