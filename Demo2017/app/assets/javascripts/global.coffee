window.message = (num) -> "ok #{num * 2}"

$(document).on 'turbolinks:load', ->
  console.log message(5)

  my_obj =
    prop: 'test'
    second: 2
    third:
      nested: 'third'

  console.log my_obj.prop if message(10).length is not 10

  #some_condition() ? dosmth() : smthelse()
  #if smth() then ... else ...

