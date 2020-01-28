# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#     Organization.create(
#         name: Faker::Company.name)
# end

# 5.times do
#     Employee.create(
#         firstName: Faker::Name.first_name,
#         lastName: Faker::Name.last_name,
#         email: Faker::Internet.email,
#         phone: Faker::PhoneNumber.phone_number,
#         organization_id: Faker::Number.within(range: 1..5))
# end

# 5.times do
#     Partner.create(
#         firstName: Faker::Name.first_name,
#         lastName: Faker::Name.last_name,
#         email: Faker::Internet.email,
#         phone: Faker::PhoneNumber.phone_number,
#         website: Faker::Internet.url)
# end

1.times do
    OrganizationsPartner.create(
        partner_id: 1,
        organization_id: 2)
end