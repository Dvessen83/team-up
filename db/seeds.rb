Team.delete_all
User.delete_all

dennis = User.create(email: "dennis@user.com", password: "abcd1234", name: "Dennis", admin: true)
john = User.create(email: "john@user.com", password: "abcd1234", name: "John", admin: false)
bill = User.create(email: "bill@user.com", password: "abcd1234", name: "Bill", admin: false)
peter = User.create(email: "peter@user.com", password: "abcd1234", name: "Peter", admin: false)
scott = User.create(email: "scott@user.com", password: "abcd1234", name: "Scott", admin: false)
richard = User.create(email: "richard@user.com", password: "abcd1234", name: "Richard", admin: false)
