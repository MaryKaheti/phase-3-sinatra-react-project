puts "🌱 Seeding spices..."

# Seed your database here
s1 = Seller.create first_name: 'Kimani', last_name: 'Njuguna', age: 60, location: 'Ruiru'
s2 = Seller.create first_name: 'Hanaan', last_name: 'Bella', age: 67, location: 'Karen'
s3 = Seller.create first_name: 'Dais', last_name: "Salon", age: 78, location: 'Upperhill'
s4 = Seller.create first_name: 'Michelinn', last_name: "Otieno", age: 45, location: 'Kisumu'

e1 = Estate.create name: 'Knight Frank',  location: 'Kilimani'
e2 = Estate.create name: 'Mawega Company', location: 'Unicity'
e3 = Estate.create name: 'Silver Springs', location: 'Nyeri'
e4 = Estate.create name: 'Tatu City', location: 'Kiambu'
e4 = Estate.create name: 'Nyako', location: 'Kisumu'

p1 = Property.create title: 'Cozy Apartment', location: 'Kilimani', description: 'Pet-friendly, In-unit dryer, in-unit washer, Other parking, parking lot, surface parking lot', price: '28000',  image_url: 'https://photos.zillowstatic.com/fp/00a0a2bb0321e5b22aa9d4d00a5d2e32-cc_ft_1152.webp', estate_id: e1.id, seller_id: s2.id
p2 = Property.create title: 'The massionette', location: 'Kitisuru', description: '4 bedrooms, 3.5 bathrooms, ample living spaces surface parking lot', price: '1200000',  image_url: 'https://i.pinimg.com/474x/39/e2/0e/39e20e34e3696e8f56d737432c09ac6f.jpg', estate_id: e2.id, seller_id: s2.id
p3 = Property.create title: 'Bungalow', location: 'Umoja', description: '3 bed, spacious servants quarter, in-unit washer, spacious living areas, parking lot, surface parking lot', price: '2500000',  image_url: 'https://i.pinimg.com/474x/e6/00/e8/e600e8f9020ff8aafd97d31c1255295e.jpg', estate_id: e4.id, seller_id: s3.id
p4 = Property.create title: 'Colonial castle', location: 'Bahati', description: '15 bedrooms, 10 bathrooms, in and out unit surface parking lot, swimming pool, tennis court', price: '36000000',  image_url: 'https://i.pinimg.com/474x/8e/58/cd/8e58cd661273b313ab14ad45e2e0438f.jpg', estate_id: e3.id, seller_id: s4.id


puts "✅ Done seeding!"
 