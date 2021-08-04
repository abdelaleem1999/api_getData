 class Modul {
  late String name;
  late String image;

   Modul(this.name,this.image);
   Modul.fromjson(Map<String, dynamic>map){
     this.name=map['name'];
     this.image=map['img'];

   }


 }