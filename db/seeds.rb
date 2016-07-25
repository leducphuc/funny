User.destroy_all
User.create! name: "Admin",
  email: "admin@gmail.com",
  password: "111111",
  password_confirmation: "111111",
  is_admin: true

Category.destroy_all
Category.create! name: "Juice"
