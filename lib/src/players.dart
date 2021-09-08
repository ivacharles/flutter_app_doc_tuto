class Player{
  final String name;
  final String country;
  final String title;
  final String pict;

  const Player(this.name, this.country, this.title, this.pict);
}

final List<Player> players =
            _list.map((e) => Player(e['Name'].toString(), e['Country'].toString(), e['Title'].toString(), e['pict'].toString()))
                .toList();

final List<Map<String, Object>> _list = [
  {
    "Name": "Roger Federer",
    "Country": "Switzerland",
    "Title": "20",
    "pict": "images/roger_federer.jpeg"
  },
  {
    "Name": "Rafael Nadal",
    "Country": "Spain",
    "Title": "19",
    "pict": "images/rafael_nadal.jpeg"
  },
  {
    "Name": "Novak Djokovic",
    "Country": "Serbia",
    "Title": "17",
    "pict": "images/Novak_djokovic.jpeg"
  },
  {
    "Name": "Pete Sampras",
    "Country": "USA",
    "Title": "14",
    "pict": "images/pete_sampras.jpeg"
  },
  {
    "Name": "Bjorn Borg",
    "Country": "Sweden",
    "Title": "11",
    "pict": "images/bjorn_borg.jpeg"
  }
];



