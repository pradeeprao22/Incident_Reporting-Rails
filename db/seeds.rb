# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

District.create(name: "Amravati")
School.create(name: "GHI School", district_id: "1")
Incident.create(details: "This is just another example post", attachment: "example.png", school_id: "1")
Tag.create(name: "Alcohol")
Tag.create(name: "Assault")
Tag.create(name: "Bullying")
Tag.create(name: "Hazing")
Tag.create(name: "Drugs")
Tag.create(name: "Graffiti")
Tag.create(name: "Injury")
Tag.create(name: "Suspicious activity")
Tag.create(name: "Trespassing")
Tag.create(name: "Vandalism")
Tag.create(name: "Weapons violation")
Tag.create(name: "Technology misuse")