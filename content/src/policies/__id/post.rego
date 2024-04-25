package peoplefinder.POST.api.users.__id

# Policy for updating an employee's deparment and title in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
# - OR User is the manager or in the management chain of the employee
#
# The "Update" button is always Visible
#
# The "Update" button is enabled if:
# - Allowed is true

import data.peoplefinder.directory

default allowed = false
default visible = true
default enabled = false

# Check the Aserto Directory to see if the user is an "Admin"
allowed {
	directory.is_in_role(input.user, "admin")
}

# Check the Aserto Directory to see if the user is a manager or in the management chain
allowed {
	directory.is_manager_of(input.user.id, input.resource.id)
}

# Enabled is set to the result of the Allowed decision
enabled {
	allowed
}
