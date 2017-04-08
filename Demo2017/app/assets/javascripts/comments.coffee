$(document).on 'turbolinks:load', ->
  comments = $('#comments')
  window.comments_to_bottom = ->
    comments.scrollTop(comments.prop("scrollHeight"))
  comments_to_bottom() if comments.length > 0