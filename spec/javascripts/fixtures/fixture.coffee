beforeEach ->
  @.fixtures = {
    Todos:
      valid:
        status: "OK"
        version: "1.0"
        response:
          todos: [
           id: 1
           title: "Destroy Alderaan"
           priority: 1
           done: true
          ,
            id: 2
            title: "Find Princess Leia"
            priority: 1
            done: true
          ,
            id: 3
            title: "Groceries"
            priority: 2
            done: false
          ,
            id: 4
            title: "Close exhaust port"
            priority: 3
            done: false
          ]
  }