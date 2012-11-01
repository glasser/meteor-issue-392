Meteor.methods

	updateUserProfile: (data) ->
		Meteor.users.update({ _id: this.userId }, { $set: { profile: data } })
