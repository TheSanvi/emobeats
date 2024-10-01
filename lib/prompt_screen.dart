import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromptScreen extends StatefulWidget {
  final VoidCallback showHomeScreen;
  const PromptScreen({super.key, required this.showHomeScreen});

  @override
  State<PromptScreen> createState() => _PromptScreenState();
}

class _PromptScreenState extends State<PromptScreen> {
  final List<String> genres = [
    'Jazz',
    'Rock',
    'Amapiano',
    'R&B',
    'Latin',
    'Hip-Hop',
    'Hip-Life',
    'Reggae',
    'Gospel',
    'Afrobeat',
    'Blues',
    'Country',
    'Punk',
    'Pop',
  ];
  final Set<String> _selectedGenres = {};
  void _onGenreTap(String genre) {
    setState(() {
      if (_selectedGenres.contains(genre)) {
        _selectedGenres.remove(genre);
      } else {
        _selectedGenres.add(genre);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF330000),
              Color(0xFF000000),
            ],
          ),
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Expanded for various genres and submit button
              Expanded(
                child: Text(
                  'Mood',
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),

                  ),
                ),
              ),

              // Sexpanded for various genres and submit button
              Expanded(
                // column for various genres and submitconst  button
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Genre',
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFFFFF)
                              .withOpacity(0.8),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 5.0,
                    ),

                    child: StatefulBuilder(
                    builder: (BuildContext context,
    StateSetter setState) {
                      return Wrap(
                        children: genres.map((genre) {
                          final isSelected =
                          _selectedGenres.contains(genre);
                          
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_selectedGenres
                                    .contains(genre)) {
                                  _selectedGenres.remove(genre);
                                } else {
                                  _selectedGenres.add(genre);
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(3.0),
                              margin: EdgeInsets.only(right: 4.0,
                                  top: 4.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                      width: 0.4,
                                      color: const Color(0xFFFFFFFF).withOpacity(
                                          0.8)
                                  )
                              ),
                            child: Container(
                            padding: const EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 8.0,
                            bottom: 8.0,
                            ),
                            decoration: BoxDecoration(
                            color: isSelected
                            ? const Color(0xFF0000FF)
                                : const Color(0xFFFFFFFF)
                                .withOpacity(0.8),
                            borderRadius:
                            BorderRadius.circular(
                            20.0),
                            ),
                              // Text for each genre
                              child: Text(
                                genre,
                                style: GoogleFonts.inter(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: isSelected
                                      ? const Color(
                                      0xFFFFFFFF)
                                      : const Color(
                                      0xFF000000),
                                ),
                              ),
                            ),
                            
                            
                            
                            ),
                          );

                        }).toList(),

                      );
                    }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 60.0,
                      left: 10.0,
                      right: 10.0,
                    ),
    // Container for submit button in GestureDetector
    // child: GestureDetector(
    // onTap: _submitSelections,

    // Container for submit button
    child: Container(
    padding: const EdgeInsets.symmetric(
    vertical: 15.0),
    decoration: BoxDecoration(
    borderRadius:
    BorderRadius.circular(20.0),
    color: const Color(0xFFFFCCCC),
    ),
      child: Center(
        // Submit text here
        child: Text(
          'Submit',
          style: GoogleFonts.inter(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
                  ),






  ],
                  ) ,
                ),
              ),

              // You can continue adding more content here
            ],
          ),
        ),
      ),
    );
  }
}
