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

# Create UserRoles to associate users with roles for a set
# period of effectiveness (as indicated by starts_on and ends_on).
user_roles = UserRole.create([
  {
    user: users[0],
    role: roles[0],
    starts_on: Date.today,
    ends_on: (Date.today + 7.weeks)
  }
])