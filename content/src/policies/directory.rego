package peoplefinder.directory

is_in_group(user, group) {
	ds.check_relation({
		"subject": {
			"type": "user",
			"key": user
		},
		"relation": {
			"object_type": "group",
			"name": "member"
		},
		"object": {
			"type": "group",
			"key": group
		}
	})
}

is_manager_of(user_id, employee_id) {
	ds.check_relation({
		"subject": {
			"type": "user",
			"key": employee_id
		},
		"relation": {
			"object_type": "user",
			"name": "manager"
		},
		"object": {
			"type": "user",
			"key": user_id
		}
	})
}