@Foo =
  bar: -> "baz"

describe "foo", ->
  it "Eequals baz", ->
    expect("baz").toEqual("baz")
