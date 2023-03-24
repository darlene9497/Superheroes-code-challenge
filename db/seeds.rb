# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Hero.destroy_all 
Power.destroy_all 
HeroPower.destroy_all 

puts "Seeding heros..." 

h1 = Hero.create(name:"Johnathon Hank Pym", super_name:"Ant-man")
h2 = Hero.create(name:"Cressida", super_name:"Avenger X")
h3 = Hero.create(name:"T'Challa", super_name:"Black Panther")
h4 = Hero.create(name:"Jessica Jones", super_name:"Jessica Jones")
h5 = Hero.create(name:"Daniel Thomas", super_name:"Iron Fist")

puts "Seeding powers..." 

p1 = Power.create(name:"strength", description:"If you think subtlety is overrated and want enough artillery to take out a small army, unleash the pure devastation of the Colossus – Anthem’s hulking war machine.")
p2 = Power.create(name:"channel the devil", description:"Channeling the devil leaves the bearer with increased strength, super speed, and -- usually -- horns.")
p3 = Power.create(name:"poison generation", description:"Having poisonous barbs shoot out of your finger tips or being able to project toxic bile would be pretty neat.")
p4 = Power.create(name:"super maggots", description:"Has super powered slugs are able to enhance his strength, stamina, and size by digesting objects in their path.")
p5 = Power.create(name:"detachable limbs", description:"Able to remove your limbs at will gives you easy access to weapons: your own arms and legs.")

puts "Seeding hero_powers..." 

HeroPower.create(strength:"Strong", hero_id:h1.id, power_id:p5.id)
HeroPower.create(strength:"Weak", hero_id:h3.id, power_id:p4.id)
HeroPower.create(strength:"Average", hero_id:h5.id, power_id:p3.id)
HeroPower.create(strength:"Average", hero_id:h2.id, power_id:p2.id)
HeroPower.create(strength:"Weak", hero_id:h4.id, power_id:p1.id)
HeroPower.create(strength:"Strong", hero_id:h5.id, power_id:p1.id)
HeroPower.create(strength:"Strong", hero_id:h4.id, power_id:p2.id)
HeroPower.create(strength:"Weak", hero_id:h3.id, power_id:p3.id)
HeroPower.create(strength:"Strong", hero_id:h2.id, power_id:p4.id)
HeroPower.create(strength:"Average", hero_id:h1.id, power_id:p5.id)

puts "Done seeding"
