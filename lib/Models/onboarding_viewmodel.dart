class SliderModel{

  String imagePath;
  String title;
  String desc;

  SliderModel({this.imagePath, this.title, this.desc});

  void setImageAssetPath(String getImagepath){
    imagePath = getImagepath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imagePath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}

List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setImageAssetPath("assets/images/tpe.jpg");
  sliderModel.setTitle("Terminal E-ZPASS");
  sliderModel.setDesc("Le Terminal E-ZPASS est un terminal de paiement performant au format amovible. Cet appareil de dernière génération permet aux commerçants d\'accepter les paiments partout et à tout moment.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setImageAssetPath("assets/images/carte.png");
  sliderModel.setTitle("Carte E-ZPASS");
  sliderModel.setDesc("Payez sans contrainte de petite monnaie ! Contrôlez vos dépenses ! Protégez-vous contre les risques de vols et de faux billets avec la carte E-ZPASS.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();


  //3
  sliderModel.setImageAssetPath("assets/images/qrcode.png");
  sliderModel.setTitle("QR CODE E-ZPASS");
  sliderModel.setDesc("E-Zpass est un moyen fiable d’envoyer et de recevoir de l’argent en utilisant notre plateforme de paiement. Il est fait facilement en utilisant un code QR. E-zpass encourage les utilisateurs  à utiliser le code QR dans les processus de paiement.");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;


}