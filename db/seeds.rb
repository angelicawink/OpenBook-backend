# This file should contain all the record createion needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "carowink91")
User.create(username: "morganr287")


Feeling.create(name: "absolutely horrible", rank: 1)
Feeling.create(name: "terrible", rank: 2)
Feeling.create(name: "very bad", rank: 3)
Feeling.create(name: "bad", rank: 4)
Feeling.create(name: "a bit off", rank: 5)
Feeling.create(name: "okay", rank: 6)
Feeling.create(name: "good", rank: 7)
Feeling.create(name: "very good", rank: 8)
Feeling.create(name: "great", rank: 9)
Feeling.create(name: "excellent", rank: 10)
Feeling.create(name: "absolutely amazing", rank: 11)

Moment.create(user_id: 1, feeling_id: 10)
Moment.create(user_id: 1, feeling_id: 8)
Moment.create(user_id: 1, feeling_id: 5)
Moment.create(user_id: 1, feeling_id: 1)
Moment.create(user_id: 1, feeling_id: 8)

Entry.create(user_id: 1, content: "I don't feel like I'm getting anything done. School is terrible and I feel totally useless")
Entry.create(user_id: 1, content: "Feeling pissed at Claire, really wish she would leave me the fuck alone. Trying to breathe....")
Entry.create(user_id: 1, content: "Really proud of the homework I got done today. Did my best!")
Entry.create(user_id: 1, content: "Nervous about the meeting tomorrow. I always fumble my words and say something moronic. Have to keep it TOGETHER!!!!")
Entry.create(user_id: 1, content: "Feeling optimistic about this Mexico trip. Honestly I've never been a good traveller, but I think Paul will make it fun.")

Entry.create(user_id: 2, content: "I've been getting a lot of anxiety about talking to my boss. He's not very amenable to discussion and I feel like I'll just crumble and won't be able to deliver everything I've practiced.")
Entry.create(user_id: 2, content: "Honestly feel like I'm gonna jump out a window if this truck beeping doesn't stop soon. It's been 3 days now and it's giving me anxiety.")
Entry.create(user_id: 2, content: "Trying not to hate my sorority sisters, but Sara and Colleen are acting like childish dictators. It's pathetic and now I frnakly don't want to have anything to do with planning the dumb homecoming post-party on Saturday. So they can just deal.")
