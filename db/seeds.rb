Role.destroy_all
User.destroy_all

users = User.create([
  { name: "Chas." },
  { name: "Bono" },
  { name: "Enddy" }
])

roles = Role.create([
  { name: "Admin" },
  { name: "User" },
  { name: "Enddy" }
])

user_roles = UserRole.create([
  {
    user: users[0],
    role: roles[0],
    starts_on: Date.today,
    ends_on: (Date.today + 7.weeks)
  }
])