package peoplefinder.directory

# Functions for ReBAC
#
# is_manager_of() - Uses the directory to check if the user is the manager of the employee
# is_in_role() - Checks if the user has the supplied role

# Uses the Aserto Directory to determine if the user is the manager or up the management chain of the employee
is_manager_of(user_id, employee_id) {
	ds.check({
		"object_type": "user",
		"object_id": employee_id,
		"relation": "in_management_chain",
		"subject_type": "user",
		"subject_id": user_id
	})
}

# Checks if the role is present in the user properties provided by Aserto
is_in_role(user,role) {
    role = user.properties.roles[_]
}
