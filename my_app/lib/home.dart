import 'package:flutter/material.dart';

import 'package:my_app/account.dart';


class Book {
  
  
  final bool availability;
  final String author;
  final String title;
  final String image;

  Book({required this.image, required this.author,required this.title,required this.availability});
}

class HomeScreen extends StatefulWidget {
  final String username; // Declare username variable
  final String password; // Declare password variable

  HomeScreen({required this.username, required this.password});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';
  List<Book> _books = [
    Book(
      availability: true,author: "Sudha Murthi",
      title: "Surviving the White Gaze' \nby Rebecca Carroll",
      image:
          "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982116255/surviving-the-white-gaze-9781982116255_xlg.jpg",
         ),
   Book(
      availability: false,author: "Ummed Singh",
      title: "The Creative Ideas",
      image:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/how-to-creative-ideas-book-cover-design-template-52f7ec58f53452b9b46a351cea1bd9a1_screen.jpg",
    ),
  Book(
      availability: true,author: "Jeff bezos",
      title: "The Power of You",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
    ),
  Book(
      availability: true,author: "Mark zugerburg",
      title: "The Prince of Thorns",
      image:
          "https://www.thecreativepenn.com/wp-content/uploads/2018/04/image1.jpeg",
  ),
  Book(
      availability: true,author: "Albert",
      title: "The Beauty of Living Twice",
      image:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1607102266-41AyT1XeDaL.jpg",
    ),
  Book(
      availability: true,author: "Thomas alva",
      title: "The Happy Morning",
      image:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1607102266-41AyT1XeDaL.jpg",
    ),
  Book(
      availability: true,author: "Narayana Murthy",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: true,author: "Stalin",
      title: "The Way of the Nameless",
      image:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/teal-and-orange-fantasy-book-cover-design-template-056106feb952bdfb7bfd16b4f9325c11.jpg",
      ),
      Book(
      availability: true,author: "Annamalai",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: false,author: "Narendra Modi",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: true,author: "Amit Shah",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: true,author: "Shiva Patel",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: false,author: "Shiva Patel",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
      Book(
      availability: true,author: "Shiva Patel",
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      ),
  ];

 List<Book> _filteredBooks = []; // Updated list to hold filtered books

  @override
  void initState() {
    super.initState();
    _filteredBooks = _books; // Initialize filtered books with all books
  }

  void _updateFilteredBooks(String query) {
    setState(() {
      _filteredBooks = _books.where((book) =>
          book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Username: ${widget.username}');
    print('Password: ${widget.password}');
    return Scaffold(
      appBar: AppBar(
      //title
        backgroundColor: Colors.lightBlue, 
        iconTheme: IconThemeData(color: Colors.white), 
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4),
                IconButton(
                  icon: Icon(Icons.person_3_outlined),
                  onPressed: () {
                    // Navigate to login page
                     Navigator.push(context,MaterialPageRoute(builder: (context)=>AccountPage(username: widget.username)));
                  },
                ),
                Text(
                  'Hello ${widget.username}',
                  style: TextStyle(fontSize: 16, color: Colors.white), // Set text color to white
                ),
                // SizedBox(height: 4),
                // IconButton(
                //   icon: Icon(Icons.logout),
                //   onPressed: () {
                //     // Navigate to login page
                //      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                  _updateFilteredBooks(_searchQuery); // Call method to update filtered books
                });
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2,
              ),
              itemCount: _filteredBooks.length, // Use filtered books count
              itemBuilder: (context, index) {
                final book = _filteredBooks[index]; // Use filtered books
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                  child: Container(
                    height: 140,
                    width: 400,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 250, 249, 249).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          book.image,
                          
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book.title,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'By ${book.author}',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 4),
                              Text(
                                book.availability ? 'Available' : 'Not Available',
                                style: TextStyle(color: book.availability ? Colors.green : Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}