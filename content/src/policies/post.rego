package peoplefinder.POST.api.users

import data.peoplefinder.directory

default allowed = false
default visible = false
default enabled = false

allowed {
	directory.is_in_group(input.user.key, "admin")
}

visible {
	allowed
}

enabled {
	allowed
}
