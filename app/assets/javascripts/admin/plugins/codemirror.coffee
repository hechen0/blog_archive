page_load = ->
  return if $('.codemirror-editor').length == 0
  editor = CodeMirror.fromTextArea $('.codemirror-editor').get(0),
    lineNumbers: true
    mode: 'gfm'

$(document).on('turbolinks:load', page_load)


