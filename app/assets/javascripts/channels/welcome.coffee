App.welcome = App.cable.subscriptions.create "WelcomeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data['message']

  speak: (message)->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (e) ->
  if e.keyCode id 13 # return = send
    App.welcome.speak e.target.value
    e.target.value = ''
    e.preventDefault()