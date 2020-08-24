class Drink {
  final String name;
  final String imgUrl;
  Drink({
    this.name,
    this.imgUrl
});
}

class Comment {
  String userName;
  String description;
  double rating;
  List<String> imgUrl;

  Comment(String userName, String descript, double rating, List<String> imgUrl) {
    this.userName = userName;
    this.description = descript;
    this.rating = rating;
    this.imgUrl = imgUrl;
  }
}

class CoffeeShop {
  final String iconImg;
  final String name;
  final String district;
  final String position;
  final String description;
  final double rating;
  final List<Drink> menu;
  final List<String> images;
  final List<String> hashtag;
  final List<Comment> comment;
  CoffeeShop({
    this.iconImg,
    this.name,
    this.district,
    this.position,
    this.description,
    this.rating,
    this.menu,
    this.images,
    this.hashtag,
    this.comment
  });
}

List<Comment> commentDummy = [
  Comment(
    "Binh Mai",
    "Hôm nay là lần đầu mình ghé qua Caztus. Không gian mộc mạc giản dị, đẹp, thoáng và có tông đèn vàng nhẹ nhàng với nền tường đều tông màu trầm tạo cảm giác thư thả, cổ điển rất thích hợp để chụp ảnh flatlay, sống ảo checkin cực chất, có thể ngồi đọc sách thư giản hay chạy deadline với những bản nhạc pop âu mỹ nhẹ nhàng.",
    5,
    [
      "https://images.foody.vn/res/g1/6545/s400x400/foody-caztus-coffee-vo-thi-sau-551-637190252862484012.jpg",
      "https://images.foody.vn/res/g1/6545/s400x400/foody-caztus-coffee-vo-thi-sau-586-637190252862484012.jpg"
    ]
  ),
  Comment(
    "Tran Hoang",
    "Caztus với một phong cách giản dị vô cùng, nhưng rất ấm cúng. Tông đèn vàng nhẹ nhàng với nền gạch/tường đều tông màu trầm tạo cảm giác thư thả, dễ chịu, với những bản nhạc pop âu mỹ nhẹ nhàng. Đây thích thị là nơi đáng đến và là nơi dễ gây ấn tượng với mình.",
    5,
    []
  )
];

List<Drink> drinkDummyCaztus = [
  Drink(
    name: "Đậu Đỏ Thoát Ế",
    imgUrl: "https://images.foody.vn/res/g4/35338/s750x750/c1ddcdc1-7fd0-4b7b-b17e-bde33cb6-b1ab8189-200823210518.jpeg",
  ),
  Drink(
    name: "Mr. Oreo",
    imgUrl: "https://images.foody.vn/res/g4/35338/s750x750/c7fff366-e2c0-4c76-b111-179423242c3f.jpg"
  ),
  Drink(
    name: "Caramel",
    imgUrl: "https://images.foody.vn/res/g4/35338/s750x750/bdfa76f9-c981-46d7-ba8b-25be3ce3bcc7.jpg"
  ),
  Drink(
    name: "Creme bruleez",
    imgUrl: "https://images.foody.vn/res/g4/35338/s750x750/cc6dfa97-d20b-42cf-9f1c-e53bcdc09b38.jpg"
  )
];

List<Drink> drinkDummyTCH = [
  Drink(
    name: "Cà phê sữa đá",
    imgUrl: "https://images.foody.vn/res/g9/89880/s80x80/201914113240-ca-phe-sua-da1.jpg",
  ),
  Drink(
      name: "Trà đào cam sả",
      imgUrl: "https://images.foody.vn/res/g9/89880/s80x80/20191411193-tra-dao-cam-sa.jpg",
  ),
  Drink(
      name: "Trà đen macchiato",
      imgUrl: "https://images.foody.vn/res/g9/89880/s80x80/201914111931-tra-den-macchiato.jpg",
  ),
  Drink(
      name: "Americano đá",
      imgUrl: "https://images.foody.vn/res/g9/89880/s80x80/20191494821-2.jpg",
  )
];

List<Drink> drinkDummyPhucLong = [
  Drink(
    name: "Trà sữa Phúc Long (đá)",
    imgUrl: "https://images.foody.vn/res/g5/48683/s120x120/201710211157-tra-sua-phuc-long.jpg",
  ),
  Drink(
    name: "Trà vải",
    imgUrl: "https://images.foody.vn/res/g5/48683/s120x120/b4b9b3b9-ff70-4b00-1a6a-f9db5b6bd34a.jpg",
  ),
  Drink(
    name: "Trà hoa hồng",
    imgUrl: "https://images.foody.vn/res/g5/48683/s120x120/201812011547-foody-phuc-long-cafe-takeaway-tran-hung-dao-315-636519865737752073.jpg",
  ),
  Drink(
    name: "Caramel coffee (đá)",
    imgUrl: "https://images.foody.vn/res/g5/48683/s120x120/2018117171630-caramel-coffee.jpg",
  )
];

List<CoffeeShop> dummyCoffeeShop = [
  CoffeeShop(
    iconImg: "https://images.foody.vn/res/g1/6545/prof/s576x330/foody-mobile--5b365d34835d7199f85.jpg",
    name: "Caztus Iceblended - Võ Thị Sáu",
    district: "Quận 1",
    position: "4A - 4B Võ Thị Sáu, P. Tân Định,  Quận 1, TP. HCM",
    description: "Vừa tròn mừng nhà Caztus 10 tuổi thì cũng là lúc phía Chi Nhánh Minh Khai đợt này vừa xây xong cùng một diện mạo lột xác làm bao bạn trẻ thích mắt lắm ôi trời, xinh thật sự.",
    rating: 5,
    menu: drinkDummyCaztus,
    images: [
      "https://images.foody.vn/res/g1/6545/s180x180/foody-caztus-coffee-vo-thi-sau-205-636070349057668867.jpg",
      "https://images.foody.vn/res/g1/6545/s180x180/foody-caztus-coffee-vo-thi-sau-393-636043549312868625.jpg",
      "https://images.foody.vn/res/g1/6545/s180x180/foody-checkin-caztus-coffee-vo-thi-sau-195-635776633718393302.jpg",
      "https://images.foody.vn/res/g1/6545/s180x180/foody-caztus-coffee-vo-thi-sau-1be090d2-a6de-4716-b211-8a8c1566f6a0-635401083522572487.jpg",
      "https://images.foody.vn/res/g1/6545/s150x150/foody-caztus-coffee-vo-thi-sau-569-637112376365425678.jpg"
    ],
    hashtag: [
      "caztus",
      "cafequan1",
      "cafe",
      "dessert"
    ],
    comment: commentDummy
  ),
  CoffeeShop(
    iconImg: "https://images.foody.vn/res/g1/6644/prof/s576x330/foody-upload-api-foody-mobile-tra-dao-phuc-long-190620144609.jpg",
    name: "Phúc Long Coffee & Tea - Crescent Mall",
    district: "Quận 7",
    position: "Tầng Trệt,  Tầng G Crescent Mall, 101 Tôn Dật Tiên, P. Tân Phú,  Quận 7, TP. HCM",
    description: "Trải qua hơn 50 năm chắt chiu tinh hoa từ những búp trà xanh và hạt cà phê thượng hạng cùng mong muốn mang lại cho khách hàng những trải nghiệm giá trị nhất khi thưởng thức, Phúc Long liên tục là thương hiệu tiên phong với nhiều ý tưởng sáng tạo đi đầu trong ngành trà và cà phê.",
    rating: 4.7,
    menu: drinkDummyPhucLong,
    images: [
      "https://images.foody.vn/res/g1/6644/s180x180/hinh-anh-coffee-tea-phuc-long-154840-634968077671112500.jpg",
      "https://images.foody.vn/res/g1/6644/s180x180/foody-phuc-long-cafe-takeaway-crescent-mall-607-637242466987539546.jpg",
      "https://images.foody.vn/res/g1/6644/s/foody-checkin-phuc-long-cafe-takeaway-crescent-mall-676-636516572824249286.jpg",
      "https://images.foody.vn/res/g1/6644/s/foody-phuc-long-cafe-takeaway-crescent-mall-341-635549205285304518.jpg",
      "https://images.foody.vn/res/g1/6644/s180x180/foody-phuc-long-cafe-takeaway-crescent-mall-86349-635368910162529414.jpg",
    ],
    hashtag: [
      "TheCoffeeHouse",
      "CapheQuan3",
      "CapPheCaoThang",
      "Café"
    ],
    comment: commentDummy,
  ),
  CoffeeShop(
    iconImg: "https://images.foody.vn/res/g9/89880/prof/s576x330/foody-mobile-cao-thang-mb-jpg-435-635736287744031406.jpg",
    name: "The Coffee House - Cao Thắng",
    district: "Quận 3",
    position: "86 - 88 Cao Thắng,  Quận 3, TP. HCM",
    description: "Một tình yêu đẹp có vị giống một ly cà phê ngon. Có đủ đắng, chua, chát. Và hậu vị ngọt béo thật dài. Tùy vào mỗi người mà hương vị được gia giảm khác nhau.",
    rating: 4.3,
    menu: drinkDummyTCH,
    images: [
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-485-637175749993878188.jpg",
      "https://images.foody.vn/res/g9/89880/s180x180/foody-the-coffee-house-cao-thang-164-637155908775075009.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-605-636703436820283444.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-115-636703442915218405.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-451-637062191541175654.jpg",
    ],
    hashtag: [
      "TheCoffeeHouse",
      "CapheQuan3",
      "CapPheCaoThang",
      "Café"
    ],
    comment: commentDummy,
  ),
  CoffeeShop(
    iconImg: "https://images.foody.vn/res/g9/89880/prof/s576x330/foody-mobile-cao-thang-mb-jpg-435-635736287744031406.jpg",
    name: "The Coffee House - Cao Thắng",
    district: "Quận 3",
    position: "86 - 88 Cao Thắng,  Quận 3, TP. HCM",
    description: "Một tình yêu đẹp có vị giống một ly cà phê ngon. Có đủ đắng, chua, chát. Và hậu vị ngọt béo thật dài. Tùy vào mỗi người mà hương vị được gia giảm khác nhau.",
    rating: 4.3,
    menu: drinkDummyTCH,
    images: [
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-485-637175749993878188.jpg",
      "https://images.foody.vn/res/g9/89880/s180x180/foody-the-coffee-house-cao-thang-164-637155908775075009.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-605-636703436820283444.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-115-636703442915218405.jpg",
      "https://images.foody.vn/res/g9/89880/s/foody-the-coffee-house-cao-thang-451-637062191541175654.jpg",
    ],
    hashtag: [
      "TheCoffeeHouse",
      "CapheQuan3",
      "CapPheCaoThang",
      "Café"
    ],
    comment: commentDummy,
  ),
];