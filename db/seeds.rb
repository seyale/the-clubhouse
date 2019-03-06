puts '🛀 Cleaning your database...'

puts '🧙🏻‍♂️ Cleaning User Games'
Participation.destroy_all
sleep(1)
puts '🌬 Cleaning games...'
Game.destroy_all
sleep(1)
puts '💆🏻‍♂️ Cleaning Users...'
User.destroy_all
sleep(1)

puts 'Creating Admin User...'
sleep(1)
admin = User.new
admin.email = 'admin@theclubhaus.com'
admin.first_name = 'Mr'
admin.last_name = 'Admin'
admin.password = '123456'
admin.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/User_admin.svg/1024px-User_admin.svg.png"
admin.save

puts 'Creating Users...'
sleep(1)
  novak = User.new
  novak.email = "NovakDjokovic@gmail.com"
  novak.password = '123456'
  novak.first_name = "Novak"
  novak.last_name = "Djokovic"
  novak.description = "Laugh as long as you breathe, love as long as you live!"
  novak.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Novak_Djokovic_Queen%27s_Club_2018.jpg/1200px-Novak_Djokovic_Queen%27s_Club_2018.jpg"
  novak.skill_level = 1
  novak.save

  rafael = User.new
  rafael.email = "RafaelNadal@gmail.com"
  rafael.password = '123456'
  rafael.first_name = "Rafael"
  rafael.last_name = "Nadal"
  rafael.description = "Want to practice so I can beat my friend Novak one day!"
  rafael.remote_photo_url = "https://www.foxsportsasia.com/tachyon/2019/02/rafaelnadal-cropped_1rm0w3tzle6rk1r59wktceuf08.jpg"
  rafael.skill_level = 2
  rafael.save

  alex = User.new
  alex.email = "AlexanderZverev@gmail.com"
  alex.password = '123456'
  alex.first_name = "Alexander"
  alex.last_name = "Zverev"
  alex.description = "I am a German professional tennis player. I am the youngest player ranked in the top 5 by the Association of Tennis Professionals."
  alex.remote_photo_url = "https://cdn.newsapi.com.au/image/v1/4774fa05b76ea205f0e049a039ff5f51"
  alex.skill_level = 3
  alex.save

  roger = User.new
  roger.email = "RogerFederer@gmail.com"
  roger.password = '123456'
  roger.first_name = "Roger"
  roger.last_name = "Federer"
  roger.description = "I am a Swiss tennis player looking to find new patners to practice with."
  roger.remote_photo_url = "https://studybreaks.com/wp-content/uploads/2017/07/Roger-Federer.jpg"
  roger.skill_level = 4
  roger.save

  juan = User.new
  juan.email = "JuanMartindelPotro@gmail.com"
  juan.password = '123456'
  juan.first_name = "Juan"
  juan.last_name = "Martin del Potro"
  juan.description = "RAWR"
  juan.remote_photo_url = "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/09/03/08/juan-martin-del-potro.jpg"
  juan.skill_level = 5
  juan.save

puts '☕️ Mid-point Tea break'
sleep(5)
puts '🏃 Resuming'
sleep(1)

  kevin = User.new
  kevin.email = "Database@gmail.com"
  kevin.password = '123456'
  kevin.first_name = "Database"
  kevin.last_name = "Willson"
  kevin.description = "I am fresh in from the States looking to find some partners to really improve my game."
  kevin.remote_photo_url = "https://i.pinimg.com/originals/05/d3/28/05d3289735bd3c04ba4577c6e40bc29c.jpg"
  kevin.skill_level = 6
  kevin.save

  kei = User.new
  kei.email = "KeiNishikori@gmail.com"
  kei.password = '123456'
  kei.first_name = "Kei"
  kei.last_name = "Nishikori"
  kei.description = "I am Kei Nishikori and I am from Japan. Looking for someone to chill and grab a beer with."
  kei.remote_photo_url = "https://obj.shine.cn/files/2019/01/06/a731237e-cc1a-45d9-b214-aa0500e36a61_0.jpg"
  kei.skill_level = 7
  kei.save

  dominic = User.new
  dominic.email = "DominicThiem@gmail.com"
  dominic.password = '123456'
  dominic.first_name = "Dominic"
  dominic.last_name = "Thiem"
  dominic.description = "Want to play tennis but prefer having a fosters with the boys"
  dominic.remote_photo_url = "https://image.redbull.com/rbcom/052/2018-12-29/0f32cb0e-8afb-4904-aabf-121484d29407/0012/0/0/0/2133/3200/1500/1/dominic-thiem-tennis.jpg"
  dominic.skill_level = 8
  dominic.save

  john = User.new
  john.email = "JohnIsner@gmail.com"
  john.password = '123456'
  john.first_name = "John"
  john.last_name = "Isner"
  john.description = "Looking to play some doubles with my buddy Kev."
  john.remote_photo_url = "https://tallguysfree.com/i/upload/2017/04/30/20170430220219-8007933f-xl.jpg"
  john.skill_level = 9
  john.save

  stefanos = User.new
  stefanos.email = "StefanosTsitsipas@gmail.com"
  stefanos.password = '123456'
  stefanos.first_name = "Stefanos"
  stefanos.last_name = "Tsitsipas"
  stefanos.description = "Success isn't measured by money or power or social rank. Success is measured by your discipline and inner peace."
  stefanos.remote_photo_url = "https://usatftw.files.wordpress.com/2019/01/d861ac38-efb1-4166-aace-0719f96a7fed-stefanos-e1548003752216.jpg"
  stefanos.skill_level = 10
  stefanos.save


  game1 = Game.new
  game1.host = kevin
  game1.skill_level = 5
  game1.date = Date.new
  game1.time = Time.now
  game1.game_type = "Singles"
  game1.additional_info = "Max wants to chase a ball"
  game1.save

  game2 = Game.new
  game2.host = dominic
  game2.skill_level = 3
  game2.date = Date.new
  game2.time = Time.now
  game2.game_type = "Singles"
  game2.additional_info = "Max wants to chase a ball"
  game2.save

  game3 = Game.new
  game3.host = rafael
  game3.skill_level = 8
  game3.date = Date.new
  game3.time = Time.now
  game3.game_type = "Singles"
  game3.additional_info = "Max wants to chase a ball"
  game3.save

  game4 = Game.new
  game4.host = kevin
  game4.skill_level = 1
  game4.date = Date.new
  game4.time = Time.now
  game4.game_type = "Singles"
  game4.additional_info = "Max wants to chase a ball"
  game4.save

  game5 = Game.new
  game5.host = rafael
  game5.skill_level = 3
  game5.date = Date.new
  game5.time = Time.now
  game5.game_type = "Singles"
  game5.additional_info = "Max wants to chase a ball"
  game5.save

  game6 = Game.new
  game6.host = dominic
  game6.skill_level = 2
  game6.date = Date.new
  game6.time = Time.now
  game6.game_type = "Singles"
  game6.additional_info = "Max wants to chase a ball"
  game6.save

  game7 = Game.new
  game7.host = rafael
  game7.skill_level = 7
  game7.date = Date.new
  game7.time = Time.now
  game7.game_type = "Doubles"
  game7.additional_info = "Max wants to chase a ball"
  game7.save

  game8 = Game.new
  game8.host = novak
  game8.skill_level = 9
  game8.date = Date.new
  game8.time = Time.now
  game8.game_type = "Doubles"
  game8.additional_info = "Max wants to chase a ball"
  game8.save

  participation1 = Participation.new
  participation1.user = novak
  participation1.game = game7
  game7.status = "completed"
  game7.save
  participation1.save

  participation2 = Participation.new
  participation2.user = rafael
  participation2.game = game5
  game5.status = "completed"
  game5.save
  participation2.save
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
