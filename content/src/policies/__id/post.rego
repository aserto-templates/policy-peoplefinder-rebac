package peoplefinder.POST.api.users.__id

import data.peoplefinder.directory

default allowed = false
default visible = true
default enabled = false

allowed {
	directory.is_in_group(input.user.key, "admin")
}

allowed {
	directory.is_manager_of(input.user.key, input.resource.id)
}

enabled {
	allowed
}
