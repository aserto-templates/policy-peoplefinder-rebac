package peoplefinder.DELETE.api.users.__id

# Policy for deleting an employee in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
#
# The "Delete" button is Visible if:
# - User is an editor or an admin
#
# The "Delete" button is Enabled if:
# - Allowed is true

import future.keywords.in
import data.peoplefinder.directory

default allowed = false
default visible = false
default enabled = false

# Check the Aserto Directory to see if the user is an "admin"
allowed {
	directory.is_in_role(input.user, "admin")
}

# Check the Aserto Directory to see if the user is an "editor" or "admin"
visible {
	allowedRoles := {"editor", "admin"}
  	some x in allowedRoles
	directory.is_in_role(input.user, x)}

# Enabled is set to the result of the Allowed decision
enabled {
	allowed
}
