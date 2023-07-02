package peoplefinder.POST.api.users

import data.peoplefinder.directory

default allowed = false
default visible = false
default enabled = false

allowed {
	allowedRoles := {"admin"}
  	some x in allowedRoles
	directory.is_in_group(input.user.key, x)
}

visible {
	allowed
}

enabled {
	allowed
}
