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

job1 = Job.create(title: "Painter", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", accept_status: true, completed: false, user: user3, time: Time.utc(2020,01,01,8,0), address:)
job2 = Job.create(title: "Bartender", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", accept_status: true, completed: false, user: user1, time: Time.utc(2020,01,01,18,0), address:)
job3 = Job.create(title: "Waiter", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", accept_status: true, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)
job4 = Job.create(title: "Painter", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", accept_status: false, completed: false, user: user3, time: Time.utc(2020,01,01,8,0), address:)
job5 = Job.create(title: "Bartender", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)
job6 = Job.create(title: "Waiter", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)
job7 = Job.create(title: "transportation job", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", accept_status: false, completed: false, user: user3, time: Time.utc(2020,01,01,8,0), address:)
job8 = Job.create(title: "transportation job2", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,20,0), address:)
job9 = Job.create(title: "audio job", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)
job10 = Job.create(title: "video job", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", accept_status: false, completed: false, user: user3, time: Time.utc(2020,01,01,8,0), address:)
job11 = Job.create(title: "security", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)
job12 = Job.create(title: "security2", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", accept_status: false, completed: false, user: user5, time: Time.utc(2020,01,01,8,0), address:)
job13 = Job.create(title: "health", description: "House painter needed for 2 days of work", length: 16, pay: 18, date: "20210517", accept_status: false, completed: false, user: user5, time: Time.utc(2020,01,01,8,0), address:)
job14 = Job.create(title: "health2", description: "needed for one night of work, keep all your tips!!", length: 6, pay: 15, date: "20210419", accept_status: false, completed: false, user: user5, time: Time.utc(2020,01,01,8,0), address:)
job15 = Job.create(title: "agriculture", description: "Experienced waiter needed for fancy event", length: 5, pay: 20, date: "20210321", accept_status: false, completed: false, user: user1, time: Time.utc(2020,01,01,8,0), address:)

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
jc3= JobCategory.create(job: job3, category: cat1)
jc4= JobCategory.create(job: job4, category: cat2)
jc5= JobCategory.create(job: job5, category: cat1)
jc6= JobCategory.create(job: job6, category: cat1)
jc7= JobCategory.create(job: job7, category: cat4)
jc8= JobCategory.create(job: job8, category: cat4)
jc9= JobCategory.create(job: job9, category: cat3)
jc10= JobCategory.create(job: job10, category: cat3)
jc11= JobCategory.create(job: job11, category: cat6)
jc12= JobCategory.create(job: job12, category: cat6)
jc13= JobCategory.create(job: job13, category: cat8)
jc14= JobCategory.create(job: job14, category: cat8)
jc15= JobCategory.create(job: job15, category: cat10)


acc1 = AcceptedJob.create(completed: false, job: job1, user: user2)
acc2 = AcceptedJob.create(completed: false, job: job2, user: user2)
acc3 = AcceptedJob.create(completed: false, job: job3, user: user4)

puts "seeded"