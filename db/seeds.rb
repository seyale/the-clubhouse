puts '🛀 Cleaning your database...'

puts '🧙🏻‍♂️ Cleaning User Games'
Participation.destroy_all
puts '🌬 Cleaning games...'
Game.destroy_all
puts '💆🏻‍♂️ Cleaning Users...'
User.destroy_all

# puts 'Creating Admin User...'
# admin = User.new
# admin.email = 'admin@theclubhaus.com'
# admin.first_name = 'Mr'
# admin.last_name = 'Admin'
# admin.password = '123456'
# admin.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/User_admin.svg/1024px-User_admin.svg.png"
# admin.save

puts 'Creating Users...'
  novak = User.new
  novak.email = "Novak@gmail.com"
  novak.password = '123456'
  novak.first_name = "Novak"
  novak.last_name = "Djokovic"
  novak.description = "Laugh as long as you breathe, love as long as you live!"
  novak.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Novak_Djokovic_Queen%27s_Club_2018.jpg/1200px-Novak_Djokovic_Queen%27s_Club_2018.jpg"
  novak.skill_level = 1
  novak.save

  rafael = User.new
  rafael.email = "Rafael@gmail.com"
  rafael.password = '123456'
  rafael.first_name = "Rafael"
  rafael.last_name = "Nadal"
  rafael.description = "Want to practice so I can beat my friend Novak one day!"
  rafael.remote_photo_url = "https://www.foxsportsasia.com/tachyon/2019/02/rafaelnadal-cropped_1rm0w3tzle6rk1r59wktceuf08.jpg"
  rafael.skill_level = 2
  rafael.save

  alex = User.new
  alex.email = "Alexander@gmail.com"
  alex.password = '123456'
  alex.first_name = "Alexander"
  alex.last_name = "Zverev"
  alex.description = "I am a German professional tennis player. I am the youngest player ranked in the top 5 by the Association of Tennis Professionals."
  alex.remote_photo_url = "https://cdn.newsapi.com.au/image/v1/4774fa05b76ea205f0e049a039ff5f51"
  alex.skill_level = 3
  alex.save

  roger = User.new
  roger.email = "Roger@gmail.com"
  roger.password = '123456'
  roger.first_name = "Roger"
  roger.last_name = "Federer"
  roger.description = "I am a Swiss tennis player looking to find new partners to practice with."
  roger.remote_photo_url = "https://studybreaks.com/wp-content/uploads/2017/07/Roger-Federer.jpg"
  roger.skill_level = 1
  roger.save

  juan = User.new
  juan.email = "Juan@gmail.com"
  juan.password = '123456'
  juan.first_name = "Juan"
  juan.last_name = "Martin del Potro"
  juan.description = "RAWR"
  juan.remote_photo_url = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/09/03/08/juan-martin-del-potro.jpg"
  juan.skill_level = 5
  juan.save

puts '☕️ Mid-point Tea break'
sleep(1)
puts '🏃 Resuming'

  database = User.new
  database.email = "Database@gmail.com"
  database.password = '123456'
  database.first_name = "Database"
  database.last_name = "Willson"
  database.description = "I am fresh in from the States looking to find some partners to really improve my game."
  database.remote_photo_url = "https://i.pinimg.com/originals/05/d3/28/05d3289735bd3c04ba4577c6e40bc29c.jpg"
  database.skill_level = 6
  database.save

  kei = User.new
  kei.email = "Kei@gmail.com"
  kei.password = '123456'
  kei.first_name = "Kei"
  kei.last_name = "Nishikori"
  kei.description = "I am Kei Nishikori and I am from Japan. Looking for someone to chill and grab a beer with."
  kei.remote_photo_url = "https://obj.shine.cn/files/2019/01/06/a731237e-cc1a-45d9-b214-aa0500e36a61_0.jpg"
  kei.skill_level = 3
  kei.save

  dominic = User.new
  dominic.email = "Dominic@gmail.com"
  dominic.password = '123456'
  dominic.first_name = "Dominic"
  dominic.last_name = "Thiem"
  dominic.description = "Want to play tennis but prefer having a fosters with the boys"
  dominic.remote_photo_url = "https://image.redbull.com/rbcom/052/2018-12-29/0f32cb0e-8afb-4904-aabf-121484d29407/0012/0/0/0/2133/3200/1500/1/dominic-thiem-tennis.jpg"
  dominic.skill_level = 2
  dominic.save

  john = User.new
  john.email = "John@gmail.com"
  john.password = '123456'
  john.first_name = "John"
  john.last_name = "Isner"
  john.description = "Looking to play some doubles with my buddy Kev."
  john.remote_photo_url = "https://tallguysfree.com/i/upload/2017/04/30/20170430220219-8007933f-xl.jpg"
  john.skill_level = 4
  john.save

  stefanos = User.new
  stefanos.email = "Stefanos@gmail.com"
  stefanos.password = '123456'
  stefanos.first_name = "Stefanos"
  stefanos.last_name = "Tsitsipas"
  stefanos.description = "Success isn't measured by money or power or social rank. Success is measured by your discipline and inner peace."
  stefanos.remote_photo_url = "https://usatftw.files.wordpress.com/2019/01/d861ac38-efb1-4166-aace-0719f96a7fed-stefanos-e1548003752216.jpg"
  stefanos.skill_level = 5
  stefanos.save

  abraham = User.new
  abraham.email = "abraham@gmail.com"
  abraham.password = '123456'
  abraham.first_name = "Abraham"
  abraham.last_name = "Guerra"
  abraham.description = "
I'm currently doing masters in engineering and I wanted to improve my coding skills in web development. I still have no specific idea on what to do after."
  abraham.remote_photo_url = "https://usatftw.files.wordpress.com/2019/01/d861ac38-efb1-4166-aace-0719f96a7fed-stefanos-e1548003752216.jpg"
  abraham.skill_level = 5
  abraham.save

  beatriz = User.new
  beatriz.email = "beatriz@gmail.com"
  beatriz.password = '123456'
  beatriz.first_name = "Beatriz"
  beatriz.last_name = "Barroso"
  beatriz.description = "I really think coding is the future and I want to be part of it. I would like to create my own products and be comfortable with developer skills."
  beatriz.remote_photo_url = "https://avatars3.githubusercontent.com/u/45077348?v=4"
  beatriz.skill_level = 5
  beatriz.save

  elif = User.new
  elif.email = "Elif@gmail.com"
  elif.password = '123456'
  elif.first_name = "Elif"
  elif.last_name = "Mentes"
  elif.description = "I was an architect before. I found out it is not the right profession for me. I want to be a professional programmer for the rest of my life."
  elif.remote_photo_url = "https://avatars2.githubusercontent.com/u/45936022?v=4"
  elif.skill_level = 5
  elif.save

  emanuel = User.new
  emanuel.email = "Emanuel@gmail.com"
  emanuel.password = '123456'
  emanuel.first_name = "Emanuel"
  emanuel.last_name = "Moniz"
  emanuel.description = "Former Student of Architecture. From Azores, but living in Lisbon. Freelancer worker in the last years in : Tech | WebDesign | Photo | Video | Design | 3D"
  emanuel.remote_photo_url = "https://avatars3.githubusercontent.com/u/10147715?v=4"
  emanuel.skill_level = 5
  emanuel.save

  fernando = User.new
  fernando.email = "Fernando@gmail.com"
  fernando.password = '123456'
  fernando.first_name = "Fernando"
  fernando.last_name = "G"
  fernando.description = "I been working as a Digital Media Specialist for over a decade and I want to learn code to expand my knowledge and find even better profesional opportunities."
  fernando.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tsiq7amhjprdz2cbnbx0.jpg"
  fernando.skill_level = 5
  fernando.save

  joão = User.new
  joão.email = "João@gmail.com"
  joão.password = '123456'
  joão.first_name = "João"
  joão.last_name = "Costa"
  joão.description = "I used to work in hospitality and I decided to join Le Wagon in order to switch careers. I am confident that after Le Wagon's bootcamp I will be able to have a better and brighter future ding something that I recently discovered I like!"
  joão.remote_photo_url = "https://avatars0.githubusercontent.com/u/46388982?v=4"
  joão.skill_level = 5
  joão.save

  miguel = User.new
  miguel.email = "Miguel@gmail.com"
  miguel.password = '123456'
  miguel.first_name = "Miguel"
  miguel.last_name = "Bernal"
  miguel.description = "I come from Peru,  worked as a consultant for several companies, until I realised I want to get some new skills like coding and learning more about web applications."
  miguel.remote_photo_url = "https://avatars3.githubusercontent.com/u/31628490?v=4"
  miguel.skill_level = 5
  miguel.save

  mona = User.new
  mona.email = "mona@gmail.com"
  mona.password = '123456'
  mona.first_name = "Mona"
  mona.last_name = "Chung"
  mona.description = "Before coming to Le Wagon I was living in Hong Kong and working at the Chinese University of Hong Kong as a research assistant.
My education background was in Geography... and we geographers are always curious about the world."
  mona.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/t5ajqdt3diuvxsaufioi.jpg"
  mona.skill_level = 5
  mona.save

  nuno = User.new
  nuno.email = "nuno@gmail.com"
  nuno.password = '123456'
  nuno.first_name = "Nuno"
  nuno.last_name = "Loureiro"
  nuno.description = "After 8 years working in banking and management consultancy, I have decided to join Le Wagon and follow my dream of designing, building and managing my own digital products."
  nuno.remote_photo_url = "https://avatars3.githubusercontent.com/u/41473948?v=4"
  nuno.skill_level = 5
  nuno.save

  otiavio = User.new
  otiavio.email = "otiavio@gmail.com"
  otiavio.password = '123456'
  otiavio.first_name = "Otiavio"
  otiavio.last_name = "Serra"
  otiavio.description = "Graduated and Master in Management, used to work in the startup enviroment already, but decided to migrate to work as a developer and build cool products."
  otiavio.remote_photo_url = "https://avatars3.githubusercontent.com/u/31896900?v=4"
  otiavio.skill_level = 5
  otiavio.save

  paulo = User.new
  paulo.email = "paulo@gmail.com"
  paulo.password = '123456'
  paulo.first_name = "Paulo"
  paulo.last_name = "Correia"
  paulo.description = "What else."
  paulo.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/vnlkdtuj6n4g5osvdjzp.jpg"
  paulo.skill_level = 5
  paulo.save

  pedro = User.new
  pedro.email = "pedro@gmail.com"
  pedro.password = '123456'
  pedro.first_name = "Pedro"
  pedro.last_name = "Agostinho"
  pedro.description = "I have been a Management Consultant for the past 5 years, mainly focusing on the Financial Services industry. My goal with the Le Wagon bootcamp is to be able to achieve full independence on setting up web applications, so that I can build and launch personal projects."
  pedro.remote_photo_url = "https://avatars0.githubusercontent.com/u/45018497?v=4"
  pedro.skill_level = 5
  pedro.save

  romain = User.new
  romain.email = "romain@gmail.com"
  romain.password = '123456'
  romain.first_name = "Romain"
  romain.last_name = "Aubert"
  romain.description = "Romain has worked as an entrepreneur-in-residence, Product Marketing and PR for startups, VC, corporations and the French government. In his spare time, he enjoys writing about privacy and community building. In a previous life, he worked as an investment analyst for a USD 8 billion investment funds and also had a short career at sea as a skipper. I'm learning how to code because tennis is eating the world-- Marc Andreessen, a16z"
  romain.remote_photo_url = "https://avatars2.githubusercontent.com/u/46404814?v=4"
  romain.skill_level = 5
  romain.save

  rui = User.new
  rui.email = "rui@gmail.com"
  rui.password = '123456'
  rui.first_name = "Rui"
  rui.last_name = "Magalhaes"
  rui.description = "Before joining Le Wagon I did a Master degree in Mechanical Engineering and I work on the field for 1 year. However,  the work as a Mechanical Engineering was not what I was expecting. Because of that I decided to join Le Wagon Bootcamp hoping that I can find an awesome and challenging job for my future :)"
  rui.remote_photo_url = "https://avatars2.githubusercontent.com/u/45366558?v=4"
  rui.skill_level = 5
  rui.save
#  kevin1 = User.new
#  kevin1.email = "kevin@gmail.com"
#  kevin1.password = '123456'
#  kevin1.first_name = "Kevin"
#  kevin1.last_name = "Willson"
#  kevin1.description = "I am fresh in from the States looking to find some partners to really improve my game."
#  kevin1.remote_photo_url = "https://avatars2.githubusercontent.com/u/46444582?v=4"
#  kevin1.skill_level = 8
#  kevin1.save


#  game1 = Game.new
#  game1.host = kevin
#  game1.skill_level = 5
#  game1.date = Date.new
#  game1.time = Time.now
#  game1.game_type = "Singles"
#  game1.additional_info = "Max wants to chase a ball"
#  game1.save
#
#  game2 = Game.new
#  game2.host = dominic
#  game2.skill_level = 3
#  game2.date = Date.new
#  game2.time = Time.now
#  game2.game_type = "Singles"
#  game2.additional_info = "Max wants to chase a ball"
#  game2.save
#
#  game3 = Game.new
#  game3.host = rafael
#  game3.skill_level = 8
#  game3.date = Date.new
#  game3.time = Time.now
#  game3.game_type = "Singles"
#  game3.additional_info = "Max wants to chase a ball"
#  game3.save
#
#  game4 = Game.new
#  game4.host = kevin
#  game4.skill_level = 1
#  game4.date = Date.new
#  game4.time = Time.now
#  game4.game_type = "Singles"
#  game4.additional_info = "Max wants to chase a ball"
#  game4.save
#
#  game5 = Game.new
#  game5.host = rafael
#  game5.skill_level = 3
#  game5.date = Date.new
#  game5.time = Time.now
#  game5.game_type = "Singles"
#  game5.additional_info = "Max wants to chase a ball"
#  game5.save
#
#  game6 = Game.new
#  game6.host = dominic
#  game6.skill_level = 2
#  game6.date = Date.new
#  game6.time = Time.now
#  game6.game_type = "Singles"
#  game6.additional_info = "Max wants to chase a ball"
#  game6.save
#
#  game7 = Game.new
#  game7.host = rafael
#  game7.skill_level = 7
#  game7.date = Date.new
#  game7.time = Time.now
#  game7.game_type = "Doubles"
#  game7.additional_info = "Max wants to chase a ball"
#  game7.save
#
#  game8 = Game.new
#  game8.host = novak
#  game8.skill_level = 9
#  game8.date = Date.new
#  game8.time = Time.now
#  game8.game_type = "Doubles"
#  game8.additional_info = "Max wants to chase a ball"
#  game8.save
#
#  participation1 = Participation.new
#  participation1.user = novak
#  participation1.game = game7
#  participation1.save
#  participation2 = Participation.new
#  participation2.user = dominic
#  participation2.game = game7
#  participation2.save
#  participation3 = Participation.new
#  participation3.user = kevin
#  participation3.game = game7
#  participation3.save
#  game7.status = "completed"
#  game7.save
#
#  participation2 = Participation.new
#  participation2.user = novak
#  participation2.game = game5
#  game5.status = "completed"
#  game5.save
#  participation2.save


 # IMAGES_CATS = ["https://res.cloudinary.com/ddwfkdfyx/image/upload/v1551439643/Cats/lily-banse-348257-unsplash.jpg", "http://res.cloudinary.com/ddwfkdfyx/image/upload/v1551444456/Cats/anton-darius-thesollers-590562-unsplash.jpg", "https://res.cloudinary.com/ddwfkdfyx/image/upload/v1551439635/Cats/halanna-halila-557324-unsplash.jpg", "https://res.cloudinary.com/ddwfkdfyx/image/upload/v1551439627/Cats/dan-wayman-1298943-unsplash.jpg", "http://res.cloudinary.com/ddwfkdfyx/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1551439611/Cats/max-baskakov-1318019-unsplash.jpg"]
 # ADRESSES_CATS =["Marquês de Pombal,  Lisbon", "Bairro Alto, Lisbon", "Alfama, Lisbon", "Chiado, Lisbon", "Cais do Sodre, Lisbon"]
 # puts 'Creating Cats...'
 # 4.times do |i|
 #   animal = Animal.new
 #   animal.species = "Cat"
 #   animal.name = Faker::Creature::Cat.name
 #   animal.age = rand(1..10)
 #   animal.owner = User.all.sample
 #   animal.remote_photo_url = IMAGES_CATS.shift
 #   animal.description = "#{animal.name} is a #{animal.species} that was born #{animal.age} years ago. #{animal.name} likes long walks on the beach and pina colada."
 #   animal.address = ADRESSES_CATS.shift
 #   animal.save
 # end

puts 'Finished!'
