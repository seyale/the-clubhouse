puts '🛀 Cleaning your database...'

puts '🧙🏻‍♂️ Cleaning User Games'
UsersGame.destroy_all
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
admin.save

puts 'Creating Users...'
sleep(1)
  novak = User.new
  novak.email = "NovakDjokovic@gmail.com"
  novak.password = '123456'
  novak.first_name = "Novak"
  novak.last_name = "Djokovic"
  novak.description = "Laugh as long as you breathe, love as long as you live!"
  # novak.remote_photo_url = ""
  novak.skill_level = 1
  novak.save

  rafael = User.new
  rafael.email = "RafaelNadal@gmail.com"
  rafael.password = '123456'
  rafael.first_name = "Rafael"
  rafael.last_name = "Nadal"
  rafael.description = "Want to practice so I can beat my friend Novak one day!"
  # rafael.remote_photo_url = ""
  rafael.skill_level = 2
  rafael.save

  alex = User.new
  alex.email = "AlexanderZverev@gmail.com"
  alex.password = '123456'
  alex.first_name = "Alexander"
  alex.last_name = "Zverev"
  alex.description = "I am a German professional tennis player. I am the youngest player ranked in the top 5 by the Association of Tennis Professionals."
  # alex.remote_photo_url = ""
  alex.skill_level = 3
  alex.save

  roger = User.new
  roger.email = "RogerFederer@gmail.com"
  roger.password = '123456'
  roger.first_name = "Roger"
  roger.last_name = "Federer"
  roger.description = "I am a Swiss tennis player looking to find new patners to practice with."
  # roger.remote_photo_url = ""
  roger.skill_level = 4
  roger.save

  juan = User.new
  juan.email = "JuanMartindelPotro@gmail.com"
  juan.password = '123456'
  juan.first_name = "Juan"
  juan.last_name = "Martin del Potro"
  juan.description = ""
  # juan.remote_photo_url = ""
  juan.skill_level = 5
  juan.save

puts '☕️ Mid-point Tea break'
sleep(5)
puts '🏃 Resuming'
sleep(1)

  kevin = User.new
  kevin.email = "KevinWillson@gmail.com"
  kevin.password = '123456'
  kevin.first_name = "Kevin"
  kevin.last_name = "Willson"
  kevin.description = "I am fresh in from the States looking to find some partners to really improve my game."
  # kevin.remote_photo_url = ""
  kevin.skill_level = 6
  kevin.save

  kei = User.new
  kei.email = "KeiNishikori@gmail.com"
  kei.password = '123456'
  kei.first_name = "Kei"
  kei.last_name = "Nishikori"
  kei.description = "I am Kei Nishikori and I am from Japan. Looking for someone to chill and grab a beer with."
  # kei.remote_photo_url = ""
  kei.skill_level = 7
  kei.save

  dominic = User.new
  dominic.email = "DominicThiem@gmail.com"
  dominic.password = '123456'
  dominic.first_name = "Dominic"
  dominic.last_name = "Thiem"
  dominic.description = "Want to play tennis but prefer having a fosters with the boys"
  # dominic.remote_photo_url = ""
  dominic.skill_level = 8
  dominic.save

  john = User.new
  john.email = "JohnIsner@gmail.com"
  john.password = '123456'
  john.first_name = "John"
  john.last_name = "Isner"
  john.description = "Looking to play some doubles with my buddy Kev."
  # john.remote_photo_url = ""
  john.skill_level = 9
  john.save

  stefanos = User.new
  stefanos.email = "StefanosTsitsipas@gmail.com"
  stefanos.password = '123456'
  stefanos.first_name = "Stefanos"
  stefanos.last_name = "Tsitsipas"
  stefanos.description = "Success isn't measured by money or power or social rank. Success is measured by your discipline and inner peace."
  # stefanos.remote_photo_url = ""
  stefanos.skill_level = 10
  stefanos.save


  game1 = Game.new
  game1.user = kevin
  game1.skill_level = 5
  game1.date = Date.new
  game1.time = Time.now
  game1.additional_info = "Max wants to chase a ball"
  game1.save

  game2 = Game.new
  game2.user = dominic
  game2.skill_level = 3
  game2.date = Date.new
  game2.time = Time.now
  game2.additional_info = "Max wants to chase a ball"
  game2.save

  game3 = Game.new
  game3.user = rafael
  game3.skill_level = 8
  game3.date = Date.new
  game3.time = Time.now
  game3.additional_info = "Max wants to chase a ball"
  game3.save

  game4 = Game.new
  game4.user = kevin
  game4.skill_level = 1
  game4.date = Date.new
  game4.time = Time.now
  game4.additional_info = "Max wants to chase a ball"
  game4.save

  game5 = Game.new
  game5.user = rafael
  game5.skill_level = 3
  game5.date = Date.new
  game5.time = Time.now
  game5.additional_info = "Max wants to chase a ball"
  game5.save

  game6 = Game.new
  game6.user = dominic
  game6.skill_level = 2
  game6.date = Date.new
  game6.time = Time.now
  game6.additional_info = "Max wants to chase a ball"
  game6.save

  game7 = Game.new
  game7.user = rafael
  game7.skill_level = 7
  game7.date = Date.new
  game7.time = Time.now
  game7.additional_info = "Max wants to chase a ball"
  game7.save

  game8 = Game.new
  game8.user = novak
  game8.skill_level = 9
  game8.date = Date.new
  game8.time = Time.now
  game8.additional_info = "Max wants to chase a ball"
  game8.save


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
