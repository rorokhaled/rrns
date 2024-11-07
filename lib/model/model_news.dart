class modlenew{
  List<dynamic>data;
  
  modlenew({required this.data});
  factory modlenew.fromjosn(Map<String,dynamic>josn){
    List<dynamic>fuldata=[];
    fuldata.add(josn["articles"]);
    fuldata=fuldata.map(
        (user) {
          return{
           "title" : user["title"],
            "image":user["urlToImage"],
            "decr":user["description"],
          };
        }
    ).toList();

return modlenew(data: fuldata);
    
  }

}