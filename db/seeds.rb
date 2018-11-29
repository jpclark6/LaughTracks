require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

robin = Comedian.create(first_name: "Robin", last_name: "Williams", age: 63, city: "Chicago")
Special.create(title: "HBO Comedy Hour", length: (53 * 60 + 30), comedian_id: robin.id, pic_url: "https://pmcvariety.files.wordpress.com/2018/01/18247-1-1100.jpg")
Special.create(title: "Comic Relief 5", length: (4 * 60 * 60), comedian_id: robin.id, pic_url: "https://images-na.ssl-images-amazon.com/images/I/21CQTGDA51L.jpg")
Special.create(title: "The Big Laff Off", length: (52 * 60), comedian_id: robin.id, pic_url: "https://images-na.ssl-images-amazon.com/images/I/51LAogZYHOL.jpg")
Special.create(title: "Comic Relief VII", length: (4 * 60 * 60), comedian_id: robin.id, pic_url: "https://images-na.ssl-images-amazon.com/images/I/412MDX0X85L.jpg")

john = Comedian.create(first_name: "John", last_name: "Mulaney", age: "36", city: "Chicago")
Special.create(title: "The Comeback Kid", length: ((60 + 2) * 60), comedian_id: john.id, pic_url: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg")
Special.create(title: "New In Town", length: (60 * 60), comedian_id: john.id, pic_url: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_.jpg")
Special.create(title: "Crashing", length: (30 * 60), comedian_id: john.id, pic_url: "https://cdn.pastemagazine.com/www/articles/CrashingS2Main.jpg")

Comedian.create(first_name: "Mike", last_name: "Birbiglia", age: "40", city: "Shrewsbury")
Special.create(title: "Sleepwalk With Me", length: (81 * 60), comedian_id: 3, pic_url: "https://images-na.ssl-images-amazon.com/images/I/91vzyOcSXDL._SL1500_.jpg")
Special.create(title: "Premium Blend", length: (30 * 60), comedian_id: 3, pic_url: "https://m.media-amazon.com/images/M/MV5BNjkzODM2MTcxN15BMl5BanBnXkFtZTgwNDQwNDgwMzE@._V1_.jpg")
Special.create(title: "Mike Birbiglia's Secret Public Journal", length: (102 * 60), comedian_id: 3, pic_url: "https://images-na.ssl-images-amazon.com/images/I/61nyOHux09L.jpg")
Special.create(title: "This American Life Live!", length: (90 * 60), comedian_id: 3, pic_url: "https://m.media-amazon.com/images/M/MV5BYTExMTFlOGEtZTExNi00YWYyLTg3YjEtYWVmOTgzMjlkZDA2XkEyXkFqcGdeQXVyNjc1NjY1Mg@@._V1_SY1000_CR0,0,601,1000_AL_.jpg")

Comedian.create(first_name: "Sarah", last_name: "Silverman", age: "47", city: "Bedford")
Special.create(title: "Dying Laughing", length: (89 * 60), comedian_id: 4, pic_url: "https://m.media-amazon.com/images/M/MV5BMjQyMTY0NzMwOF5BMl5BanBnXkFtZTgwNjUzNzg4MDI@._V1_SY1000_CR0,0,674,1000_AL_.jpg")
Special.create(title: "Supermarket", length: (12 * 60), comedian_id: 4, pic_url: "https://m.media-amazon.com/images/M/MV5BYTYyMTVhNzYtNjYwYS00YjcwLTk0MzMtNzc1MzA4MTBjMmQxXkEyXkFqcGdeQXVyMTI4NTcwNTA@._V1_.jpg")
Special.create(title: "We Are Miracles", length: (54 * 60), comedian_id: 4, pic_url: "https://www.hbo.com/content/dam/hbodata/comedy/sarah-silverman-we-are-miracles/video-stills/conversations-1920.jpg/_jcr_content/renditions/cq5dam.web.1200.675.jpeg")

#
# Comedian.create(first_name: "", last_name: "", age: "", city: "5")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "6")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "7")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "8")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "9")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "10")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "11")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#
# Comedian.create(first_name: "", last_name: "", age: "", city: "12")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
# Special.create(title: "", length: "", comedian_id: "")
#

#run rake db:seed
#rake db:{drop,create,migrate,seed} to delete everything and redo data

# OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES shotgun
