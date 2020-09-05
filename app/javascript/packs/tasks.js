$(document).on('click', '.add-task', function(e) {
  e.preventDefault();
  appendElement();
});

function appendElement() {
  var task = document.getElementsByClassName('task-description')[0];
  var index = document.getElementById('task_index');
  if (task.value) {
    var id = `todo_list_tasks_attributes_${index.value}_description`;
    var name = `todo_list[tasks_attributes][${index.value}][description]`;
    $('.tasks-container').append(`<div class='task'> \
                                       <li class='element'>${task.value}</li> \
                                       <div class='delete task--delete'></div> \
                                       <input type="hidden" id='${id}' name='${name}' value='${task.value}'></input>
                                     </div>`);
    index.value = parseInt(index.value) + 1;
    task.value = ''
  }
}

$(document).on('click', '.task--delete', function() {
  $(this).closest('.task').remove();
});