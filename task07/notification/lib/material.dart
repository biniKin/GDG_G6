import 'package:flutter/material.dart';

class Mat extends StatelessWidget {
  Mat({super.key});

  List users = [
    {
      'name': "Darrell Trivedi",
      'image':
          "https://s3-alpha-sig.figma.com/img/8a7d/68fe/92be1f29404445476407d81857a346d3?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=k2tzcJncqDSSlSeUj~ZFeRfIMGN4QDqjuUhBtehiw4pxTC4npdi0hxo6yDLaCvcSHBvJEqaaNZy7paEyV0HUFUVCWEMy46GiRYA03DNlZWqo9KOI37Fw6sP6uCzg1o0DbaHiZg1Pzf~22jMeAEsxOl3ftB4YqgE0hj~sElqJGOIzpnaY8KIxNazeZiXvlyrPDVD1e9Op1EMzq7yCyx0wueEvpoVjPY405opTLcy-O1XqycAPsxeYvAmy31MesJdJ~BHP6ee8L0xRXX0rm1rA17cy6CxQePBPraFvqLarVRePhZLW~79UFbpqhwfERqy5Hvm9juE4Y2anfKjZYNxJYA__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/ac95/7703/58fd3900a69cbd0f89e84bf278c21b20?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=XwJeXisSmaFFYSzjLha5q5JKMP9LQXySZXOoARxWXBiCcYgXuEslKrTopD3Nq61SnRZgX4KVidGOmN4moHVhg7AWtBjrvTXhdTOzuNZvEGioz~ZGJDUCq4t8TXPZ0t-OheokFelMpMGjG-P7BAC2IZxSbEU4dA8D4pJUMDKFhFJR~9~J4xnHrUQMKVKQNr6c8b8EKQI4tz-JyhfczCS6KKmqsU~lFDVu8Lf-CWjDyeiaWbQYt5KUQ7YHfIF0WeTJxm0b8NWggMMKtEDuv987CHL3Tx9qmCbJFbXXgenOtAI0Gc6gXI7GH2Lv8niGSs8OpGPcViVbRg7-0DRnmxndrA__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/229e/14bc/a6e8f04546c859d3bafbb171770f3b06?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=RmWev4w0yFvsDI-RuHGOjcSdXY0g3e4nzZ6IoPBmlq1-e1-wkWcPSN56m7IY5A4DeCXyLi~Pe7jj9TXOhdLU948~ErKo6WmqzNKZaQkkr5Jm~k33XKDuRG4VoJ38CJU61QkH0qZDYgGy7MNqRUb06TOR26mwwggfE9zYLWsRpxwQ1FeuR0GQ7q4gxvoE3kBQSECP0vITPAJ2mOGHD1XO4-XkPhS25CjqeTuyP0fMieQP9mr1w2bO~7LAevANoA6uwItZkuVuU98aHR-JgVW90s~5sXBPo3HCC5uu~BVIKpKPBvrYEpFCh6KpUVjG4kzTemRZaL6XCXnzTrjn70HRkA__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/bdef/5075/06d40abc27649eae5947b7cd5d798a60?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=mbT6KVkwxT3h35SkXsH2HKuB-nMH8~-FCpaI07-5sCQdrEjI95Gcei7ZJbrbSXswtlxiE8V16os4TuaqCY5du5fOnxahpsEgQoRYPls0Pf-WlqyrcgZO9NykFRQlZyKIkhmQyfPDKooFlOBqaVbiNWpb5DvXIceun8bfOkljEoDCUAkn8kyp985eQo1yTRPX3kSz758YHAQMO6CdyogCUSowXZRsYR0nDBq4hKDea5Rzs8EqGNgkg1vm7i0W8EBqxO2JzztYTAZ-giXSxW1lLhc8j2KQe-~V2qbf2CTLTqSSAVETaX5~2yTIHLff60W5A11tJ0OZi6rtTu0fczXFpw__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/4122/480a/d66e29a44887c55bbbf61cf602f4f8c5?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KnOZgn-CvuL8MzupOvh6zJhkKS9eKb8~6CdOwRazLMEF06tA~DlnlVyeLAH2K-wy8H7Y4i9NfCfT95ZAL1fkhv86ELaUG675uU3QtnVev8fnAALtszGc8GlHTLMGGUYEQK2ZfHoQq2YVdu9QL8zHk2wB4esZvvR7tGF2HnXYlLRr0tdqUin9NMq7h0tOzY68PmXWdT0gUcH62ut4C8FRT8zULqcHIP~DbVXi9nNhAo1OGp9tG4xoVvwgT7VXCEiOnXpzqi2D6l3qTrGI~b-ZWYhZFpg5acQLJEJ8qeG1CNz~Sit4bhldxnwLbpbdBPKbqRi6hOmY6EnJ-k49~MYHhw__",
    },
    {
      'name': "Darrell Trivedi",
      'image':
          "https://s3-alpha-sig.figma.com/img/8a7d/68fe/92be1f29404445476407d81857a346d3?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=k2tzcJncqDSSlSeUj~ZFeRfIMGN4QDqjuUhBtehiw4pxTC4npdi0hxo6yDLaCvcSHBvJEqaaNZy7paEyV0HUFUVCWEMy46GiRYA03DNlZWqo9KOI37Fw6sP6uCzg1o0DbaHiZg1Pzf~22jMeAEsxOl3ftB4YqgE0hj~sElqJGOIzpnaY8KIxNazeZiXvlyrPDVD1e9Op1EMzq7yCyx0wueEvpoVjPY405opTLcy-O1XqycAPsxeYvAmy31MesJdJ~BHP6ee8L0xRXX0rm1rA17cy6CxQePBPraFvqLarVRePhZLW~79UFbpqhwfERqy5Hvm9juE4Y2anfKjZYNxJYA__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/ac95/7703/58fd3900a69cbd0f89e84bf278c21b20?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=XwJeXisSmaFFYSzjLha5q5JKMP9LQXySZXOoARxWXBiCcYgXuEslKrTopD3Nq61SnRZgX4KVidGOmN4moHVhg7AWtBjrvTXhdTOzuNZvEGioz~ZGJDUCq4t8TXPZ0t-OheokFelMpMGjG-P7BAC2IZxSbEU4dA8D4pJUMDKFhFJR~9~J4xnHrUQMKVKQNr6c8b8EKQI4tz-JyhfczCS6KKmqsU~lFDVu8Lf-CWjDyeiaWbQYt5KUQ7YHfIF0WeTJxm0b8NWggMMKtEDuv987CHL3Tx9qmCbJFbXXgenOtAI0Gc6gXI7GH2Lv8niGSs8OpGPcViVbRg7-0DRnmxndrA__",
    },
    {
      'name': "Darrell Trivedi",
      "image":
          "https://s3-alpha-sig.figma.com/img/229e/14bc/a6e8f04546c859d3bafbb171770f3b06?Expires=1743984000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=RmWev4w0yFvsDI-RuHGOjcSdXY0g3e4nzZ6IoPBmlq1-e1-wkWcPSN56m7IY5A4DeCXyLi~Pe7jj9TXOhdLU948~ErKo6WmqzNKZaQkkr5Jm~k33XKDuRG4VoJ38CJU61QkH0qZDYgGy7MNqRUb06TOR26mwwggfE9zYLWsRpxwQ1FeuR0GQ7q4gxvoE3kBQSECP0vITPAJ2mOGHD1XO4-XkPhS25CjqeTuyP0fMieQP9mr1w2bO~7LAevANoA6uwItZkuVuU98aHR-JgVW90s~5sXBPo3HCC5uu~BVIKpKPBvrYEpFCh6KpUVjG4kzTemRZaL6XCXnzTrjn70HRkA__",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_camera_front_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, int index) {
                return ListTile(
                  leading: Container(
                    height: 200,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          users[index]['image'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          "Darrell Trivedi, Whats your reaction?",
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                        ),
                      )
                    ],
                  ),
                  subtitle: Text(" 2 hours ago"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
