# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#starting a new session
#db Clean Up
Room.delete_all
Branch.delete_all
Workspace.delete_all
User.delete_all
Organization.delete_all

#Creating some workspaces 
Makan  = Workspace.create(name: 'Makan', about:"We are Makan and we are the best")
Khana  = Workspace.create(name: '3elm Khana', about:"We are 3elm Khana and we are the best")
Zone   = Workspace.create(name: 'Zone', about:"We are Zone and we are the best")
FabLab = Workspace.create(name: 'FabLab', about:"We are FabLab and we are the best") 
Workspace.create(name: 'Maran', about:"We are Makan and we are the best")
Workspace.create(name: 'Maaan', about:"We are Makan and we are the best")
Workspace.create(name: 'Zane', about:"We are Zone and we are the best")
Workspace.create(name: 'FavLab', about:"We are FabLab and we are the best") 
Workspace.create(name: '32elm Khana', about:"We are 3elm Khana and we are the best")

#Creating some branches 
MakanBr1 = Branch.create(number_of_rooms: 4, address: "Dokki, Giza, Egypt", phone: "27856965",email: "Makan1@gmail.com",
            workspace_id: Makan.id)

MakanBr2 = Branch.create(number_of_rooms: 5, address: "Nasr City, Cairo, Egypt", phone: "27852965",email: "Makan2@gmail.com",
            workspace_id: Makan.id)

MakanBr3 = Branch.create(number_of_rooms: 4, address: "Nozha, Cairo, Egypt", phone: "27356965",email: "Makan3@gmail.com",
            workspace_id: Makan.id)

MakanBr4 = Branch.create(number_of_rooms: 4, address: "Ramsis, Cairo, Egypt", phone: "27856925",email: "Makan4@gmail.com",
            workspace_id: Makan.id)

KhanaBr  = Branch.create(number_of_rooms: 4, address: "Dokki, Giza, Egypt", phone: "245632635",email: "Khana@gmail.com",
            workspace_id: Khana.id)

FabLabBr = Branch.create(number_of_rooms: 4, address: "Helioplis, Cairo, Egypt", phone: "21923654",email: "FabLab@gmail.com",
            workspace_id: FabLab.id)

ZoneBr   = Branch.create(number_of_rooms: 4, address: "Abbasya, Cairo, Egypt", phone: "23126356",email: "Zone@gmail.com",
            workspace_id: Zone.id)

#Creating some rooms 
Room.create(price:12, availability:1, capacity:20, services: "AC, wifi", branch_id: MakanBr1.id)
Room.create(price:20, availability:1, capacity:15, services: "AC, wifi, lolipops", branch_id: MakanBr1.id)
Room.create(price:13, availability:1, capacity:5,  services: "AC, wifi", branch_id: MakanBr2.id)
Room.create(price:20, availability:1, capacity:7,  services: "AC, wifi", branch_id: MakanBr3.id)
Room.create(price:50, availability:1, capacity:50, services: "AC, wifi", branch_id: MakanBr4.id)
Room.create(price:15, availability:1, capacity:10, services: "AC, wifi", branch_id: FabLabBr.id)
Room.create(price:17, availability:1, capacity:12, services: "AC, wifi", branch_id: FabLabBr.id)
Room.create(price:12, availability:1, capacity:16, services: "AC, wifi", branch_id: ZoneBr.id)
Room.create(price:10, availability:1, capacity:15, services: "AC, wifi", branch_id: ZoneBr.id)
Room.create(price:19, availability:1, capacity:20, services: "AC, wifi", branch_id: KhanaBr.id)
Room.create(price:17, availability:1, capacity:25, services: "AC, wifi", branch_id: KhanaBr.id)

#Creating some users
User.create(name: "Mohammed", email: "Mohammed@gmail.com", password: "hackmeifyoucan")
User.create(name: "Ahmed Gamal", email: "Ahmed@gmail.com", password: "hobalmath2shta8al")
User.create(name: "Mina Magdy", email: "Magdy@gmail.com", password: "ma3lesh")
User.create(name: "Omar Hashim", email: "OmarHashim@gmail.com", password: "mathgames?")
User.create(name: "Sayed", email: "Sayed@gmail.com", password: "5odonyma3ako")

#Creating some events 
#Event.create(title: "From zero to hero", description: "Become an expert", time: "")

#creating some organization
Organization.create(name:"ieee",address:"ay mkan",phone:"0123456",university:"cairo",email:"sad@sad.com")
Organization.create(name:"ideta",address:"ay mkan",phone:"0123456",university:"cairo",email:"sad@sad.com")
Organization.create(name:"ieef",address:"ay mkan",phone:"0123456",university:"cairo",email:"sad@sad.com")
Organization.create(name:"ieeeg",address:"ay mkan",phone:"0123456",university:"cairo",email:"sad@sad.com")
Organization.create(name:"flex",address:"ay mkan fel giza",phone:"01235256",university:"cairo",email:"sad@sad.com")
Organization.create(name:"flax",address:"ay mkan fel giza",phone:"01235256",university:"cairo",email:"sad@sad.com")
Organization.create(name:"flen",address:"ay mkan fel giza",phone:"01235256",university:"cairo",email:"sad@sad.com")
Organization.create(name:"flexg",address:"ay mkan fel giza",phone:"01235256",university:"cairo",email:"sad@sad.com")