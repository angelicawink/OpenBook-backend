# This file should contain all the record createion needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "carowink91", password: "carowink")
User.create(username: "morganr287", password: "morganr")
User.create(username: "caw400", password: "caw")



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

Setting.create(name: "at work")
Setting.create(name: "outdoors")
Setting.create(name: "exercising")
Setting.create(name: "downtime")
Setting.create(name: "socializing")
Setting.create(name: "with family")
Setting.create(name: "with significant other")
Setting.create(name: "other")


Moment.create(user_id: 1, feeling_id: 10, setting_id: 1)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 3)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 6)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 5)
Moment.create(user_id: 1, feeling_id: 7, setting_id: 6)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 8)

Moment.create(user_id: 1, feeling_id: 5, setting_id: 1)
Moment.create(user_id: 1, feeling_id: 1, setting_id: 1)
Moment.create(user_id: 1, feeling_id: 9, setting_id: 5)
Moment.create(user_id: 1, feeling_id: 1, setting_id: 4)
Moment.create(user_id: 1, feeling_id: 10, setting_id: 1)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 3)
Moment.create(user_id: 1, feeling_id: 3, setting_id: 6)
Moment.create(user_id: 1, feeling_id: 8, setting_id: 5)
Moment.create(user_id: 1, feeling_id: 7, setting_id: 6)
Moment.create(user_id: 1, feeling_id: 2, setting_id: 8)

Moment.create(user_id: 1, feeling_id: 5, setting_id: 8)
Moment.create(user_id: 1, feeling_id: 7, setting_id: 2)
Moment.create(user_id: 1, feeling_id: 3, setting_id: 5)
Moment.create(user_id: 1, feeling_id: 4, setting_id: 4)

Moment.create(user_id: 1, feeling_id: 8, setting_id: 7)
Moment.create(user_id: 1, feeling_id: 7, setting_id: 7)
Moment.create(user_id: 1, feeling_id: 10, setting_id: 7)
Moment.create(user_id: 1, feeling_id: 4, setting_id: 4)


Moment.create(user_id: 2, feeling_id: 10, setting_id: 1)
Moment.create(user_id: 2, feeling_id: 8, setting_id: 3)
Moment.create(user_id: 2, feeling_id: 5, setting_id: 1)

Entry.create(user_id: 1, private: false, content: "I don't feel like I'm getting anything done. School is terrible and I feel totally useless")
Entry.create(user_id: 1, private: true, content: "Feeling pissed at Claire, really wish she would leave me the fuck alone. Trying to breathe....")
Entry.create(user_id: 1, private: false, content: "Really proud of the homework I got done today. Did my best!")
Entry.create(user_id: 1, private: false, content: "Nervous about the meeting tomorrow. I always fumble my words and say something moronic. Have to keep it TOGETHER!!!!")
Entry.create(user_id: 1, private: true, content: "Feeling optimistic about this Mexico trip. Honestly I've never been a good traveller, but I think Paul will make it fun.")

Entry.create(user_id: 2, private: false, content: "I've been getting a lot of anxiety about talking to my boss. He's not very amenable to discussion and I feel like I'll just crumble and won't be able to deliver everything I've practiced.")
Entry.create(user_id: 2, private: false, content: "Honestly feel like I'm gonna jump out a window if this truck beeping doesn't stop soon. It's been 3 days now and it's giving me anxiety.")
Entry.create(user_id: 2, private: false, content: "Trying not to hate my sorority sisters, but Sara and Colleen are acting like childish dictators. It's pathetic and now I frnakly don't want to have anything to do with planning the dumb homecoming post-party on Saturday. So they can just deal.")


Entry.create(user_id: 2, private: false, content: "I've been feeling pretty excited about this weekend. I can't wait to see Rick and the whole group. I feel like I'm gonna get nervous speaking to Chelsey, but I'm just going to keep doing my meditations and I guess probably take that ridiculous Mantra book along with me...lol")
Entry.create(user_id: 2, private: false, content: "So we're have the funeral service for Grandma this weekend. I feel like I already did my mourning, but I know Mom is stressed about delivering some kind of Eulogy. I'm just trying to support her and help her focus on what she WANTS to say, rather than try and write *what a eulogy is supposed to sound like*...whatever that means.")
Entry.create(user_id: 2, private: false, content: "I've been getting so frustrated at work. I literally went into the handicap bathroom so I had a place to sit down and weep. I don't know what's wrong with me sometimes. I feel so stressed out and overwhelmed and like nothing will ever be enough. I know that's pretty negative to say, but it's just how I feel and I frankly am tired of trying to pretend to feel something better.")
Entry.create(user_id: 2, private: false, content: "Today was actually really great. I dont know why but sometimes I just get into this flow at work and really get a ton of stuff done AND I ENJOY IT! Maybe my family was right and I just needed time to adapt and kind of get to know people. Whatever it is, I feel much better among my coworkers now.")
Entry.create(user_id: 2, private: false, content: "I've had a hard time expressing myself. I think I'm pretty depressed at the moment. It's been 3 months since I stopped medication and I don't know if I should go back on the meds or not. I have make an appointment with my therapist in the morning I guess.")
Entry.create(user_id: 2, private: false, content: "I'm not feeling terribly depressed anymore. Kind of ups and downs, but mostly ups. I've been doing more yoga with Justine and really focusing on journaling and stuff every day. I definitely wouldn't say I feel 'happy', but i'm not feeling hopeless or desparing anymore either. I can see the light at the end of whatever tunnel, you know, which is the main difference.")
Entry.create(user_id: 2, private: false, content: "My coworkers are actually being super sweet to me. They threw this whole birthday party for me, I was totally suprirsed and frankly really embarassed in the moment, but I love that they did it. I don't even care if they really like me or not, it was a great gesture lol and I'll take it.")
Entry.create(user_id: 2, private: false, content: "Oh my god I can't believe it. I think I just got my dad to say he loves me.....I mean, I've only been telling him that was important for me to hear for like, what, the past year??? But he actually said it today. God. It's insane to realize sometimes that those things that seem impossible to ask for, impossible to say, like 'it's really important for me to verbally hear that you love me', IS ACTUALLY SAYABLE. These things don't have to exist in my head forever, i can actually communicate them to people, and maybe even get an anwer. Jesus. This feels very good haha")
Entry.create(user_id: 2, private: false, content: "I just shake this feeling like everyone else is living this effortless, thoughtless life. I look around the room and no one seems all caught in their heads like I do every waking second of the day. It makes me feel artificial, and depersonalized. Like I'm not actually ever living my life but just watching it and commenting on it, while other people get to actually be IN their life. It's so hard to feel like I'm not the only one...")

SavedEntry.create(user_id: 1, entry_id: 9, title: "Motivating!!")
SavedEntry.create(user_id: 1, entry_id: 17, title: "When I'm feeling isolated")
SavedEntry.create(user_id: 1, entry_id: 16, title: "Inspiring")
SavedEntry.create(user_id: 1, entry_id: 15, title: "Sweet")
SavedEntry.create(user_id: 1, entry_id: 13, title: "It's not just me <3")
