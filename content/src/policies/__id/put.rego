package peoplefinder.PUT.api.users.__id

# Policy for updating an employee's phone number in PeopleFinder
#
# The user is Allowed if:
# - User is an admin
# - OR The logged-in user is the same as the employee being updated
#
# The "Edit" button is Visible if:
# - True
#
# The "Edit" button is Enabled if:
# - True

import data.peoplefinder.directory

default allowed := false
default visible := true
default enabled := true

# Check the Aserto Directory to see if the user is an "admin"
allowed if {
	directory.is_in_role(input.user, "admin")
}

# Check if the logged-in user is the same as the employee being updated
allowed if {
	input.user.key == input.resource.id
}

