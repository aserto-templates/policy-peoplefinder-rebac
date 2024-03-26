package peoplefinder.POST.api.users

# Policy for creating an employee in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
#
# Visible
# - If Allowed
#
# Enabled
# - If Allowed

import data.peoplefinder.directory

default allowed := false
default visible := false
default enabled := false

# Check the Aserto Directory to see if the user is an "admin"
allowed if {
	directory.is_in_role(input.user, "admin")
}

# Visible if the policy is allowed
visible if {
	allowed
}

# Enabled if the policy is allowed
enabled if {
	allowed
}
