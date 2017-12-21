#starting a new session
#db Clean 

require 'faker'
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

#creating Makan CO workingspace
aboutMakan = "Makan, A work space full of inspiration, a place where creative people gather, a must-stop station on your journey chasing your dream, we are aiming to create an inspiring,relaxing and chilly atmosphere where people can focus on their work, sharing their joy and having fun :) ."
Makan  = Workspace.create!(name: 'Makan', about: aboutMakan, logo: "https://imgur.com/a/QA47v")

MakanBr = Branch.create!(number_of_rooms: 4, address: "12 El Dokki Street, Dokki, Giza, Egypt", phone: "01117244030",
            email: "MakanCD@gmail.com", workspace_id: Makan.id)

MakanRoom1 = Room.create!(price:12, availability:1, capacity:20, services: "AC, wifi", branch_id: MakanBr.id)
MakanRoom2 = Room.create!(price:10, availability:1, capacity:15, services: "AC, wifi, PCs", branch_id: MakanBr.id)
MakanRoom3 = Room.create!(price:13, availability:1, capacity:5,  services: "AC, wifi, Photocopy machine", branch_id: MakanBr.id)
MakanRoom4 = Room.create!(price:20, availability:1, capacity:7,  services: "AC, wifi, Multimedia display system, Printer", branch_id: MakanBr.id)

Image.create!(image_url: "https://imgur.com/a/PwjjO", room_id:  MakanRoom1.id)
Image.create!(image_url: "https://imgur.com/a/hml8S", room_id:  MakanRoom2.id)
Image.create!(image_url: "https://imgur.com/a/lOVSd", room_id:  MakanRoom3.id)
Image.create!(image_url: "https://imgur.com/a/KquoN", room_id:  MakanRoom4.id)

#Creating Almaqar
aboutMaqar = "AlMaqarr not only offers coworking space and conference rooms, but also regularly organizes social and recreational events for members. Founder Abdel Kader Ahmed explains that the space also offers training sessions in entrepreneurship, project management and other key skill development."
Almaqar = Workspace.create!(name: 'AlMaqar', about:aboutMaqar, logo: "https://imgur.com/a/wQ4lA")

MaqarBr = Branch.create!(number_of_rooms: 1, address: "20 El Shaheed Mahmoud Fouad Street, Heliopolis, Cairo, Egypt.", phone: "01007744121",
            email: "AlMaqarr@gmail.com", workspace_id: Almaqar.id)

MaqarRoom1 = Room.create!(price:100, availability:1, capacity:20, services: "AC, Wifi, Personal lockers, Multimedia display system, Fully equipped kitchen", branch_id: MaqarBr.id)

Image.create!(image_url: "https://imgur.com/a/XLH7H", room_id:  MaqarRoom1.id)

#Creating FabLab
aboutFabLab = "Fab Lab Egypt (a member of Massachusetts Institute of Technology Fab Lab global network) is a non-profit, non-governmental, community-run public makerspace and digital fabrication lab."
FabLab = Workspace.create!(name: 'FabLab', about:aboutFabLab, logo: "https://imgur.com/a/PDpXt")

FabLabBr = Branch.create!(number_of_rooms: 1, address: "Villa 35 - 100 St. - Near Al Horia Square - Maadi", phone: "01017465650",
            email: "fablab.egypt@gmail.com", workspace_id: FabLab.id)

FabLabRoom1 = Room.create!(price:40, availability:1, capacity:20, services: "AC, Wifi, Laser cutters, 3D Printers, PCP machine", branch_id: FabLabBr.id)
FabLabRoom2 = Room.create!(price:40, availability:1, capacity:10, services: "AC, Wifi, sewing machine, toolbox", branch_id: FabLabBr.id)

Image.create!(image_url: "https://imgur.com/a/WvNko", room_id:  FabLabRoom1.id)
Image.create!(image_url: "https://imgur.com/a/Ctcqd", room_id:  FabLabRoom2.id)

#Creating The disrict
aboutDistrcit = "District was founded in 2011 as the first Egyptian coworking space in Egypt and among the pioneers in the MENA region by Mazen Helmy, a serial entrepreneur, awarded Africa’s most promising entrepreneurs under 30 by Forbes in 2014."
TheDistrict = Workspace.create!(name: 'The Distrcit', about:aboutDistrcit, logo: "https://imgur.com/a/P2jar")

TheDistrictBr = Branch.create!(number_of_rooms: 1, address: "51B Egypt-Helwan Elzeraey Road, El Maadi, Cairo, Egypt.", phone: "0223802120",
                  email: "Districtspaces@gmail.com", workspace_id: TheDistrict.id)

TheDistrictRoom = Room.create!(price:30, availability:1, capacity:10, services: "AC, Wifi, Library, Discounts for student activites", branch_id: TheDistrictBr.id)

Image.create!(image_url: "https://imgur.com/a/T9OEV", room_id: TheDistrictRoom.id)

#Creating TYT
aboutTYT = "At TYT, you can study, attend your meetings, film, record, listen to music, do your favourite activities. We provide spacious place, green areas and many more. Pay us a visit!"
TYT = Workspace.create!(name: 'TYT', about:aboutTYT, logo: "https://imgur.com/a/zAYOb")

TYTBr1 = Branch.create!(number_of_rooms: 1, address: "5 Almessaha Square, Dokki, Giza, Egypt", phone: "01028888405",
                  email: "TYTEgypt@gmail.com", workspace_id: TYT.id)
TYTBr2 = Branch.create!(number_of_rooms: 1, address: "10 Dr Handusa Street, Garden City, Cairo, Egypt", phone: "01028888405",
                  email: "TYTEgypt1@gmail.com", workspace_id: TYT.id)

TYTRoom1 = Room.create!(price:80, availability:1, capacity:12, services: "AC, Wifi, food and drinks, beanbags", branch_id: TYTBr1.id)
TYTRoom2 = Room.create!(price:25, availability:1, capacity:10, services: "AC, Wifi, equipment, computers(Macs/PCs), Photocopier, scanner", branch_id: TYTBr2.id)

Image.create!(image_url: "https://imgur.com/a/N2v4a", room_id: TYTRoom1.id)
Image.create!(image_url: "https://imgur.com/a/KgBFb", room_id: TYTRoom2.id)

#Creating Creativo
aboutCreativo = "A creative and inspiring environment for freelancers, entrepreneurs, start-ups and small business of all areas."
Creativo = Workspace.create!(name: 'Creativo', about:aboutCreativo, logo: "https://imgur.com/a/ryGpk")

CreativoBr = Branch.create!(number_of_rooms: 1, address: "10 Husien Wasef St. Mesaha Square, Pizza hut building 3rd floor. Ad Duqqi, Cairo, Egypt", phone: "01111595410",
                  email: "creativo.egypt@gmail.com", workspace_id: Creativo.id)

CreativoRoom1 = Room.create!(price:30, availability:1, capacity:10, services: "AC, Wifi, Arts & entertainment, Miscellaneous Workshops", branch_id: CreativoBr.id)

Image.create!(image_url: "https://imgur.com/a/4HXPh", room_id: CreativoRoom1.id)
Image.create!(image_url: "https://imgur.com/a/MGePN", room_id: CreativoRoom1.id)

#Creating some random workspaces
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Workspace.create!(name: Faker::Company.name, about: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")

#Creating some random branches
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number,
                  email: "branch1@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone,
                  email: "branch2@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number,
                  email: "branch3@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone,
                  email: "branch4@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number,
                  email: "branch5@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number,
                  email: "branch6@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone,
                  email: "branch7@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone,
                  email: "branch8@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.cell_phone,
                  email: "branch9@gmail.com", workspace_id: Workspace.all.to_a.sample.id)
Branch.create!(number_of_rooms: 5, address: Faker::Address.street_address, phone: Faker::PhoneNumber.phone_number,
                  email: "branch10@gmail.com", workspace_id: Workspace.all.to_a.sample.id)

#Creating random rooms
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)
Room.create!(price:Faker::Commerce.price, availability:1, capacity:5, services: Faker::Lorem.sentence , branch_id: Branch.all.to_a.sample.id)

#Creating IEEE
aboutIEEE = "Enhancing the engineering sense of the engineering students through creating a leading technical community and keeping pace with the current technological advance and improving the interpersonal skills of all students for better Egypt."
IEEE = Organization.create!(name:"IEEE", phone:"01156084078", university: "Faculty of Engineering, Cairo University", email:"IEEECUSB@gmail.com", 
            description: aboutIEEE, logo: "https://imgur.com/a/on4PN")

Image.create!(image_url: "https://imgur.com/a/BI7LO", organization_id:  IEEE.id)

#Creating Kvector
aboutKvector = "Glory is the destiny of mindful dreamers.. K-vector just passes a way..!"
Kvector = Organization.create!(name:"K Vector Foundation", phone:"0201150857984", university: "Faculty of Engineering, Cairo University", 
      email:"kvectorfoundation@gmail.com", description: aboutKvector, logo: "https://imgur.com/a/2FfqE")

Image.create!(image_url: "https://imgur.com/a/Ip4MD", organization_id: Kvector.id)

#Creating Baja
aboutBaja = "Baja Cairo University Racing Team (BCURT) bridges the gap between Engineering Education and Industry by training students in a real-life project where they independently Design, Analyze and develop Technology solutions"
Baja = Organization.create!(name:"Baja racing team", phone:"01114542046", university: "Faculty of Engineering, Cairo University", 
      email:"BCURTRacingTeam@gmail.com", description: aboutBaja, logo: "https://imgur.com/a/4Pc8D")

Image.create!(image_url: "https://imgur.com/a/MGlK8", organization_id: Baja.id)
Image.create!(image_url: "https://imgur.com/a/GsoNA", organization_id: Baja.id)

#Creating Formula student
aboutFormula = "Cairo Uni. Racing Team – Formula Student is a group of more than 20 students from Mechanical & Electrical Departments in Cairo University Faculty of Engineering with one goal of best representation Cairo University in the FSAE Competition."
Formula = Organization.create!(name:"Cairo Uni Formula racing team", phone:"01157084078", university: "Faculty of Engineering, Cairo University", 
      email:"curtfs@gmail.com", description: aboutFormula , logo: "https://imgur.com/a/1g9VT")

Image.create!(image_url: "https://imgur.com/a/SkLKK", organization_id: Formula.id)
Image.create!(image_url: "https://imgur.com/a/9v9Mw", organization_id: Formula.id)

#Creating ASME HPV 
aboutHPV = "It is the Human Powered Vehicle Contest an international contest held annually under the supervision of ASME."
HPV = Organization.create!(name:"ASME HPV Cairo Uni", phone:"01092700716", university: "Faculty of Engineering, Cairo University", 
      email:"HPVCUT@gmail.com", description: aboutHPV, logo: "https://imgur.com/a/wyVil")

Image.create!(image_url: "https://imgur.com/a/cCFk0", organization_id: HPV.id)
Image.create!(image_url: "https://imgur.com/a/K67JO", organization_id: HPV.id)

#Creating acmASCIS
aboutacmASCIS = "acmASCIS student chapter is the local neighborhood of ACM. It serve as nodes of activities for ACM members and the computing community as large, offering seminars, lectures, and the opportunity to meet peers and experts in many fields of interest."
acmASCIS = Organization.create!(name:"acmASCIS", phone:"01156080078", university: "Faculty of computer science, Ain Shams university", 
      email:"acmASCIS@gmail.com", description: aboutacmASCIS, logo: "https://imgur.com/a/PlpnH")

Image.create!(image_url: "https://imgur.com/a/x9VXr", organization_id: acmASCIS.id)
Image.create!(image_url: "https://imgur.com/a/gBtS5", organization_id: acmASCIS.id)

#Creating STP
aboutSTP = "To develop youth in various fields personally and technically through academic programs, projects, and events in a values oriented system, to take our part in providing a generation capable of playing its roles effectively towards itself, community and country."
STP = Organization.create!(name:"STP", phone:"01152084078", university: "Faculty of Engineering, Cairo University", 
      email:"STPOrganization@gmail.com", description: aboutSTP, logo: "https://imgur.com/a/G0ztb")

Image.create!(image_url: "https://imgur.com/a/YH7pP", organization_id: STP.id)
Image.create!(image_url: "https://imgur.com/a/ZD86Q", organization_id: STP.id)

#Creating Enactus
aboutEnactus = "Our mission is to bring together the top leaders of today and tomorrow to create a better, more sustainable world through the positive power of business."
Enactus = Organization.create!(name:"Enactus", phone:"0224923769", university: "Cairo University", 
      email:"EnactusCairo@gmail.com", description: aboutEnactus, logo: "https://imgur.com/a/enaH2")

Image.create!(image_url: "https://imgur.com/a/6zdJg", organization_id: Enactus.id)
Image.create!(image_url: "https://imgur.com/a/Ogpcx", organization_id: Enactus.id)

#Creating SSS
aboutSSS = "The name Student's Scientific Society is a very brief summary to its goals, as it was constructed for students of a scientific field, which is medicine, through which they have their own unique society thus supplying them with the suitable atmosphere that qualifies them to be interactive medical students in their faculty and professional & skillful doctors in their society."
SSS = Organization.create!(name:"SSS", phone:"0224923652", university: "Faculty of medicine, Cairo University", 
      email:"SSSKasrAlAiny@gmail.com", description: aboutSSS, logo: "https://imgur.com/a/6ZRTZ")

Image.create!(image_url: "https://imgur.com/a/6zdJg", organization_id: SSS.id)
Image.create!(image_url: "https://imgur.com/a/Ogpcx", organization_id: SSS.id)

#Creating ESL
aboutESL = "It is the First Student Laboratory to provide a suitable work environment with all the needed material and space without any restrictions on thoughts or creativity for student projects."
ESL = Organization.create!(name:"ESL", phone:"01147905325", university: "Faculty of Engineering, Cairo University", 
      email:"ESLCUFE@gmail.com", description: aboutESL, logo: "https://imgur.com/a/tbkqV")

Image.create!(image_url: "https://imgur.com/a/Q0aHX", organization_id: ESL.id)
Image.create!(image_url: "https://imgur.com/a/TA9eE", organization_id: ESL.id)

#Creating some random organizations
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org1@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org2@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org3@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org4@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org5@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org6@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org7@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org8@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org9@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org10@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org11@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")
Organization.create!(name:Faker::Company.name, phone:Faker::PhoneNumber.phone_number, university: Faker::Educator.university, 
      email: "org12@gmail.com", description: Faker::Lorem.sentence, logo: "https://imgur.com/a/PA1xr")

#Creating some users
User.create!(name: "Mohammed", email: "Mohammed@gmail.com", password: "hackmeifyoucan")
User.create!(name: "Ahmed Gamal", email: "Ahmed@gmail.com", password: "hobalmath2shta8al")
User.create!(name: "Mina Magdy", email: "Magdy@gmail.com", password: "ma3lesh32322")
User.create!(name: "Omar Hashim", email: "OmarHashim@gmail.com", password: "mathgames?")
u_id = User.create!(name: "Sayed", email: "Sayed@gmail.com", password: "5odonyma3ako").id
User.create!(name: Faker::Name.name, email: "user1@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user2@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user3@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user4@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user5@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user6@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user7@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user8@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user9@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user10@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user11@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user12@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user13@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user14@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user15@gmail.com", password: Faker::Internet.password(8))
User.create!(name: Faker::Name.name, email: "user16@gmail.com", password: Faker::Internet.password(8))


#Creating Ardunio workshop
Ardunio = Workshop.create!(title:"Ardunio from zero to hero", description:"Learn Ardunio and get started with microcontrollers.", date: Date.parse("Jan 3 2018"),
                  branch_id: MakanBr.id, organization_id: IEEE.id)



#Creating Git workshop
Git = Workshop.create!(title:"Git started", description:"Learn github", date: Date.parse("Dec 29 2017"),
                  branch_id: MaqarBr.id, organization_id: STP.id)

Image.create!(image_url: "https://imgur.com/a/es6fw", workshop_id: Git.id)


#Creating random workshops
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)
Workshop.create!(title: Faker::Lorem.word, description:Faker::Company.catch_phrase, date:Faker::Date.forward(23),
                  branch_id: Branch.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id)


#Creating random reviews
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, branch_id: Branch.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)
Review.create!(feedback: Faker::Lorem.sentence, rating: 5, organization_id: Organization.all.to_a.sample.id, user_id: User.all.to_a.sample.id)


#Creating random positions
Position.create!(user_id: User.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, organization_id: Organization.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, workspace_id: Workspace.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, workspace_id: Workspace.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, workspace_id: Workspace.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, workspace_id: Workspace.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, workspace_id: Workspace.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, branch_id: Branch.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, branch_id: Branch.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, branch_id: Branch.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, branch_id: Branch.all.to_a.sample.id, title: Faker::Job.title)
Position.create!(user_id: User.all.to_a.sample.id, branch_id: Branch.all.to_a.sample.id, title: Faker::Job.title)



#creating some images for workshops
Image.create!(image_url: "https://i.imgur.com/YVhHdlV.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/lKTZtRu.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/MWso7vk.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/xhDbQrb.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/VVKXpiT.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/tD17x2A.jpg", workshop_id:  Workshop.all.to_a.sample.id)
Image.create!(image_url: "https://i.imgur.com/yCgXYJa.jpg", workshop_id:  Workshop.all.to_a.sample.id)