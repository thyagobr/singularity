module ApplicationHelper
  def activity_time_for_task(task_id)
    elapsed_seconds = Activity.where(task_id: task_id).where.not(finished_at: nil).reduce(0) do |memo, activity|
      memo += activity.finished_at - activity.started_at
    end.to_i
    result = []
    minutes, seconds = elapsed_seconds.divmod(60)
    result << "#{seconds} segundos"
    if minutes > 0
      hours, minutes = minutes.divmod(60)
      result << "#{minutes} minutos"
      if hours > 0
        days, hours = hours.divmod(24)
        result << "#{hours} horas"
        result << "#{days} dias" if days > 0
      end
    end
    result.reverse.join(", ")
  end
end
