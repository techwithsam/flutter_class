class DownloadsModel {
  final String name;
  final String description;
  final int price;
  final String img;
  DownloadsModel({
    required this.name,
    required this.description,
    required this.price,
    required this.img,
  });

  static List<DownloadsModel> getDownlodas() {
    List<DownloadsModel> items = <DownloadsModel>[];

    items.add(
      DownloadsModel(
        name: 'Download 1',
        price: 400,
        img: 'assets/ob.jpeg',
        description: 'nothing here to see',
      ),
    );
    items.add(
      DownloadsModel(
        name: 'Download 2',
        price: 600,
        img: 'assets/ob.jpeg',
        description: 'nothing here to see 2',
      ),
    );
    items.add(
      DownloadsModel(
        name: 'Download 3',
        price: 1000,
        img: 'assets/ob.jpeg',
        description: 'nothing here to see - 3',
      ),
    );
    items.add(
      DownloadsModel(
        name: 'Download 4',
        price: 1400,
        img: 'assets/ob.jpeg',
        description: 'nothing here to see - 4',
      ),
    );
    items.add(
      DownloadsModel(
        name: 'Download 5',
        price: 2400,
        img: 'assets/ob.jpeg',
        description: 'nothing here to see - 5',
      ),
    );

    return items;
  }
}
