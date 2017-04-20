Team.delete_all
User.delete_all

dennis = User.create(email: "dennis@user.com", password: "abcd1234")
john = User.create(email: "john@user.com", password: "abcd1234")
bill = User.create(email: "bill@user.com", password: "abcd1234")

team1 = Team.create(date: "22/4/2017", member1_id: 1, member2_id: 2)
team2 = Team.create(date: "21/4/2017", member1_id: 1, member2_id: 3)
team3 = Team.create(date: "24/4/2017", member1_id: 2, member2_id: 3)
