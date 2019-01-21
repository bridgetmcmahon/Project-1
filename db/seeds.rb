# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

b1 = Book.create :title => "The Alchemist", :cover => "https://www.booktopia.com.au/http_coversbooktopiacomau/big/9780062315007/the-alchemist-25th-anniversary.jpg"
b2 = Book.create :title => "Sapiens: A Brief History of Humankind", :cover => "https://images-na.ssl-images-amazon.com/images/I/51Sn8PEXwcL.jpg"
b3 = Book.create :title => "The Adventures of Sherlock Holmes", :cover => "https://strandmag.com/wp-content/uploads/2016/06/Enlarge-Image-The-Adventures-of-Sherlock-Holmes-and-Other-Stories-by-Doyle-Arthur-Conan-Sir-Cramer-Michael-A.-Ph.D..jpeg"
b4 = Book.create :title => "The Count of Monte Cristo", :cover => "https://images.gr-assets.com/books/1330242790l/1088140.jpg"
b5 = Book.create :title => "Nine Perfect Strangers", :cover => "https://www.booktopia.com.au/http_coversbooktopiacomau/big/9781743534922/nine-perfect-strangers.jpg"
b6 = Book.create :title => "The Tattooist of Auschwitz", :cover => "https://dynamic.indigoimages.ca/books/0062877003.jpg?altimages=false&scaleup=true&maxheight=515&width=380&quality=85&sale=43&lang=en"

b7 = Book.create :title => "Brave New World", :cover => "https://images-na.ssl-images-amazon.com/images/I/51Cj3fsiwdL.jpg"
b8 = Book.create :title => "The Demon Haunted World: Science as a Candle in the Dark", :cover => "https://images-na.ssl-images-amazon.com/images/I/71VkSXM%2BPKL.jpg"
b9 = Book.create :title => "The Odyssey", :cover => "https://images-na.ssl-images-amazon.com/images/I/817y4henSYL.jpg"
b10 = Book.create :title => "Harry Potter and the Philosopher's Stone", :cover => "https://media.bloomsbury.com/rep/bj/9780747532699.jpg"
b11 = Book.create :title => "Harry Potter and the Chamber of Secrets", :cover => "https://images-na.ssl-images-amazon.com/images/I/51kdLYNJFsL._SX326_BO1,204,203,200_.jpg"
b12 = Book.create :title => "Harry Potter and the Prisoner of Azkaban", :cover => "https://images-na.ssl-images-amazon.com/images/I/51vsSNLsBgL._SX326_BO1,204,203,200_.jpg"
b13 = Book.create :title => "Harry Potter and the Goblet of Fire", :cover => "https://media.bloomsbury.com/rep/bj/9780747546245.jpg"
b14 = Book.create :title => "Harry Potter and the Order of the Phoenix", :cover => "https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Harry_Potter_and_the_Order_of_the_Phoenix.jpg/220px-Harry_Potter_and_the_Order_of_the_Phoenix.jpg"
b15 = Book.create :title => "Harry Potter and the Half-Blood Prince", :cover => "https://media.bloomsbury.com/rep/bj/9780747581086.jpg"
b16 = Book.create :title => "Harry Potter and the Deathly Hallows", :cover => "https://media.bloomsbury.com/rep/bj/9780747591054.jpg"
b17 = Book.create :title => "Le Petit Prince", :cover => "https://images-na.ssl-images-amazon.com/images/I/51364NhwLoL._SX329_BO1,204,203,200_.jpg"
b18 = Book.create :title => "Nineteen Eighty-Four", :cover => "https://images-na.ssl-images-amazon.com/images/I/71Y5qibEolL.jpg"
b19 = Book.create :title => "I Am Pilgrim", :cover => "https://images.gr-assets.com/books/1403345411l/18144124.jpg"
b20 = Book.create :title => "Jaws", :cover => "https://images-na.ssl-images-amazon.com/images/I/81LzGlJFPYL._RI_.jpg"

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
# u1 = User.create :name => "Bridget", :email => "bridget@gmail.com", :password => "chicken"
# u2 = User.create :name => "Todd", :email => "todd@gmail.com", :password => "chicken"


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
g3.books << b17
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
