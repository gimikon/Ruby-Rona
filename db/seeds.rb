
User.destroy_all
u1 = User.create :name => 'yukiko isogimi', :email => 'yukiko@ga.co', :DOB => '1989-12-15', :address => 'kenshington', :password => 'chicken', :admin => true
u2 = User.create :name => 'vivian wan',:email => 'viv@ga.co', :DOB => '1990-11-15', :address => 'beecroft',:password => 'chicken'
u3 = User.create :name => 'carmina soto',:email => 'carmina@ga.co', :DOB => '1990-10-15', :address => 'roseberry',:password => 'chicken'
puts "#{ User.count } users created"


Category.destroy_all
c1 = Category.create :symptom => 'fever', :level => 'none', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486528/fever_guh3e8.png'
c2 = Category.create :symptom => 'fever', :level => 'light', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486528/fever_guh3e8.png'
c3 = Category.create :symptom => 'fever', :level => 'medium', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486528/fever_guh3e8.png'
c4 = Category.create :symptom => 'sore throat', :level => 'none', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586476810/skgodzvzffnyvicjg1rb.png'
c5 = Category.create :symptom => 'sore throat', :level => 'light', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586476810/skgodzvzffnyvicjg1rb.png'
c6 = Category.create :symptom => 'sore throat', :level => 'medium', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586476810/skgodzvzffnyvicjg1rb.png'
c7 = Category.create :symptom => 'dry cough', :level => 'none', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486846/cough_udstec.png'
c8 = Category.create :symptom => 'dry cough', :level => 'light', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486846/cough_udstec.png'
c9 = Category.create :symptom => 'dry cough', :level => 'medium', :icon => 'https://res.cloudinary.com/dlypbtgzi/image/upload/v1586486846/cough_udstec.png'
puts "#{ Category.count } categories created"


Record.destroy_all
r1 = Record.create :date => '2020-04-04', :note => 'I visited my mom'
r2 = Record.create :date => '2020-04-05', :note => 'my body was a little hot'
r3 = Record.create :date => '2020-04-05', :note => 'I was not feeling well'
r4 = Record.create :date => '2020-04-06', :note => 'I just came back from Argentina'
r5 = Record.create :date => '2020-04-07', :note => 'My mom was coughing a little bit'
puts "#{ Record.count } records created"

u1.records << r1 << r2 << r3
u2.records << r4
u3.records << r5
puts "users and records created"


c1.records << r1
c3.records << r2
c6.records << r3
c3.records << r4
c3.records << r5
puts "records and categories created"
