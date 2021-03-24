//Flutter
import 'package:flutter/material.dart';

//Google fonts
import 'package:google_fonts/google_fonts.dart';

//Application routes
import 'package:pience/utils/routes.dart';
import 'package:pience/screens/home_screen/home_screen.dart';


void main() => runApp(Pience());
 
class Pience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pience',
      theme: ThemeData(
        textTheme: GoogleFonts.portLligatSlabTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: Home.id,
      routes: applicationRoutes(context),
    );
  }
}