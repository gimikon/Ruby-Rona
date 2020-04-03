

User.destroy_all
u1 = User.create :name => 'yukiko isogimi', :email => 'yukiko@ga.co', :DOB => DateTime.new(1989, 12, 15), :address => 'kenshington', :password => 'chicken', :admin => true
u2 = User.create :name => 'vivian wan',:email => 'viv@ga.co', :DOB => DateTime.new(1990, 12, 10), :address => 'beecroft',:password => 'chicken'
u3 = User.create :name => 'carmina soto',:email => 'carmina@ga.co', :DOB => DateTime.new(2000, 01, 15), :address => 'roseberry',:password => 'chicken'
puts "#{ User.count } users created"


Category.destroy_all

c1 = Category.create ([
  symptom: 'fever',
  level: 'none',
  icon: 'happy'
  ])

c2 = Category.create ([
  symptom: 'fever',
  level: 'light',
  icon: 'sad'
  ])

c3 = Category.create ([
  symptom: 'fever',
  level: 'medium',
  icon: 'cry'
  ])

c4 = Category.create ([
  symptom: 'sore throat',
  level: 'none',
  icon: 'happy'
  ])

c5 = Category.create ([
  symptom: 'sore throat',
  level: 'light',
  icon: 'sad'
  ])

c6 = Category.create ([
  symptom: 'sore throat',
  level: 'medium',
  icon: 'cry'
  ])

c7 = Category.create ([
  symptom: 'dry cough',
  level: 'none',
  icon: 'happy'
  ])

c8 = Category.create ([
  symptom: 'dry cough',
  level: 'light',
  icon: 'sad'
  ])

c9 = Category.create ([
  symptom: 'dry cough',
  level: 'medium',
  icon: 'cry'
  ])
puts "#{ Category.count } categories created"

Record.destroy_all

r1 = Record.create ([
  date: DateTime.new(2020, 04, 03)
  ])

r2 = Record.create ([
  date: DateTime.new(2020, 04, 04)
  ])

r3 = Record.create ([
  date: DateTime.new(2020, 04, 05)
  ])

r4 = Record.create ([
  date: DateTime.new(2020, 04, 06),
  user_id:u1,
  category_id:c3
  ])
puts "#{ Record.count } records created"
