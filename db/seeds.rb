# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Comment.destroy_all
Following.destroy_all
Species.destroy_all

u1=User.create(username:"abril", password:"abc123")
u2=User.create(username:"gia", password:"abc123")
u3=User.create(username:"kevin", password:"abc123")

s1=Species.create(common_name:"Polar Bear", scientific_name:"ursus maritimus", habitat:"artic sea ice", population:"22,000-31,000", threat_type:"vulnerable", use_trade:"unkwons", conservation_measure:"Supporting community projects in Alaska and Russia to prevent unintended and potentially fatal encounters between polar bears and people. Local polar bear patrol teams help keep towns and bears safe. Better lighting near public places, electric fencing, bear-proof food storage containers and warning plans for when bears enter communities all help reduce conflict.", image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOuAvU-GqohRSYc7zzZiGv1xOhX0bzNfYxdA67kQ6Vai1TUtAXBg")

f1=Following.create(user:u2, species:s1)
f2=Following.create(user:u3, species:s1)

c1=Comment.create(following:f1, maker:u1, receiver:u2, content:"Hello! I love the polar bear too")
c2=Comment.create(following:f2, maker:u1, receiver:u3, content:"Cute")
