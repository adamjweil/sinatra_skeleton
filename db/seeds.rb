User.delete_all
Teacher.delete_all
Note.delete_all

User.create(first_name: "test", last_name: "test", username: "test", email: "email@email.com", password_digest: "password")

User.create(first_name: "user", last_name: "user", username: "user", email: "user@user.com", password_digest: "password")

# Teacher.create(first_name: "teacher", last_name: "teacher", username: "teacher", email: "teacher@teacher.com", password_digest: "password")

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Name.name, email: Faker::Internet.safe_email, password_digest: "password")
end

10.times do
  Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, school: Faker::HarryPotter.location, email: Faker::Internet.safe_email)
end

5.times do
  Note.create(
              title: Faker::HarryPotter.book,
              class: Faker::HarryPotter.location,
              content: Faker::Lorem.sentence(8))
end
