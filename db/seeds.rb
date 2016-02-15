# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

liste = [
  {nom: "Guillaume", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Sophie", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Jade", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Philippe", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Anas", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Najib", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Marc", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Antoine", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Thierry", email: "prenom@nom.com", tel: "0102030405", sensei: "1"},
  {nom: "Anthony", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Thomas", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Vincent", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Alexis", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Julie", email: "prenom@nom.com", tel: "0102030405", sensei: "1"},
  {nom: "Sabrina", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Bertrand", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Naïma", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "François", email: "prenom@nom.com", tel: "0102030405", sensei: "1"},
  {nom: "Othman", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Caroline", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Didier", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Thanh", email: "prenom@nom.com", tel: "0102030405", sensei: "0"},
  {nom: "Manoël", email: "prenom@nom.com", tel: "0102030405", sensei: "0"}
 ]

Person.delete_all
liste.each do |x|
  Person.create(x)
end
