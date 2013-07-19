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

users[0].roles << [ roles[0], roles[2] ]
users[1].roles << [ roles[1] ]
users[2].roles << [ roles[0] ]