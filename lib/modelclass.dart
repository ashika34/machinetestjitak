class ListItemModel {
  final String title;
  final String subtitle;
  final String trailing;

  ListItemModel({
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
}

List<ListItemModel> generateListItems() {
  return [
    ListItemModel(
      title: '2021 / 11 / 18',
      subtitle: 'スタンプを獲得しました。',
      trailing: '1個',
    ),
    ListItemModel(
      title: '2021 / 11 / 17',
      subtitle: 'スタンプを獲得しました。',
      trailing: '1個',
    ),
    ListItemModel(
      title: '2021 / 11 / 16',
      subtitle: 'スタンプを獲得しました。',
      trailing: '1個',
    ),
    ListItemModel(
      title: '2021 / 11 / 13',
      subtitle: 'スタンプを獲得しました。',
      trailing: '1個',
    ),
    
  ];
}
