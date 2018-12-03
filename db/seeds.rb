require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

aziz = Comedian.create(first_name: "Aziz", last_name: "Ansari", age: "35", city: "Columbia")
Special.create(title: "Looking For Work", length: (3 * 60), comedian_id: aziz.id, pic_url: "images/aziz_3.jpg")
Special.create(title: "Buried Alive", length: (80 * 60), comedian_id: aziz.id, pic_url: "images/aziz_1.jpg")
Special.create(title: "Dangerously Delicious", length: (61 * 60), comedian_id: aziz.id, pic_url: "images/aziz_2.jpg")
Special.create(title: "Master Of None", length: (30 * 60), comedian_id: aziz.id, pic_url: "images/aziz_4.jpg")

dave = Comedian.create(first_name: "Dave", last_name: "Chappelle", age: "45", city: "Washington DC")
Special.create(title: "Chappelle's Show", length: (30 * 60), comedian_id: dave.id, pic_url: "images/chappelle_1.jpg")
Special.create(title: "Block Party", length: (103 * 60), comedian_id: dave.id, pic_url: "images/chappelle_2.jpg")
Special.create(title: "HBO Comedy Half Hour", length: (30 * 60), comedian_id: dave.id, pic_url: "images/chappelle_3.jpg")
Special.create(title: "Half Baked", length: (82 * 60), comedian_id: dave.id, pic_url: "images/chappelle_4.jpg")

mike = Comedian.create(first_name: "Mike", last_name: "Birbiglia", age: "40", city: "Shrewsbury")
Special.create(title: "Sleepwalk With Me", length: (81 * 60), comedian_id: mike.id, pic_url: "images/m1.jpg")
Special.create(title: "Premium Blend", length: (30 * 60), comedian_id: mike.id, pic_url: "images/m2.jpg")
Special.create(title: "Mike Birbiglia's Secret Public Journal", length: (102 * 60), comedian_id: mike.id, pic_url: "images/m3.jpg")
Special.create(title: "This American Life Live!", length: (90 * 60), comedian_id: mike.id, pic_url: "images/m4.jpg")
Special.create(title: "Don't Think Twice", length: (92 * 60), comedian_id: mike.id, pic_url: "images/m5.jpg")

fred = Comedian.create(first_name: "Fred", last_name: "Armisen", age: "51", city: "Hattiesburg")
Special.create(title: "Portlandia", length: (30 * 60), comedian_id: fred.id, pic_url: "images/fred_1.jpg")
Special.create(title: "Documentary Now", length: (30 * 60), comedian_id: fred.id, pic_url: "images/fred_2.jpg")

russell = Comedian.create(first_name: "Russell", last_name: "Brand", age: 43, city: "Grays, Essex")
Special.create(title: "Messiah Complex", length: (80 * 60), comedian_id: russell.id, pic_url: "images/russell_1.jpg")
Special.create(title: "Russell Brand Live", length: (80 * 60), comedian_id: russell.id, pic_url: "images/russell_2.jpg")
Special.create(title: "Forgetting Sarah Marshall", length: (2 * 60 * 60), comedian_id: russell.id, pic_url: "images/russell_3.jpg")

name = Comedian.create(first_name: "Chris", last_name: "Rock", age: "53", city: "Andrews")
Special.create(title: "Roll The New", length: (57 * 60), comedian_id: name.id, pic_url: "images/chris_1.jpg")
Special.create(title: "Kill The Messenger", length: (79 * 60), comedian_id: name.id, pic_url: "images/chris_2.jpg")
Special.create(title: "Rock The Tamborine", length: (64 * 60), comedian_id: name.id, pic_url: "images/chris_3.png")
Special.create(title: "Bigger And Blacker", length: (68 * 60), comedian_id: name.id, pic_url: "images/chris_4.jpg")

name = Comedian.create(first_name: "Demitri", last_name: "Martin", age: "45", city: "New York City")
Special.create(title: "These Are Jokes", length: (70 * 60), comedian_id: name.id, pic_url: "images/d_1.jpg")
Special.create(title: "Important Things With Demitri Martin", length: (22 * 60), comedian_id: name.id, pic_url: "images/d_2.jpg")

name = Comedian.create(first_name: "Tig", last_name: "Notoro", age: "47", city: "Jackson")
Special.create(title: "Professor Blastoff", length: (60 * 2), comedian_id: name.id, pic_url: "images/tig_1.jpg")
Special.create(title: "Good One", length: (46 * 60), comedian_id: name.id, pic_url: "images/tig_2.jpg")

name = Comedian.create(first_name: "Mitch", last_name: "Hedberg", age: "37", city: "Livingston")
Special.create(title: "Strategic Grill Locations", length: (57 * 60), comedian_id: name.id, pic_url: "images/mitch_1.jpg")
Special.create(title: "Mitch All Together", length: (39 * 60), comedian_id: name.id, pic_url: "images/mitch_2.jpg")
Special.create(title: "Do You Believe In Gosh?", length: (39 * 60), comedian_id: name.id, pic_url: "images/mitch_3.jpg")

robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Chicago")
Special.create(title: "HBO Comedy Hour", length: (53 * 60 + 30), comedian_id: robin.id, pic_url: "images/r1.jpg")
Special.create(title: "Comic Relief 5", length: (4 * 60 * 60), comedian_id: robin.id, pic_url: "images/r2.jpg")
Special.create(title: "The Big Laff Off", length: (52 * 60), comedian_id: robin.id, pic_url: "images/r3.jpg")
Special.create(title: "Comic Relief VII", length: (4 * 60 * 60), comedian_id: robin.id, pic_url: "images/r4.jpg")

john = Comedian.create(first_name: "John", last_name: "Mulaney", age: "36", city: "Chicago")
Special.create(title: "The Comeback Kid", length: ((60 + 2) * 60), comedian_id: john.id, pic_url: "images/j1.jpg")
Special.create(title: "New In Town", length: (60 * 60), comedian_id: john.id, pic_url: "images/j2.jpg")
Special.create(title: "Crashing", length: (30 * 60), comedian_id: john.id, pic_url: "images/j3.jpg")

sarah = Comedian.create(first_name: "Sarah", last_name: "Silverman", age: "47", city: "Bedford")
Special.create(title: "Dying Laughing", length: (89 * 60), comedian_id: sarah.id, pic_url: "images/s1.jpg")
Special.create(title: "Supermarket", length: (12 * 60), comedian_id: sarah.id, pic_url: "images/s2.jpg")
Special.create(title: "We Are Miracles", length: (54 * 60), comedian_id: sarah.id, pic_url: "images/s2.jpg")




#run rake db:seed
#rake db:{drop,create,migrate,seed} to delete everything and redo data
# rake db:test:prepare

# OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES shotgun
