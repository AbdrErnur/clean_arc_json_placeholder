enum PageTabEnum {
  album,
  posts,
  todo;

  static fromInt(int index){
    switch (index){
      case 0:
          return PageTabEnum.album;
      case 1:
        return PageTabEnum.posts;
      default:
        return PageTabEnum.todo;
    }
  }
}
