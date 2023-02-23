$(document).on('ajax:complete', '#random_id', function(event, data, status, xhr) {
  // response will come underneath of ‘data’ variable
  var response = data.random_param_name;
  alert("Response is => " + response)
});
