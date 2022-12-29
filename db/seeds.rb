Audition.delete_all
Role.delete_all

harry_potter = Role.create(character_name: "Harry Potter")
captain_america = Role.create(character_name: "Captain America")
princess_leia = Role.create(character_name: "Princess Leia Organa")
james_bond = Role.create(character_name: "James Bond")
severus_snape = Role.create(character_name: "Severus Snape")

# t.string "actor"
# t.string "location"
# t.integer "role_id"
# t.integer "phone"
# t.boolean "hired"

david_foster = Audition.create(actor: "David Foster", location: "Los Angeles", role_id: 1, phone: "222-222-2222", hired: true )
john_kim = Audition.create(actor: "John Kim", location: "New Jersey", role_id: 2, phone: "333-333-3333", hired: true )
kate_winslet = Audition.create(actor: "Kate Winslet", location: "London", role_id: 3, phone: "444-444-4444", hired: true )
jack_johnson = Audition.create(actor: "Jack Johnson", location: "Los Angeles", role_id: 4, phone: "555-555-5555", hired: false )
gary_jackson = Audition.create(actor: "Gary Jackson", location: "New York", role_id: 1, phone: "666-666-6666", hired: false )
jane_foster = Audition.create(actor: "Jane Foster", location: "Los Angeles", role_id: 3, phone: "777-777-7777", hired: false )
david_cassidy = Audition.create(actor: "David Cassidy", location: "Chicago", role_id: 1, phone: "111-111-1111", hired: true )

puts "seeded"