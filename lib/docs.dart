class Document{
  String? doctitle;
  String? docurl;
  String? docdate;
  int? docpagenum;

  Document(this.doctitle,this.docurl,this.docdate,this.docpagenum,);

  static List <Document> doclist=[
Document("anwar","aaaaa","22/23/2012",100,),
Document("Robert-Greene-The-48-Laws-of-Power-Profile-Books-_2010_.pdf","assets\Robert-Greene-The-48-Laws-of-Power-Profile-Books-_2010_.pdf","1/3/2010",700,)
  ];

}