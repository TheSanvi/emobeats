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
                          return Container(
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


                          );
                        }).toList(),

                      );
                    }
                    ),)

  ]
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
