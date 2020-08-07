//List<String> images = [
//  "assets/image_6.jpg",
//  "assets/image_5.jpg",
//  "assets/image_4.jpg",
//  "assets/image_3.jpg",
//  "assets/image_2.jpg",
//  "assets/image_1.jpg",
//];
//
//List<String> title = [
//  "Sấu đá - Thức uống Hà Nội giải nhiệt mùa hè",
////  "Mintown Roasting Coffee - Thưởng thức cà phê chuẩn mực cao cấp taị Đà Nẵng",
//  "Thinker & Dreamer - Một tình yêu đẹp có vị giống một ly cà phê ngon",
//  "Brew Man - Mùi hương gợi nhớ về kí ức của bạn",
//  "LÀ VIỆT Coffee - Là Việt giữa lòng Hà Nội nhiêu yêu thương",
////  "HAAN Drink & Eatery - Brunch sang chảnh giữa lòng Sài Gòn",
//"Mintown Roasting Coffee - Thưởng thức cà phê chuẩn mực cao cấp taị Đà Nẵng",
//  "Boulevard - Không chỉ đơn thuần là cà phê, mà còn là tinh túy",
//];
class CoffeeInfo {
  final String position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  CoffeeInfo ({
      this.position,
        this.name,
        this.iconImage,
        this.description,
        this.images,
      });
}
List<CoffeeInfo> data= [
  CoffeeInfo(
    position: "178 Lê Hồng Phong, Hải Châu, Đà Nẵng",
    name: "Boulevard Icecream & Coffee - Địa điểm sống ảo mới toang trông cực Hàn Xẻng",
    iconImage: "assets/image_1.jpg",
    description: "Có một không gian nhỏ bé, xinh xắn tại một góc phố. Ánh nắng chói chang, xiên qua những ô cửa. Chúng mình vẫn ở đây, góp nhặt những khoảnh khắc. Ngày em đẹp nhất là ngày em nở nụ cười.",
    images: ["assets/image_13.jpg","assets/image_14.jpg","assets/image_15.jpg"]
  ),
  CoffeeInfo(
      position: "73 Bến Nghé, Quận 1, TP HCM",
      name: "Hanoi Egg Coffee - Sấu đá - Thức uống Hà Nội giải nhiệt mùa hè",
      iconImage: "assets/image_6.jpg",
      description: "Hà Nội tháng 7- mùa vắng những cơn mưa,mùa của cái nắng nóng oi ả và mùa của những quả sấu non. Hãy ghé tiệm của chúng tớ để thưởng thức ly sấu đá chua ngọt mát lạnh giữa lòng Sài Gòn.",
      images: ["assets/image_9.jpg","assets/image_7.jpg","assets/image_8.jpg"]
  ),
  CoffeeInfo(
      position: "16 Tăng Bạt Hổ, Hoàn Kiếm, Hà Nội",
      name: "LÀ VIỆT Coffee giữa lòng Hà Nội nhiêu yêu thương",
      iconImage: "assets/image_19.jpg",
      description: "Specialty coffee hay còn gọi là làn sóng cà phê thứ 3, xuất hiện đầu tiên trên thế giới vào năm 1970. Không chỉ là tên gọi của một loại cà phê mà còn cả một quy trình chế biến đặc biệt. Tuyển chọn khắt khe từng hạt cà phê theo tiêu chuẩn cho đến công thức, kỹ thuật rang, xay và pha chế công phu, tỉ mỉ.",
      images: ["assets/image_19.jpg","assets/image_20.jpg","assets/image_21.jpg"]
  ),
  CoffeeInfo(
      position: "166 đường 2/9, Hải Châu, Đà Nẵng",
      name: "Mintown Coffee Roasting - Không chỉ là cà phê thuần túy ",
      iconImage: "assets/image_4.jpg",
      description: "Specialty coffee hay còn gọi là làn sóng cà phê thứ 3, xuất hiện đầu tiên trên thế giới vào năm 1970. Không chỉ là tên gọi của một loại cà phê mà còn cả một quy trình chế biến đặc biệt. Tuyển chọn khắt khe từng hạt cà phê theo tiêu chuẩn cho đến công thức, kỹ thuật rang, xay và pha chế công phu, tỉ mỉ.",
      images: ["assets/image_16.jpg","assets/image_17.jpg","assets/image_18.jpg"]
  ),
  CoffeeInfo(
      position: "21B Lê Lợi, quận 1, TP HCM",
      name: "Thinker & Dreamer - Kẻ ôm mộng mơ giữa lòng Sài Thành",
      iconImage: "assets/image_3.jpg",
      description: "Một tình yêu đẹp có vị giống một ly cà phê ngon. Có đủ đắng, chua, chát. Và hậu vị ngọt béo thật dài. Tùy vào mỗi người mà hương vị được gia giảm khác nhau. Cuối cùng, thành quả là ly cà phê đầy bí ẩn, mời gọi ta nếm thử. Có ly ngon nhưng quá nặng đô, không thể đi cùng hết đoạn đường dài. Có ly vừa đủ, đủ bình yên và đủ gắn bó cả đời.",
      images: ["assets/image_11.jpg","assets/image_10.jpg","assets/image_12.jpg"]
  ), CoffeeInfo(
      position: "16 Tăng Bạt Hổ, Hoàn Kiếm, Hà Nội",
      name: "LÀ VIỆT Coffee giữa lòng Hà Nội nhiêu yêu thương",
      iconImage: "assets/image_19.jpg",
      description: "Specialty coffee hay còn gọi là làn sóng cà phê thứ 3, xuất hiện đầu tiên trên thế giới vào năm 1970. Không chỉ là tên gọi của một loại cà phê mà còn cả một quy trình chế biến đặc biệt. Tuyển chọn khắt khe từng hạt cà phê theo tiêu chuẩn cho đến công thức, kỹ thuật rang, xay và pha chế công phu, tỉ mỉ.",
      images: ["assets/image_19.jpg","assets/image_20.jpg","assets/image_21.jpg"]
  ),
  CoffeeInfo(
      position: "166 đường 2/9, Hải Châu, Đà Nẵng",
      name: "Mintown Coffee Roasting - Không chỉ là cà phê thuần túy ",
      iconImage: "assets/image_4.jpg",
      description: "Specialty coffee hay còn gọi là làn sóng cà phê thứ 3, xuất hiện đầu tiên trên thế giới vào năm 1970. Không chỉ là tên gọi của một loại cà phê mà còn cả một quy trình chế biến đặc biệt. Tuyển chọn khắt khe từng hạt cà phê theo tiêu chuẩn cho đến công thức, kỹ thuật rang, xay và pha chế công phu, tỉ mỉ.",
      images: ["assets/image_16.jpg","assets/image_17.jpg","assets/image_18.jpg"]
  ),
  CoffeeInfo(
      position: "21B Lê Lợi, quận 1, TP HCM",
      name: "Thinker & Dreamer - Kẻ ôm mộng mơ giữa lòng Sài Thành",
      iconImage: "assets/image_3.jpg",
      description: "Một tình yêu đẹp có vị giống một ly cà phê ngon. Có đủ đắng, chua, chát. Và hậu vị ngọt béo thật dài. Tùy vào mỗi người mà hương vị được gia giảm khác nhau. Cuối cùng, thành quả là ly cà phê đầy bí ẩn, mời gọi ta nếm thử. Có ly ngon nhưng quá nặng đô, không thể đi cùng hết đoạn đường dài. Có ly vừa đủ, đủ bình yên và đủ gắn bó cả đời.",
      images: ["assets/image_11.jpg","assets/image_10.jpg","assets/image_12.jpg"]
  )
];