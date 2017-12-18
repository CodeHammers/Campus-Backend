# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

#starting a new session
#db Clean 
Image.delete_all
Event.delete_all
Review.delete_all
Workshop.delete_all
Image.delete_all
Position.delete_all
Room.delete_all
Branch.delete_all
Workspace.delete_all
User.delete_all
Organization.delete_all

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

#creating some organization
Organization.create!(name:"ieee",phone:"0123456",university:"cairo",email:"sad1@sad.com")
Organization.create!(name:"ideta",phone:"0123456",university:"cairo",email:"sad2@sad.com")
Organization.create!(name:"ieef",phone:"0123456",university:"cairo",email:"sad3@sad.com")
Organization.create!(name:"ieeeg",phone:"0123456",university:"cairo",email:"sad4@sad.com")
Organization.create!(name:"flex",phone:"01235256",university:"cairo",email:"sad5@sad.com")
Organization.create!(name:"flax",phone:"01235256",university:"cairo",email:"sad6@sad.com")
Organization.create!(name:"flen",phone:"01235256",university:"cairo",email:"sad7@sad.com")
Organization.create!(name:"flexg",phone:"01235256",university:"cairo",email:"sad8@sad.com")

#Creating some images 
#it's not guaranteed that room ids are 1 2 3 4 , deletions make shifts in ids 
Image.create!(image_url: "https://i.imgur.com/lFz6I9i.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/Hecb6kU.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/2knOYqa.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/uJQlrIv.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/OgPhGn2.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/p2Qhtds.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/LQnSFsx.jpg", room_id:  Room.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/LTjkixq.jpg", room_id:  Room.all.to_a.sample.id)

Image.create!(image_url: "https://i.imgur.com/6j1JTOg.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/hLbd906.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/8D4IqYa.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/JfCzSn9.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/5OSLIFt.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/9G7Eioq.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/twGeg9G.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/qWaPdLU.jpg", organization_id:  Organization.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/sFUb7cl.jpg", organization_id:  Organization.all.to_a.sample.id)

#Creating some workshops
Ardunio = Workshop.create!(title:"Ardunio from zero to hero", description:"you will learn shit actually!", date: Date.parse("Dec 30 2017"),
                  branch_id: MakanBr1.id, organization_id:Organization.all.to_a.sample.id)

OOP = Workshop.create!(title:"Learn OOP like a boss", description:"you will be a boss!", date: Date.parse("Feb 3 2018"),
                  branch_id: MakanBr1.id, organization_id:Organization.all.to_a.sample.id)

Workshop.create!(title:"3D printing FTW!", description:"3D print anything", date: Date.parse("May 30 2018"),
                 branch_id: FabLabBr.id, organization_id:Organization.all.to_a.sample.id)

KillBoss = Workshop.create!(title:"How to kill your boss", description:"Get rid of that bit**", date: Date.parse("Jan 1 2018"),
                  branch_id: KhanaBr.id, organization_id:Organization.all.to_a.sample.id)


Git = Workshop.create!(title:"Git started", description:"Learn github", date: Date.parse("Dec 29 2017"),
                  branch_id: ZoneBr.id, organization_id:Organization.all.to_a.sample.id)

#Creating some reviews (branches)
Review.create!(feedback: "The best co-working space I have ever been to",rating: 5, branch_id:  Branch.all.to_a.sample.id,user_id: User.all.to_a.sample.id)
Review.create!(feedback: "Eh l 5ara dah oxem bellah",rating: 0.0, branch_id:  Branch.all.to_a.sample.id,
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "7elw 7elw",rating: 3.5, branch_id:  Branch.all.to_a.sample.id,
 user_id:User.all.to_a.sample.id)
Review.create!(feedback: "Not bad, not bad",rating: 2.5, branch_id: Branch.all.to_a.sample.id,
 user_id:User.all.to_a.sample.id)

#Creating some reviews (organizations)
Review.create!(feedback: "Activity 3el2",rating: 3.5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "ana baroo7 3ashan l banat",rating: 4.5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)
Review.create!(feedback: "The best extracurricular activity ever",rating: 5, organization_id: Organization.all.to_a.sample.id, 
	user_id:User.all.to_a.sample.id)

#Creating some reviews (workshops)
Review.create!(feedback: "Instead of becoming a hero, I became a zero :(",rating: 0.0, workshop_id: Ardunio.id, 
      user_id:User.all.to_a.sample.id)

Review.create!(feedback: "Workshop we7sha, 3yzeen felosna",rating: 1.0, workshop_id: Ardunio.id, 
      user_id:User.all.to_a.sample.id)

Review.create!(feedback: "Git started was my gate into the open source world",rating: 5.0, workshop_id: Git.id, 
      user_id:User.all.to_a.sample.id)

Review.create!(feedback: "I have successfully killed my boss in a henious way",rating: 4.5, workshop_id: KillBoss.id, 
      user_id:User.all.to_a.sample.id)

Review.create!(feedback: "OOP sucks, Linus Travold sends his regards ha3ha3ha3",rating: 2.5, workshop_id: OOP.id, 
      user_id:User.all.to_a.sample.id)

#Creating some positions
idK = Organization.create!(name: "kvector",phone:"32323233323",university:"Helwan",email:"none@none.com").id
Position.create!(user_id: u_id, organization_id: idK, title:"owner")


idH = Organization.create!(name: "HIH",phone:"32323233323",university:"Assuit",email:"bassel@gmail.com").id
Position.create!(user_id: u_id, organization_id: idH, title:"owner")

Workshop.create!(title:"How to become a vector", description:"To infinity and what's beyond", date: Date.parse("Dec 27 2018"),
                  branch_id: MakanBr3.id, organization_id:idK)

Workshop.create!(title:"Fundraise like a begger!", description:"Learn the art of begging", date: Date.parse("Jan 5 2018"),
                  branch_id: MakanBr4.id, organization_id:idH)

#creating some events
Event.create!(title: "2018 opening", description: "kvector opening", date:Date.parse("Jan 1 2018"),
      venue_name: "Makan workspace", location:"Giza", schedule:"rabak yeshlha ba2a ha2olak ba3den", organization_id:idK, 
      branch_id:MakanBr1.id)

Event.create!(title: "Schrodinger's cat unboxing", description: "I hope it's not dead",  date:Date.parse("Jan 1 2018"),
      venue_name: "Zone workspace", location:"Cairo", schedule:"We will open the box, service the cat and leave", organization_id:idH, 
      branch_id:ZoneBr.id)

Event.create!(title: "Job Fair", description: "Job Fair",  date:Date.parse("Dec 21 2017"),
      venue_name: "FabLab workspace", location:"Giza", schedule:"jobs ya negm", organization_id:Organization.all.to_a.sample.id, 
      branch_id:FabLabBr.id)

#Creating some images for events 
Image.create!(image_url: "https://i.imgur.com/mpHgYA0.jpg", event_id:  Event.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/lLfc09A.jpg", event_id:  Event.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/fqopF9w.jpg", event_id:  Event.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/Y4IGM7T.jpg", event_id:  Event.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/qrIr5rH.jpg", event_id:  Event.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/4ISjW1u.jpg", event_id:  Event.all.to_a.sample.id)

#creating some images for workshops
Image.create!(image_url: "https://i.imgur.com/YVhHdlV.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/lKTZtRu.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/MWso7vk.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/xhDbQrb.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/VVKXpiT.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/tD17x2A.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/yCgXYJa.jpg", workshop_id:  Workshop.all.to_a.sample.id)