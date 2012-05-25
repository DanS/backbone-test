class Railstart.Collections.Todos extends Backbone.Collection
  model: Railstart.Models.Todo,
  comparator: (todo) ->
    todo.get('priority')