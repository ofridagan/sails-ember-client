`import IndexRoute from "optibus/routes/index"`

describe "IndexRoute", ->
  Given -> @subject = new IndexRoute()
  When -> @result = @subject.model()
  Then -> expect(@result).toEqual(["red", "yellow", "blue"])
