module ApplicationHelper
  def activity_time_for_task(task_id)
    elapsed_seconds = Activity.where(task_id: task_id).reduce(0) do |memo, activity|
      memo += activity.finished_at - activity.started_at
    end.to_i
    result = []
    minutes, seconds = elapsed_seconds.divmod(60)
    result << "#{seconds} segundos"
    if minutes > 0
      result << "#{minutes} minutos"
      hours, minutes = minutes.divmod(60)
      if hours > 0
        result << "#{days} hours"
        days, hours = hours.divmod(24)
        result << "#{days} dias" if days > 0
      end
    end
    result.reverse.join(", ")
  end
end
