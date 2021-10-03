//data
class Travel{
  String name;
  String location;
  String url;
  //constructor
  Travel(this.name, this.location, this.url);

  //data always in model
  static List<Travel> generateTravelBlog(){
    return[
      Travel('Sylhet', 'Jaflong', 'images/top1.jpg'),
      Travel('Sylhet', 'Jaflong', 'images/top2.jpg'),
      Travel('Sajek', 'ZeroPoint', 'images/top3.jpg'),
      Travel('Sajek', 'Konglak Pahar', 'images/top4.jpg'),
      Travel('Dhaka', '300feet', 'images/top5.jpg'),
      Travel('Bhairab', 'Meghna River', 'images/top6.jpg'),
      Travel('Bangladesh', 'Saint Martin', 'images/top7.jpg'),


    ];
  }
  static List<Travel> mostPopular(){
    return[
      Travel('Travel Break', 'sylhet', 'images/top1.jpg'),
      Travel('Travel Break', 'Sylhet', 'images/top2.jpg'),
      Travel('Travel Break', 'Sajek', 'images/top3.jpg'),
      Travel('Travel Break', 'Sajek', 'images/top4.jpg'),

    ];
  }
}