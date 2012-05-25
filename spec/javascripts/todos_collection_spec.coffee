describe "todos", ->
  describe 'when instantiated with model literal', ->
    beforeEach ->
      @.todoStub = sinon.stub(window.Railstart.Models, 'Todo')
      @.model = new Backbone.Model({id:5, title: 'Foo'})
      @.todoStub.returns(@.model)
      @.todos = new Railstart.Collections.Todos()
      @.todos.model = Railstart.Models.Todo
      @.todos.add({id:5, title: 'Foo'})

    afterEach ->
      @.todoStub.restore()

    it "adds a model", ->
      expect(@.todos.length).toEqual(1)

    it "finds a model by id", ->
      expect(@.todos.length).toEqual(1)

  describe "priority", ->
    beforeEach ->

      @.todos = new Railstart.Collections.Todos()

      @.todo1 = new Backbone.Model({
        id: 1,
        title: "Todo 1",
        priority: 3
      })

      @.todo2 = new Backbone.Model({
        id: 2,
        title: "Todo 2",
        priority: 2
      })

      @.todo3 = new Backbone.Model({
        id: 3,
        title: "Todo 3",
        priority: 1
      })

    it "should order models by priority", ->
      @.todos.add([@.todo1, @.todo2, @.todo3])
      expect(@.todos.at(0)).toBe(@.todo3)
      expect(@.todos.at(1)).toBe(@.todo2)
      expect(@.todos.at(2)).toBe(@.todo1)