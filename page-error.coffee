if Meteor.isClient is true

	Template['module-user-profile'].user = ->
		Meteor.user()

	Template['module-user-profile-form'].events =
		'click .action-update-user-profile': ->
			profile =
				name: $('.data-profile-name').val()
			Meteor.call 'updateUserProfile', profile
