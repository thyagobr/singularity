$(document).on('turbolinks:load', function (data) {

  $(document).on('click', '.task-box', function(event) {
    var task_is_selected = this.classList.contains('task-selected');
    console.log(task_is_selected);
    if (task_is_selected) {
      this.classList.remove('task-selected')
    } else {
      this.classList.add('task-selected')
    }
  })

});

