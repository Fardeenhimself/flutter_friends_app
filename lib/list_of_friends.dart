import 'friends.dart';

class ListOfFriends {
  int _friendsNumber = 0;

  final List<Friends> _noOfFriends = [
    Friends(
      imagePath: 'assets/images/img1.png',
      name: 'Elliot Alderson',
      email: 'logicBomb@hacker.mail',
      about:
          'Elliot was born on September 17, 1986. He suffers from dissociative identity disorder, clinical depression, delusions and paranoia. His internal life is revealed via voice-overs that provide insight into his mental state, his opinions of the people he encounters and the activity around him. These dialogues with the audience are designed to help us interpret Elliot\'s world, but given his mental illness, he\'s an unreliable narrator, leaving us unsure whether what he tells us we\'re seeing is actually what is happening. Typical of this is when Elliot hears everyone around him refer to E-Corp as Evil Corp, reflecting his own opinion of the conglomerate.',
    ),

    Friends(
      imagePath: 'assets/images/img2.png',
      name: 'Harold Finch',
      email: 'thisisfinch@poi.mail',
      about:
          'Harold was a reclusive billionaire that created a computer software that inserts social security numbers that can tell who is a victim or criminal.  It was after 9/11 attack he and his partner Nathan Ingram created an artificially intelligent machine that could predict terrorist attacks through processing government feeds from email, phone calls and surveillance cameras.  The machine also generated a list of predicted murders and violent crimes "non relevant to national security.',
    ),
  ];

  void nextPage() {
    if (_friendsNumber < _noOfFriends.length - 1) {
      _friendsNumber++;
    }
  }

  void previousPage() {
    if (_friendsNumber > 0) {
      _friendsNumber--;
    }
  }

  String getImagePath() {
    return _noOfFriends[_friendsNumber].imagePath;
  }

  String getName() {
    return _noOfFriends[_friendsNumber].name;
  }

  String getEmail() {
    return _noOfFriends[_friendsNumber].email;
  }

  String getAbout() {
    return _noOfFriends[_friendsNumber].about;
  }
}
