Paloma.controller('Todos', {
  index: function() {
    var $tbody = $('tbody');

    $("form").on("ajax:success", function(e, data, status, xhr) {
      var html = template()(data);
      $tbody.append(html);
      $("form")[0].reset();
    });

    function template() {
      return _.template($("#todo-template").html());
    }
  }
})