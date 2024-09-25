class Users {
  final String name;
  final String avatar;
  final String address;
  final String note;

  Users({
    required this.name,
    required this.avatar,
    required this.address,
    required this.note,
  });
}

Users user = Users(
  name: 'Ann Stark',
  avatar: 'assets/image/user.png',
  address: 'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
  note: '',
);
