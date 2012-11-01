if Meteor.isClient is true
  render = (which) ->
    doc = Meteor.render Template[which]
    document.body.innerHTML = ''
    document.body.appendChild(doc)

  Meteor.startup ->
    render('page-home')

  Template['page-home'].someValue = ->
    return Session.get('someValue')

  Template['module-user-profile'].someValue = ->
    return Session.get('someValue')

  Template['module-user-profile-form'].events =
    'click .action-update-user-profile': ->
       Session.set('someValue', $('.data-profile-name').val())
