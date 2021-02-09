# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
MealEntry.destroy_all
ExerciseEntry.destroy_all
WeightEntry.destroy_all

dena = User.create(email: "denaweiss5@gmail.com", name: "dena", password: "dena")
gidon = User.create(email: "gidon1996@yahoo.com", name: "gidon", password: "gidon")


exercise1 = ExerciseEntry.create(category: "run", duration: 55.0, calories_burned: 325.2, user_id: dena.id)
exercise2 = ExerciseEntry.create(category: "walk", duration: 95.0, calories_burned: 125.5, user_id: gidon.id)
exercise3 = ExerciseEntry.create(category: "yoga", duration: 30.0, calories_burned: 100.0, user_id: dena.id)


meal1 = MealEntry.create(meal_time: "breakfast",  date: 20211101, calories: 325.1, fat: 30, carbs: 2, protein: 20, name: "spaghetti squash", user_id: dena.id)
meale = MealEntry.create(meal_time: "dinner", date: 20211101, calories: 125.1, fat: 3, carbs: 22, protein: 11, name: "cookies", user_id: gidon.id)

weight1 = WeightEntry.create(weight: 154.6, date:20211101, user_id: dena.id)
weight2 = WeightEntry.create(weight: 162.0, date:20211110, user_id: gidon.id)
weight3 = WeightEntry.create(weight: 142.0, date:20210107, user_id: dena.id)
