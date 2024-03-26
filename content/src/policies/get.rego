package peoplefinder.GET.api.users

# Policy for retrieving the list of employees in PeopleFinder
#
# Retrieving the list of employees is always Allowed
# - True
#
# The list of employees is always Visible
# - True
#
# The list of employees is always Enabled
# - True

default allowed := true
default visible := true
default enabled := true
