describe 'Todo model', ->

  beforeEach ->
    @.todo = new Railstart.Models.Todo(title: 'Rake leaves')

  describe 'when instantiated', ->

    it 'should exhibit attributes', ->
      expect(@.todo.get('title')).toEqual('Rake leaves')

    it 'sets the priority to 3', ->
      expect(@.todo.get('priority')).toEqual(3)

  describe "url", ->
    beforeEach ->
      collection = { url: "/collection" }
      @.todo.collection = collection

    describe "when no id is set", ->
      it "should return the collection URL", ->
        expect(@.todo.url()).toEqual("/collection")

    describe "when id is set", ->
      it "should return the collection URL and id", ->
        @.todo.id = 1
        expect(@.todo.url()).toEqual("/collection/1")

      it "should not save when title is empty", ->
        @.eventSpy = sinon.spy()
        @.todo.bind("error", @.eventSpy)
        @.todo.save({title: ""})
        expect(@.eventSpy).toHaveBeenCalledOnce()
        expect(@.eventSpy).toHaveBeenCalledWith(@.todo, 'cannot have an empty title')