if Meteor.isClient is true

	render = (which) ->
                doc = Meteor.render Template[which]
                document.body.innerHTML = ''
                document.body.appendChild(doc)

	Meteor.startup ->
                render('page-home')
