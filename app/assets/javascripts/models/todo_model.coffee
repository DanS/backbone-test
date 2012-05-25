class Railstart.Models.Todo extends Backbone.Model
  defaults:
    priority: 3

  validate: (attrs) ->
    if (!attrs.title)
      return "cannot have an empty title"