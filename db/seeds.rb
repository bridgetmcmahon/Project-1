# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

b1 = Book.create :title => "The Alchemist", :cover => "https://www.booktopia.com.au/http_coversbooktopiacomau/big/9780062315007/the-alchemist-25th-anniversary.jpg", :isbn => '9780062416216', :synopsis => "Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams."
b2 = Book.create :title => "Sapiens: A Brief History of Humankind", :cover => "https://images-na.ssl-images-amazon.com/images/I/51Sn8PEXwcL.jpg", :isbn => '9781448190690', :synopsis => "Fire gave us power. Farming made us hungry for more. Money gave us purpose. Science made us deadly. This is the thrilling account of our extraordinary history – from insignificant apes to rulers of the world. Earth is 4.5 billion years old. In just a fraction of that time, one species among countless others has conquered it: us. In this bold and provocative book, Yuval Noah Harari explores who we are, how we got here and where we’re going."
b3 = Book.create :title => "The Adventures of Sherlock Holmes", :cover => "https://strandmag.com/wp-content/uploads/2016/06/Enlarge-Image-The-Adventures-of-Sherlock-Holmes-and-Other-Stories-by-Doyle-Arthur-Conan-Sir-Cramer-Michael-A.-Ph.D..jpeg", :synopsis => "Presenting 12 tales starring the legendary British detective Sherlock Holmes, this 1892 book is Arthur Conan Doyle's first short-story collection. The mystery compilation includes some of Holmes's finest cases with his dutiful sidekick, Doctor Watson, most notably 'A Scandal in Bohemia,' in which Holmes matches wits with the crafty former lover of a European king. Also featured is 'The Adventure of the Red-Headed League,' a study in misdirection that unfolds to become a much larger scheme. The stories, initially published in the Strand Magazine, are essential reading for Holmes fans."
b4 = Book.create :title => "The Count of Monte Cristo", :cover => "https://images.gr-assets.com/books/1330242790l/1088140.jpg", :synopsis => "When Edmond Dantes is imprisoned for a crime he didn't commit, he vows to escape and destroy those who betrayed him. With his former life a distant memory, revenge drives him forward. Using the fortune left to him by Abbe Faria, he transforms himself into the powerful and enigmatic Count of Monte Cristo, and systematically hunts down the men who put him behind bars. Acting as destiny's agent, Dantes must face not only his enemies, but also the moral dilemmas raised by his ruthless quest for justice. With skill and mercilessness, he manipulates those around him to do his bidding, leaving a trail of social carnage in his wake. Can the man who once had so much to live for, complete his mission and find peace, or will fate thwart his plan at the very last?"
b5 = Book.create :title => "Nine Perfect Strangers", :cover => "https://www.booktopia.com.au/http_coversbooktopiacomau/big/9781743534922/nine-perfect-strangers.jpg", :isbn => '9781760780982', :synopsis => "The retreat at health and wellness resort Tranquillum House promises total transformation. Nine stressed city dwellers are keen to drop their literal and mental baggage, and absorb the meditative ambience while enjoying their hot stone massages. Watching over them is the resort's director, a woman on a mission to reinvigorate their tired bodies and minds. These nine perfect strangers have no idea what is about to hit them."
b6 = Book.create :title => "The Tattooist of Auschwitz", :cover => "https://dynamic.indigoimages.ca/books/0062877003.jpg?altimages=false&scaleup=true&maxheight=515&width=380&quality=85&sale=43&lang=en", :synopsis => "Lale Sokolov is well-dressed, a charmer, a ladies’ man. He is also a Jew. On the first transport from Slovakia to Auschwitz in 1942, Lale immediately stands out to his fellow prisoners. In the camp, he is looked up to, looked out for, and put to work in the privileged position of Tätowierer– the tattooist – to mark his fellow prisoners, forever. One of them is a young woman, Gita, who steals his heart at first glance.
His life given new purpose, Lale does his best through the struggle and suffering to use his position for good.
This story, full of beauty and hope, is based on years of interviews author Heather Morris conducted with real-life Holocaust survivor and Auschwitz- Birkenau tattooist Ludwig (Lale) Sokolov. It is heart-wrenching, illuminating, and unforgettable."

b7 = Book.create :title => "Brave New World", :cover => "https://images-na.ssl-images-amazon.com/images/I/51Cj3fsiwdL.jpg", :synopsis => "Far in the future, the World Controllers have created the ideal society. Through clever use of genetic engineering, brainwashing and recreational sex and drugs all its members are happy consumers. Bernard Marx seems alone harbouring an ill-defined longing to break free. A visit to one of the few remaining Savage Reservations where the old, imperfect life still continues, may be the cure for his distress..."
b8 = Book.create :title => "The Demon Haunted World: Science as a Candle in the Dark", :cover => "https://images-na.ssl-images-amazon.com/images/I/71VkSXM%2BPKL.jpg", :isbn => '9780307801043', :synopsis => "Casting a wide net through history and culture, Sagan examines and authoritatively debunks such celebrated fallacies of the past as witchcraft, faith healing, demons, and UFOs. And yet, disturbingly, in today's so-called information age, pseudoscience is burgeoning with stories of alien abduction, channeling past lives, and communal hallucinations commanding growing attention and respect. As Sagan demonstrates with lucid eloquence, the siren song of unreason is not just a cultural wrong turn but a dangerous plunge into darkness that threatens our most basic freedoms."
b9 = Book.create :title => "The Odyssey", :cover => "https://images-na.ssl-images-amazon.com/images/I/817y4henSYL.jpg", :isbn => '9780140268867', :synopsis => "If the Iliad is the world's greatest war epic, then the Odyssey is literature's grandest evocation of everyman's journey through life. Odysseus' reliance on his wit and wiliness for survival in his encounters with divine and natural forces, during his ten-year voyage home to Ithaca after the Trojan War, is at once the timeless human story and an individual test of moral endurance. In the myths and legends that are retold here, Fagles has captured the energy and poetry of Homer's original in a bold, contemporary idiom, and given us an Odyssey to read aloud, to savour, and to treasure for its sheer lyrical mastery. Renowned classicist Bernard Knox's superb Introduction and textual commentary provide new insights and background information for the general reader and scholar alike, intensifying the strength of Fagles' introduction. This is an Odyssey to delight both the classicist and the public at large, and to captivate a new generation of Homer's students."
b10 = Book.create :title => "Harry Potter and the Philosopher's Stone", :cover => "https://media.bloomsbury.com/rep/bj/9780747532699.jpg", :synopsis => "Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry's eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure isabout to begin!"
b11 = Book.create :title => "Harry Potter and the Chamber of Secrets", :cover => "https://images-na.ssl-images-amazon.com/images/I/51kdLYNJFsL._SX326_BO1,204,203,200_.jpg", :synopsis => "Harry Potter's summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone... Dobby's sinister predictions seem to be coming true."
b12 = Book.create :title => "Harry Potter and the Prisoner of Azkaban", :cover => "https://images-na.ssl-images-amazon.com/images/I/51vsSNLsBgL._SX326_BO1,204,203,200_.jpg", :synopsis => "For twelve long years, the dread fortress of Azkaban held an infamous prisoner named Sirius Black. Convicted of killing thirteen people with a single curse, he was said to be the heir apparent to the Dark Lord, Voldemort. Now he has escaped, leaving only two clues as to where he might be headed: Harry Potter's defeat of You-Know-Who was Black's downfall as well. And the Azkaban guards heard Black muttering in his sleep, 'He's at Hogwarts . . . he's at Hogwarts.' Harry Potter isn't safe, not even within the walls of his magical school, surrounded by his friends. Because on top of it all, there may well be a traitor in their midst."
b13 = Book.create :title => "Harry Potter and the Goblet of Fire", :cover => "https://media.bloomsbury.com/rep/bj/9780747546245.jpg", :synopsis => "The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn't stop Harry dreaming that he will win the competition. Then at Hallowe'en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!"
b14 = Book.create :title => "Harry Potter and the Order of the Phoenix", :cover => "https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Harry_Potter_and_the_Order_of_the_Phoenix.jpg/220px-Harry_Potter_and_the_Order_of_the_Phoenix.jpg", :synopsis => "Dark times have come to Hogwarts. After the Dementors' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord's return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort's savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time..."
b15 = Book.create :title => "Harry Potter and the Half-Blood Prince", :cover => "https://media.bloomsbury.com/rep/bj/9780747581086.jpg", :synopsis => "When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort's darkest secrets, and Dumbledore prepares him to face his destiny..."
b16 = Book.create :title => "Harry Potter and the Deathly Hallows", :cover => "https://media.bloomsbury.com/rep/bj/9780747591054.jpg", :synopsis => "As he climbs into the sidecar of Hagrid's motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy..."
b17 = Book.create :title => "Le Petit Prince", :cover => "https://images-na.ssl-images-amazon.com/images/I/51364NhwLoL._SX329_BO1,204,203,200_.jpg", :synopsis => "After being stranded in a desert after a crash, a pilot comes in contact with a captivating little prince who recounts his journey from planet to planet and his search for what is most important in life. For over sixty-five years Antoine de Saint-Exupery's classic,The Little Prince, has captured readers' hearts. The whimsical story with a fairy tale feel has sold over 3 million copies in all formats. This exciting pop-up edition includes the complete original text accompanied by Saint-Exupery's beautiful illustrations brought to life through paper engineering. Perfect for longtime fans and those meeting the little prince for the first time!"
b18 = Book.create :title => "Nineteen Eighty-Four", :cover => "https://images-na.ssl-images-amazon.com/images/I/71Y5qibEolL.jpg", :synopsis => "In 1984, London is a grim city in the totalitarian state of Oceania where Big Brother is always watching you and the Thought Police can practically read your mind. Winston Smith is a man in grave danger for the simple reason that his memory still functions. Drawn into a forbidden love affair, Winston finds the courage to join a secret revolutionary organization called The Brotherhood, dedicated to the destruction of the Party. Together with his beloved Julia, he hazards his life in a deadly match against the powers that be."
b19 = Book.create :title => "I Am Pilgrim", :cover => "https://images.gr-assets.com/books/1403345411l/18144124.jpg", :isbn => '9781439177723', :synopsis => "A breakneck race against time…and an implacable enemy. An anonymous young woman murdered in a run-down hotel, all identifying characteristics dissolved by acid. A father publicly beheaded in the blistering heat of a Saudi Arabian public square. A notorious Syrian biotech expert found eyeless in a Damascus junkyard. Smoldering human remains on a remote mountainside in Afghanistan. A flawless plot to commit an appalling crime against humanity. One path links them all, and only one man can make the journey. Pilgrim."
b20 = Book.create :title => "Jaws", :cover => "https://images-na.ssl-images-amazon.com/images/I/81LzGlJFPYL._RI_.jpg", :isbn => '9781743287682', :synopsis => "It was just another day in the life of a small Atlantic resort until the terror from the deep came to prey on unwary holiday makers. The first sign of trouble - a warning of what was to come - took the form of a young woman's body, or what was left of it, washed up on the long, white stretch of beach... A summer of terror has begun."

Author.destroy_all

a1 = Author.create :name => "Paulo Coelho", :image => "https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/PAULO-COELHO-Xavier-Gonzalez-AUTHOR-PHOTO-2-1541719532.jpg"
a2 = Author.create :name => "Yuval Noah Harari", :image => "https://www.sciencesetavenir.fr/assets/img/2017/09/20/cover-r4x3w1000-59c27e9de0f8f-webyuval-edit-1.jpg"
a3 = Author.create :name => "Sir Arthur Conan Doyle", :image => "https://upload.wikimedia.org/wikipedia/commons/b/bb/Conan_doyle.jpg"
a4 = Author.create :name => "Alexandre Dumas", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Alexander_Dumas_p%C3%A8re_par_Nadar_-_Google_Art_Project.jpg/220px-Alexander_Dumas_p%C3%A8re_par_Nadar_-_Google_Art_Project.jpg"
a5 = Author.create :name => "Liane Moriarty", :image => "https://lianemoriarty.com.au/wp-content/uploads/2018/08/Liane_photo_about_cropped.jpg"
a6 = Author.create :name => "Heather Morris", :image => "https://d31fr2pwly4c4s.cloudfront.net/5/9/b/1108555_0_heather-morris-the-tattooist-of-auschwitz_400.jpg"

a7 = Author.create :name => "Aldous Huxley", :image => "https://miro.medium.com/max/800/0*1ya9dY9NCk6-1jzu.jpg"
a8 = Author.create :name => "Carl Sagan", :image => "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Carl_Sagan_Planetary_Society.JPG/220px-Carl_Sagan_Planetary_Society.JPG"
a9 = Author.create :name => "Homer", :image => "https://www.raptisrarebooks.com/images/50869/the-iliad-of-homer-the-odyssey-of-homer-homer-first-edition-1715-26-2.jpg"
a10 = Author.create :name => "J. K. Rowling", :image => "https://jkrowling.com/wp-content/uploads/2016/12/JKROWLINGPR_S01_00057_V4.jpg"
a11 = Author.create :name => "Antoine de Saint-Exupéry", :image => "https://images.gr-assets.com/authors/1330853515p5/1020792.jpg"
a12 = Author.create :name => "George Orwell", :image => "https://m.media-amazon.com/images/M/MV5BM2QwYmRjOWUtNzE5NS00NzRkLTgwMWQtMjBkNWRlM2JlYjIxXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY317_CR0,0,214,317_AL_.jpg"
a13 = Author.create :name => "Terry Hayes", :image => "https://3.bp.blogspot.com/-r70mqG8WaxQ/WiHUj3zVpjI/AAAAAAAALP0/nFV1_z6w2ug89F0Pwb0EXWlXyQW0P1IEQCLcBGAs/s1600/Terry-Hayes.jpg"
a14 = Author.create :name => "Peter Benchley", :image => "http://jawsauthorstudy.weebly.com/uploads/7/3/0/8/7308350/171742125.jpg?203"

Genre.destroy_all
g1 = Genre.create :name => "Action and Adventure"
g2 = Genre.create :name => "Children's Literature"
g3 = Genre.create :name => "Crime"
g4 = Genre.create :name => "Drama"
g5 = Genre.create :name => "Fantasy"
g6 = Genre.create :name => "Historical Fiction"
g7 = Genre.create :name => "Horror"
g8 = Genre.create :name => "Mystery"
g9 = Genre.create :name => "Poetry"
g10 = Genre.create :name => "Romance"
g11 = Genre.create :name => "Science Fiction"
g12 = Genre.create :name => "Thriller"
g13 = Genre.create :name => "Young Adult"
g14 = Genre.create :name => "Autobiography"
g15 = Genre.create :name => "Biography"
g16 = Genre.create :name => "Science"
g17 = Genre.create :name => "Self Help"
g18 = Genre.create :name => "Fiction"
g19 = Genre.create :name => "Non-Fiction"
g20 = Genre.create :name => "Dystopian Fiction"
g21 = Genre.create :name => "Philosophy"

Shelf.destroy_all
# s1 = Shelf.create :name => "Read"
# s2 = Shelf.create :name => "Currently Reading"
# s3 = Shelf.create :name => "Want to Read"
#
# s4 = Shelf.create :name => "Read"
# s5 = Shelf.create :name => "Currently Reading"
# s6 = Shelf.create :name => "Want to Read"

User.destroy_all
u1 = User.create :name => "Bridget", :email => "bridget@gmail.com", :password => "chicken", :admin => true
u2 = User.create :name => "Todd", :email => "todd@gmail.com", :password => "chicken"


########################## ASSOCIATIONS ##########################

# Authors & Books
a1.books << b1
a2.books << b2
a3.books << b3
a4.books << b4
a5.books << b5
a6.books << b6
a7.books << b7
a8.books << b8
a9.books << b9
a10.books << b10 << b11 << b12 << b13 << b14 << b15 << b16
a11.books << b17
a12.books << b18
a13.books << b19
a14.books << b20

# Books & Shelves
# s1.books << b1 << b2 << b3 << b4 << b10
# s2.books << b8
# s3.books << b5 << b6
# s4.books << b1 << b2 << b7 << b9 << b10
# s5.books << b8
# s6.books << b4

# Books & Genres
g1.books << b1 << b4
g2.books << b17
g3.books << b19
g4.books << b10 << b11 << b12 << b13 << b14 << b15 << b16
g5.books << b1 << b10 << b11 << b12 << b13 << b14 << b15 << b16
g6.books << b4 << b6
g7.books << b20
g8.books << b3
g9.books << b9
g10.books
g11.books << b7 << b18
g12.books << b5 << b19 << b20
g13.books << b10 << b11 << b12 << b13 << b14 << b15 << b16
g14.books
g15.books
g16.books << b8
g17.books
g18.books << b1 << b3 << b4 << b5 << b6 << b7 << b10 << b11 << b12 << b13 << b14 << b15 << b16 << b18 << b19 << b20
g19.books << b2
g20.books << b7 << b18
g21.books << b8

# Shelves & Users
# u1.shelves << s1 << s2 << s3
# u2.shelves << s4 << s5 << s6
