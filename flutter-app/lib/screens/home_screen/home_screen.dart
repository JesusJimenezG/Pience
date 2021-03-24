//Flutter
import 'package:flutter/material.dart';

//Icons
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Local_widgets
import 'package:pience/screens/home_screen/local_widgets/language_palette_background.dart';
import 'package:pience/services/language.dart';

//Color palette
import 'package:pience/utils/color_palette.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  @override
  _HomeState createState() {
    print('Home: createState');
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String lang;
  List<Color> currentFlag;
  //LifeCycle
  @override
  void initState() {
    print('Home: initState');
    lang = 'en';
    currentFlag = FlagColors().getColor(lang);
    super.initState();
  }

  @override
  void dispose() {
    print('Home: disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('Home: Widget build');
    return Scaffold(
        body: AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: size.width,
      height: size.height,
      decoration: ofBackground(currentFlag),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 20.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        print('Home: updateState');
                        if(lang == 'en'){
                          lang = 'sw';
                          currentFlag = FlagColors().getColor(lang);
                        }else if(lang == 'sw'){
                          lang = 'es';
                          currentFlag = FlagColors().getColor(lang);
                        }else if(lang == 'es'){
                          lang = 'en';
                          currentFlag = FlagColors().getColor(lang);
                        }
                        
                        
                        print(lang);
                      });
                    },
                    color: Colors.transparent,
                    elevation: 0,
                    child: FaIcon(
                      FontAwesomeIcons.language,
                      color: Colors.white,
                      size: 50,
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.quoteLeft,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Center(
              child: Text(
                Language().quoteTranslation(lang),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FaIcon(
                  FontAwesomeIcons.quoteRight,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '- Seneca',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
