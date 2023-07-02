package peoplefinder.DELETE.api.users.__id

import future.keywords.in
import data.peoplefinder.directory

default allowed = false
default visible = false
default enabled = false

allowed {
	directory.is_in_group(input.user.key, "admin")
}

visible {
	allowedRoles := {"editor", "admin"}
  	some x in allowedRoles
	directory.is_in_group(input.user.key, x)}

enabled {
	allowed
}
