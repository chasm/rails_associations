# Let's delete all the old roles and users. Because we have added
# "dependent: :destroy" to the user-telephone association, deleting
# the users will delete all associated telephones.
Role.destroy_all
User.destroy_all

# Create and save three users.
users = User.create([
  { name: "Chas." },
  { name: "Bono" },
  { name: "Enddy" }
])

# Create and save three roles.
roles = Role.create([
  { name: "Admin" },
  { name: "User" },
  { name: "Enddy" }
])

# Associate the users with particular roles in a
# many-to-many relationship.
users[0].roles << [ roles[0], roles[2] ]
users[1].roles << [ roles[1] ]
users[2].roles << [ roles[0] ]