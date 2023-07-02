package peoplefinder.PUT.api.users.__id

import data.peoplefinder.directory

default allowed = false
default visible = true
default enabled = true

allowed {
	directory.is_in_group(input.user.key, "admin")
}

allowed {
	input.user.key == input.resource.id
}

