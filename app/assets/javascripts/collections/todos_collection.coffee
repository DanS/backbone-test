class Railstart.Collections.Todos extends Backbone.Collection
  model: Railstart.Models.Todo
  url: "/todos"
  comparator: (todo) ->
    todo.get('priority')
  parse: (res) ->
    res.response.todos