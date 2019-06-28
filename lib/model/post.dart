class Post {
  const Post({this.title, this.author, this.imageUrl});

  final String title;
  final String author;
  final String imageUrl;
}

List<Post> initData() {
  var list = List<Post>();
  for (var i = 0; i < 20; i++) {
    list.add(Post(
        title: 'title${i.toString()}',
        author: 'author${i.toString()}',
        imageUrl:
            'https://i1.hdslb.com/bfs/archive/433c065449f6779490d89787526a5019c5fbba59.jpg@380w_240h_100Q_1c.webp'));
  }
  return list;
}
