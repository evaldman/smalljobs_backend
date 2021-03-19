# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: "Michael Scott", username: "michael123", password: "123", bio: "event coordinating company, providing excellent opportunities in the service industry", image: "https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png", purpose: "employer")
user2 = User.create(name: "Dwight Schrute", username: "dwight123", password: "123", bio: "experienced bar-tender, waiter and great people person", image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Dwight_Schrute.jpg", purpose: "worker")
user3 = User.create(name: "Jim Halpert", username: "jim123", password: "123", bio: "Home remodeling company alway looking for skilled workers", image: "https://upload.wikimedia.org/wikipedia/en/7/7e/Jim-halpert.jpg", purpose: "employer")
user4 = User.create(name: "Pam Beesly", username: "pam123", password: "123", bio: "experienced house painter, and all around handywoman", image: "https://upload.wikimedia.org/wikipedia/en/thumb/6/67/Pam_Beesley.jpg/220px-Pam_Beesley.jpg", purpose: "worker")
user5 = User.create(name: "Creed Bratton", username: "creed123", password: "123", bio: "dog walking business in need of walkers", image: "https://upload.wikimedia.org/wikipedia/en/c/cd/CreedBratton%28TheOffice%29.jpg", purpose: "employer")
user6 = User.create(name: "Jan Levinson", username: "jan123", password: "123", bio: "mother of 3 looking for part-time work, great with pets and children", image: "https://upload.wikimedia.org/wikipedia/en/d/d1/Melora_Hardin_as_Jan_Levinson.png", purpose: "worker")

job1 = Job.create(title: "Painter", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", status: false, completed: false, user: user3)
job2 = Job.create(title: "Bartender", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", status: false, completed: false, user: user1)
job3 = Job.create(title: "Waiter", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", status: false, completed: false, user: user1)
# job4 = Job.create(title: "", description: "", length: "", pay: "", date: "20210323", status: false, completed: false, user:)
# job5 = Job.create(title: "", description: "", length: "", pay: "", date: "20210402", status: false, completed: false, user:)
# job6 = Job.create(title: "", description: "", length: "", pay: "", date: "20210329", status: false, completed: false, user:)

cat1 = Category.create(name: "Hospitality")
cat2 = Category.create(name: "Construction")
cat3 = Category.create(name: "Audio/Video")
cat4 = Category.create(name: "Transportation")
cat5 = Category.create(name: "Sales")
cat6 = Category.create(name: "Security")
cat7 = Category.create(name: "Education")
cat8 = Category.create(name: "Health")
cat9 = Category.create(name: "Administration")
cat10 = Category.create(name: "Agriculture")
cat11 = Category.create(name: "Human Services")
cat12 = Category.create(name: "Other")

jc1= JobCategory.create(job: job1, category: cat2)
jc2= JobCategory.create(job: job2, category: cat1)
jc3= JobCategory.create(job: job3, category: cat2)
# jc4= JobCategory.create(job: category: )
# jc5= JobCategory.create(job: category: )
# jc6= JobCategory.create(job: category: )

acc1 = AcceptedJob.create(completed: "", expected_pay: "", job: job1 , user: user2)
# acc1 = AcceptedJob.create(completed: "", expected_pay: "", job: , user:)
# acc1 = AcceptedJob.create(completed: "", expected_pay: "", job: , user:)

puts "seeded"