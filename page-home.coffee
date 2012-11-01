if Meteor.isClient is true

	Template['page-home'].events =
		'click .action-signin': ->
			Meteor.loginWithPassword
				username: $('.data-username').val()
				$('.data-password').val()
				(response) ->
					console.log response

		'click .action-signup': ->
			Accounts.createUser
				username: $('.data-username').val()
				password: $('.data-password').val()
				(response) ->
					console.log response
