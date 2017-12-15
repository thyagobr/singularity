$(document).on 'turbolinks:load', (data) ->
  @toggle_task_details_for = (task_id) ->
    @selector = $('#task_details_' + task_id)
    @target_display = if @selector.css('display') == 'none' then 'block' else 'none'
    @selector.css('display', @target_display)
