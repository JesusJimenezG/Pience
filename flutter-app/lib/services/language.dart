class Language{
  String quote;
  String lang;

  //TODO: implement the translation API

  //Temporary use of in-hand crafted quote translaton
  String quoteTranslation(String lang){
    if(lang == 'es'){
      quote = 'Sufre más de lo necesario, quien sufre antes de que sea necesario.';
    }
    if(lang == 'en'){
      quote = 'Suffer more than necessary, who suffers before it is necessary.';
    }
    if (lang == 'sw'){
      quote = 'Lider mer än nödvändigt, vem lider innan det är nödvändigt.';
    }
    return quote; 
  }
}