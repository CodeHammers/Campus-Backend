# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

#starting a new session
#db Clean 
#Position.delete_all
#Review.delete_all
#Image.delete_all
#Room.delete_all
#Branch.delete_all
#Workspace.delete_all
#User.delete_all
#Organization.delete_all

#Creating some workspaces 
Makan  = Workspace.create!(name: 'Makan', about:"We are Makan and we are the best")
Khana  = Workspace.create!(name: '3elm Khana', about:"We are 3elm Khana and we are the best")
Zone   = Workspace.create!(name: 'Zone', about:"We are Zone and we are the best")
FabLab = Workspace.create!(name: 'FabLab', about:"We are FabLab and we are the best") 
Workspace.create!(name: 'Maran', about:"We are Makan and we are the best")
Workspace.create!(name: 'Maaan', about:"We are Makan and we are the best")
Workspace.create!(name: 'Zane', about:"We are Zone and we are the best")
Workspace.create!(name: 'FavLab', about:"We are FabLab and we are the best") 
Workspace.create!(name: '32elm Khana', about:"We are 3elm Khana and we are the best")

#Creating some branches 
MakanBr1 = Branch.create!(number_of_rooms: 4, address: "Dokki, Giza, Egypt", phone: "27856965",email: "Makan1@gmail.com",
            workspace_id: Makan.id)

MakanBr2 = Branch.create!(number_of_rooms: 5, address: "Nasr City, Cairo, Egypt", phone: "27852965",email: "Makan2@gmail.com",
            workspace_id: Makan.id)

MakanBr3 = Branch.create!(number_of_rooms: 4, address: "Nozha, Cairo, Egypt", phone: "27356965",email: "Makan3@gmail.com",
            workspace_id: Makan.id)

MakanBr4 = Branch.create!(number_of_rooms: 4, address: "Ramsis, Cairo, Egypt", phone: "27856925",email: "Makan4@gmail.com",
            workspace_id: Makan.id)

KhanaBr  = Branch.create!(number_of_rooms: 4, address: "Dokki, Giza, Egypt", phone: "245632635",email: "Khana@gmail.com",
            workspace_id: Khana.id)

FabLabBr = Branch.create!(number_of_rooms: 4, address: "Helioplis, Cairo, Egypt", phone: "21923654",email: "FabLab@gmail.com",
            workspace_id: FabLab.id)

ZoneBr   = Branch.create!(number_of_rooms: 4, address: "Abbasya, Cairo, Egypt", phone: "23126356",email: "Zone@gmail.com",
            workspace_id: Zone.id)

#Creating some rooms 
Room.create!(price:12, availability:1, capacity:20, services: "AC, wifi", branch_id: MakanBr1.id)
Room.create!(price:20, availability:1, capacity:15, services: "AC, wifi, lolipops", branch_id: MakanBr1.id)
Room.create!(price:13, availability:1, capacity:5,  services: "AC, wifi", branch_id: MakanBr2.id)
Room.create!(price:20, availability:1, capacity:7,  services: "AC, wifi", branch_id: MakanBr3.id)
Room.create!(price:50, availability:1, capacity:50, services: "AC, wifi", branch_id: MakanBr4.id)
Room.create!(price:15, availability:1, capacity:10, services: "AC, wifi", branch_id: FabLabBr.id)
Room.create!(price:17, availability:1, capacity:12, services: "AC, wifi", branch_id: FabLabBr.id)
Room.create!(price:12, availability:1, capacity:16, services: "AC, wifi", branch_id: ZoneBr.id)
Room.create!(price:10, availability:1, capacity:15, services: "AC, wifi", branch_id: ZoneBr.id)
Room.create!(price:19, availability:1, capacity:20, services: "AC, wifi", branch_id: KhanaBr.id)
Room.create!(price:17, availability:1, capacity:25, services: "AC, wifi", branch_id: KhanaBr.id)

#Creating some users
User.create!(name: "Mohammed", email: "Mohammed@gmail.com", password: "hackmeifyoucan")
User.create!(name: "Ahmed Gamal", email: "Ahmed@gmail.com", password: "hobalmath2shta8al")
User.create!(name: "Mina Magdy", email: "Magdy@gmail.com", password: "ma3lesh32322")
User.create!(name: "Omar Hashim", email: "OmarHashim@gmail.com", password: "mathgames?")
u_id = User.create!(name: "Sayed", email: "Sayed@gmail.com", password: "5odonyma3ako").id

#Creating some events 
#Event.create!(title: "From zero to hero", description: "Become an expert", time: "")

#creating some organization
Organization.create!(name:"ieee",phone:"0123456",university:"cairo",email:"sad1@sad.com",address: "Cairo")
Organization.create!(name:"ideta",phone:"0123456",university:"cairo",email:"sad2@sad.com",address: "Giza")
Organization.create!(name:"ieef",phone:"0123456",university:"cairo",email:"sad3@sad.com",address: "Assuit")
Organization.create!(name:"ieeeg",phone:"0123456",university:"cairo",email:"sad4@sad.com",address: "Cairo")
Organization.create!(name:"flex",phone:"01235256",university:"cairo",email:"sad5@sad.com",address: "Luxor")
Organization.create!(name:"flax",phone:"01235256",university:"cairo",email:"sad6@sad.com",address: "Aswan")
Organization.create!(name:"flen",phone:"01235256",university:"cairo",email:"sad7@sad.com",address: "Alex")
Organization.create!(name:"flexg",phone:"01235256",university:"cairo",email:"sad8@sad.com",address: "Sinai")

#Creating some images 
#it's not guaranteed that room ids are 1 2 3 4 , deletions make shifts in ids 
Image.create!(image_url: "https://i.imgur.com/lFz6I9i.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/Hecb6kU.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/2knOYqa.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/uJQlrIv.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/6j1JTOg.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/hLbd906.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/8D4IqYa.jpg", organization_id:  Organization.all.to_a.sample.id)

#Creating some reviews
Review.create!(feedback: "The best co-working space I have ever been to",rating: 5, branch_id:  Branch.all.to_a.sample.id,user_id: User.all.to_a.sample.id)
Review.create!(feedback: "Eh l 5ara dah oxem bellah",rating: 0.0, branch_id:  Branch.all.to_a.sample.id,
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "7elw 7elw",rating: 3.5, branch_id:  Branch.all.to_a.sample.id,
 user_id:User.all.to_a.sample.id)
Review.create!(feedback: "Not bad, not bad",rating: 2.5, branch_id: Branch.all.to_a.sample.id,
 user_id:User.all.to_a.sample.id)

Review.create!(feedback: "Activity 3el2",rating: 3.5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "ana baroo7 3ashan l banat",rating: 4.5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "The best extracurricular activity ever",rating: 5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)

#Creating some positions
idK = Organization.create!(name: "kvector",phone:"32323233323",university:"Helwan",email:"none@none.com",address: "Cairo").id
Position.create!(user_id: u_id, organization_id: idK, title:"owner", start_time:Date.parse("Nov 2 2015"))


idH = Organization.create!(name: "HIH",phone:"32323233323",university:"Assuit",email:"bassel@gmail.com",address: "Giza").id
Position.create!(user_id: u_id, organization_id: idH, title:"owner",start_time:Date.parse("Dec 2 2017"))

#Creating some workshops
Workshop.create!(title:"Ardunio from zero to hero", description:"you will learn shit actually!", date: Date.parse("Dec 30 2017"),
                 time: Time.parse("12:15"), branch_id: MakanBr1.id, organization_id:Organization.all.to_a.sample.id)

Workshop.create!(title:"Learn OOP like a boss", description:"you will be a boss!", date: Date.parse("Feb 3 2018"),
                 time: Time.parse("14:15"), branch_id: MakanBr1.id, organization_id:Organization.all.to_a.sample.id)

Workshop.create!(title:"3D printing FTW!", description:"3D print anything", date: Date.parse("May 30 2018"),
                 time: Time.parse("12:15"), branch_id: FabLabBr.id, organization_id:Organization.all.to_a.sample.id)

Workshop.create!(title:"How to kill your boss", description:"Get rid of that bit**", date: Date.parse("Jan 1 2018"),
                 time: Time.parse("20:05"), branch_id: KhanaBr.id, organization_id:Organization.all.to_a.sample.id)

Workshop.create!(title:"How to become a vector", description:"To infinity and what's beyond", date: Date.parse("Dec 27 2018"),
                 time: Time.parse("15:00"), branch_id: MakanBr3.id, organization_id:idK)

Workshop.create!(title:"Git started", description:"Learn github", date: Date.parse("Dec 29 2017"),
                 time: Time.parse("15:00"), branch_id: ZoneBr.id, organization_id:idK)

Workshop.create!(title:"Fundraise like a begger!", description:"Learn the art of begging", date: Date.parse("Jan 5 2018"),
                 time: Time.parse("13:00"), branch_id: MakanBr4.id, organization_id:idH)