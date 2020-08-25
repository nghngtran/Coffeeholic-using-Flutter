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
      position:"Hệ thống cà phê Cộng" ,
      name: "Cộng cà phê - Bộ đôi mới cà phê cốt dừa C+",
      iconImage: "assets/image_29.jpg",
      description: "Việc mọi người thích thú nhất với việc Cộng vào Sài Gòn đó chính là được thưởng thức món cà phê nước cốt dừa siêu đậm đặc, siêu béo và thơm ngon một cách khó cưỡng.Và quả là 'danh bất hư truyền'. Dù quãng đường xa xôi từ tận Hà Nội vào Sài Gòn, nhưng món cà phê này vẫn giữ được đúng hương vị của nó. Cà phê đen sánh đều với lớp nước cốt dừa quanh quánh, béo ngậy và lớp kem bọt phủ bồng bềnh bên trên tách cà phê. Tuy nhiên với người Sài Gòn thì có vẻ cà phê hơi bị đậm đặc một chút. Uống hết một ly có khi phải say say, lâng lâng mà ra về. Ấy vậy mà vẫn đã và ngon tuyệt.",
      images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
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
  ),
  CoffeeInfo(
    position:"30 Phan Kế Bính",
    name: "The Sipping Bar - Uống cà phê nhâm nhi, thưởng thức",
    iconImage: "assets/image_24.jpg",
    description: "Đó là tinh thần thể hiện ngay từ cái tên của quán - The sipping bar, lấy từ động từ 'sip' trong tiếng anh là nhâm nhi, uống từng ngụm. The Sipping Bar khiến mình mến ở lần đầu: 🍃 Thu hút ngay từ ngoài với cửa gỗ kính lớn, với cành cây rủ nhìn thôi đã thấy có cảm tình rồi. Không gian quầy pha chế rộng, có chỗ ngồi ngay quầy để nhìn trực tiếp barista pha chê. ́Phía trong nhà kín đáo hơn, đi trò chuyện bạn bè thì thích hợp. Không gian tầng hai phù hợp làm việc, có ban công ngoài ghế cao, cửa kính lớn đón nắng tự nhiên. Về đồ uống, menu có trà và cà phê, cà phê nổi trội hơn cả. Mình có thử Alpenliebe dễ uống với cà phê hạt Colombia, kem sữa khá ngậy, hương caramel (một chút). Điều đáng yêu ở The Shipping Bar sáng sớm. Nếu bạn muốn tìm một chốn để nhâm nhi thì The Shipping Bar là một lựa chọn nhé! Ps: Có bạn nào thử Marocchino chưa ạ 🤤",
    images: ["assets/image_25.jpg","assets/image_26.jpg","assets/image_27.jpg"]),
  CoffeeInfo(
    position:"Hệ thống cà phê Cộng" ,
    name: "Cộng cà phê - Bộ đôi mới cà phê cốt dừa C+",
    iconImage: "assets/image_29.jpg",
    description: "Việc mọi người thích thú nhất với việc Cộng vào Sài Gòn đó chính là được thưởng thức món cà phê nước cốt dừa siêu đậm đặc, siêu béo và thơm ngon một cách khó cưỡng.Và quả là 'danh bất hư truyền'. Dù quãng đường xa xôi từ tận Hà Nội vào Sài Gòn, nhưng món cà phê này vẫn giữ được đúng hương vị của nó. Cà phê đen sánh đều với lớp nước cốt dừa quanh quánh, béo ngậy và lớp kem bọt phủ bồng bềnh bên trên tách cà phê. Tuy nhiên với người Sài Gòn thì có vẻ cà phê hơi bị đậm đặc một chút. Uống hết một ly có khi phải say say, lâng lâng mà ra về. Ấy vậy mà vẫn đã và ngon tuyệt.",
    images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
    position:"Khắp Việt Nam đâu cũng có sữa đá và cà phê",
    name: "Cà phê sữa đá - Quốc hồn túy cà phê Việt Nam",
    iconImage: "assets/image_37.jpg",
    description: "Nếu Phần Lan có Kaffeost (Café nóng + phomat), Úc có Flat white, Hongkong có Yuan Yang (cafe + trà sữa), Hy Lạp có Frappé (cafe + đá bào + bọt sữa), Ý có Espresso Romano (cafe + chanh),... thì Việt Nam có cà phê sữa đá - thức đồ luôn nằm trong top những món cà phê ngon nhất thế giới. Mang vị cà phê đậm đặc “đúng điệu”, cà phê sữa đá không biết từ bao giờ đã trở thành đặc sản, thành “Quốc hồn quốc tuý” của Việt Nam. Hơn cả một thức đồ, nó trở thành một nền văn hoá của người Việt mình. Ngày nay, dẫu có muôn vàn phiên bản cà phê khác nhau, người ta vẫn say mê cái hương, cái vị của món đồ “điệu hồn dân tộc” này. Uống một cốc cà phê sữa đá, chả rõ “cơn say” có theo cả đời hay không, chỉ biết lòng tự hào vô ngần",
    images: ["assets/image_34.png","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
    position:"Thinker & Dreamer Sài Gòn" ,
    name:"Cà phê Cappuccino - thức đồ chinh phục vị giác" ,
    iconImage: 'assets/image_40.png',
    description: "Đối với nhiều người, thưởng thức cà phê cần phải có thời gian nhâm nhi, cảm nhận để có những khoảng lặng. Nhưng với người Ý, để gọi là người biết thưởng thức cà phê, bạn phải biết cách uống cà phê vừa đủ nhanh nhưng vẫn cảm nhận được trọn vẹn được vị ngon của tách cà phê. Châm ngôn của người Ý đó là, thưởng thức cà phê thật nhanh và thật ngon. Một trong những thức đồ “văn hóa” của người Ý phải kể tới là cà phê Cappuccino. Ai đó đã miêu tả về Cappuccino rằng: “Mới đầu là cái gì đó bềnh bồng làm cho người ta ngây ngất. Nhưng sau đó là vị đắng của café – thử thách. Cuối hết là lớp sữa ngọt ngào – đó là kết quả. Hương vị thơm ngon, nghệ thuật pha chế và tạo hình bọt sữa tinh tế, vị đăng đắng của Espresso khiến bạn tỉnh táo, vị ngọt ngào, beo béo của kem sữa đầy say mê và cuối cùng là lớp bọt sữa mịn màng vương trên miệng. Tất cả những điều đó làm nên thức đồ uống chinh phục vị giác nhiều người.Cùng @nhacuacoffeeholic tìm hiểu về cà phê cappuccino trong bài viết này nhé.",
    images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
    position: "3/13D Võ Văn Tần, P6, Q3, HCM",
    name: "Sự gia nhập của phong cách Nhật Bản - Machen Coffee",
    iconImage:"assets/image_35.png" ,
    description: "Một điều rất kì lạ mà chúng mình nhận thấy, ở cả Sài Gòn và Hà Nội, là có lẽ phong cách hơi hướng Thái Lan với những Mono Lab, Le Beret (Hà Nội), hay Danshari Coffee (Sài Gòn) đang dần nhường chỗ cho phong cách mới: cà phê phong cách Nhật Bản. Sau The Dome Kaffe, MADCHEN đậm phong cách Nhật nổi lên như một địa chỉ xinh xắn ngay quận 3. Không gian: View bên ngoài của quán khá xinh, phong cách nhìn giống Nhật Bản. Bên trong thì hơi bé, chỉ vỏn vẹn 10 bàn. Không khí quán khá tĩnh lặng, bạn nào ngoài nhu cầu chụp hình sống ảo ra thì có thể vác lap ra làm việc nữa nhé💻Điểm trừ của quán là cầu thang khá dốc, mình mang giày bata còn thấy hơi khó đi. Bạn nào mang giày cao gót nhớ cẩn thận. Đồ uống: Quán gồm có Cà phê, Trà, Nước ép và Bánh. Mình gọi Cà phê kem sữa béo + Bánh Cookie. Vị cà phê khá dịu và nhẹ kết hợp vị kem beo béo. Đặc biệt món này có thêm kẹo marshmallow cháy xém dùng như muỗng để khuấy, nhìn rất lạ mắt. (Không liên quan nhưng món này ở Yên ngon hơn) ",
    images: ["assets/image_36.png","assets/image_37.png","assets/image_38.png"]
  ),CoffeeInfo(
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
  ),
  CoffeeInfo(
      position: "178 Lê Hồng Phong, Hải Châu, Đà Nẵng",
      name: "Boulevard Icecream & Coffee - Địa điểm sống ảo mới toang trông cực Hàn Xẻng",
      iconImage: "assets/image_1.jpg",
      description: "Có một không gian nhỏ bé, xinh xắn tại một góc phố. Ánh nắng chói chang, xiên qua những ô cửa. Chúng mình vẫn ở đây, góp nhặt những khoảnh khắc. Ngày em đẹp nhất là ngày em nở nụ cười.",
      images: ["assets/image_13.jpg","assets/image_14.jpg","assets/image_15.jpg"]
  ),
  CoffeeInfo(
      position:"Hệ thống cà phê Cộng" ,
      name: "Cộng cà phê - Bộ đôi mới cà phê cốt dừa C+",
      iconImage: "assets/image_29.jpg",
      description: "Việc mọi người thích thú nhất với việc Cộng vào Sài Gòn đó chính là được thưởng thức món cà phê nước cốt dừa siêu đậm đặc, siêu béo và thơm ngon một cách khó cưỡng.Và quả là 'danh bất hư truyền'. Dù quãng đường xa xôi từ tận Hà Nội vào Sài Gòn, nhưng món cà phê này vẫn giữ được đúng hương vị của nó. Cà phê đen sánh đều với lớp nước cốt dừa quanh quánh, béo ngậy và lớp kem bọt phủ bồng bềnh bên trên tách cà phê. Tuy nhiên với người Sài Gòn thì có vẻ cà phê hơi bị đậm đặc một chút. Uống hết một ly có khi phải say say, lâng lâng mà ra về. Ấy vậy mà vẫn đã và ngon tuyệt.",
      images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
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
  ),
  CoffeeInfo(
      position:"30 Phan Kế Bính",
      name: "The Sipping Bar - Uống cà phê nhâm nhi, thưởng thức",
      iconImage: "assets/image_24.jpg",
      description: "Đó là tinh thần thể hiện ngay từ cái tên của quán - The sipping bar, lấy từ động từ 'sip' trong tiếng anh là nhâm nhi, uống từng ngụm. The Sipping Bar khiến mình mến ở lần đầu: 🍃 Thu hút ngay từ ngoài với cửa gỗ kính lớn, với cành cây rủ nhìn thôi đã thấy có cảm tình rồi. Không gian quầy pha chế rộng, có chỗ ngồi ngay quầy để nhìn trực tiếp barista pha chê. ́Phía trong nhà kín đáo hơn, đi trò chuyện bạn bè thì thích hợp. Không gian tầng hai phù hợp làm việc, có ban công ngoài ghế cao, cửa kính lớn đón nắng tự nhiên. Về đồ uống, menu có trà và cà phê, cà phê nổi trội hơn cả. Mình có thử Alpenliebe dễ uống với cà phê hạt Colombia, kem sữa khá ngậy, hương caramel (một chút). Điều đáng yêu ở The Shipping Bar sáng sớm. Nếu bạn muốn tìm một chốn để nhâm nhi thì The Shipping Bar là một lựa chọn nhé! Ps: Có bạn nào thử Marocchino chưa ạ 🤤",
      images: ["assets/image_25.jpg","assets/image_26.jpg","assets/image_27.jpg"]),
  CoffeeInfo(
      position:"Hệ thống cà phê Cộng" ,
      name: "Cộng cà phê - Bộ đôi mới cà phê cốt dừa C+",
      iconImage: "assets/image_29.jpg",
      description: "Việc mọi người thích thú nhất với việc Cộng vào Sài Gòn đó chính là được thưởng thức món cà phê nước cốt dừa siêu đậm đặc, siêu béo và thơm ngon một cách khó cưỡng.Và quả là 'danh bất hư truyền'. Dù quãng đường xa xôi từ tận Hà Nội vào Sài Gòn, nhưng món cà phê này vẫn giữ được đúng hương vị của nó. Cà phê đen sánh đều với lớp nước cốt dừa quanh quánh, béo ngậy và lớp kem bọt phủ bồng bềnh bên trên tách cà phê. Tuy nhiên với người Sài Gòn thì có vẻ cà phê hơi bị đậm đặc một chút. Uống hết một ly có khi phải say say, lâng lâng mà ra về. Ấy vậy mà vẫn đã và ngon tuyệt.",
      images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
      position:"Khắp Việt Nam đâu cũng có sữa đá và cà phê",
      name: "Cà phê sữa đá - Quốc hồn túy cà phê Việt Nam",
      iconImage: "assets/image_37.jpg",
      description: "Nếu Phần Lan có Kaffeost (Café nóng + phomat), Úc có Flat white, Hongkong có Yuan Yang (cafe + trà sữa), Hy Lạp có Frappé (cafe + đá bào + bọt sữa), Ý có Espresso Romano (cafe + chanh),... thì Việt Nam có cà phê sữa đá - thức đồ luôn nằm trong top những món cà phê ngon nhất thế giới. Mang vị cà phê đậm đặc “đúng điệu”, cà phê sữa đá không biết từ bao giờ đã trở thành đặc sản, thành “Quốc hồn quốc tuý” của Việt Nam. Hơn cả một thức đồ, nó trở thành một nền văn hoá của người Việt mình. Ngày nay, dẫu có muôn vàn phiên bản cà phê khác nhau, người ta vẫn say mê cái hương, cái vị của món đồ “điệu hồn dân tộc” này. Uống một cốc cà phê sữa đá, chả rõ “cơn say” có theo cả đời hay không, chỉ biết lòng tự hào vô ngần",
      images: ["assets/image_34.png","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
      position:"Thinker & Dreamer Sài Gòn" ,
      name:"Cà phê Cappuccino - thức đồ chinh phục vị giác" ,
      iconImage: 'assets/image_40.png',
      description: "Đối với nhiều người, thưởng thức cà phê cần phải có thời gian nhâm nhi, cảm nhận để có những khoảng lặng. Nhưng với người Ý, để gọi là người biết thưởng thức cà phê, bạn phải biết cách uống cà phê vừa đủ nhanh nhưng vẫn cảm nhận được trọn vẹn được vị ngon của tách cà phê. Châm ngôn của người Ý đó là, thưởng thức cà phê thật nhanh và thật ngon. Một trong những thức đồ “văn hóa” của người Ý phải kể tới là cà phê Cappuccino. Ai đó đã miêu tả về Cappuccino rằng: “Mới đầu là cái gì đó bềnh bồng làm cho người ta ngây ngất. Nhưng sau đó là vị đắng của café – thử thách. Cuối hết là lớp sữa ngọt ngào – đó là kết quả. Hương vị thơm ngon, nghệ thuật pha chế và tạo hình bọt sữa tinh tế, vị đăng đắng của Espresso khiến bạn tỉnh táo, vị ngọt ngào, beo béo của kem sữa đầy say mê và cuối cùng là lớp bọt sữa mịn màng vương trên miệng. Tất cả những điều đó làm nên thức đồ uống chinh phục vị giác nhiều người.Cùng @nhacuacoffeeholic tìm hiểu về cà phê cappuccino trong bài viết này nhé.",
      images: ["assets/image_28.jpg","assets/image_30.jpg","assets/image_31.jpg"]
  ),
  CoffeeInfo(
      position: "3/13D Võ Văn Tần, P6, Q3, HCM",
      name: "Sự gia nhập của phong cách Nhật Bản - Machen Coffee",
      iconImage:"assets/image_35.png" ,
      description: "Một điều rất kì lạ mà chúng mình nhận thấy, ở cả Sài Gòn và Hà Nội, là có lẽ phong cách hơi hướng Thái Lan với những Mono Lab, Le Beret (Hà Nội), hay Danshari Coffee (Sài Gòn) đang dần nhường chỗ cho phong cách mới: cà phê phong cách Nhật Bản. Sau The Dome Kaffe, MADCHEN đậm phong cách Nhật nổi lên như một địa chỉ xinh xắn ngay quận 3. Không gian: View bên ngoài của quán khá xinh, phong cách nhìn giống Nhật Bản. Bên trong thì hơi bé, chỉ vỏn vẹn 10 bàn. Không khí quán khá tĩnh lặng, bạn nào ngoài nhu cầu chụp hình sống ảo ra thì có thể vác lap ra làm việc nữa nhé💻Điểm trừ của quán là cầu thang khá dốc, mình mang giày bata còn thấy hơi khó đi. Bạn nào mang giày cao gót nhớ cẩn thận. Đồ uống: Quán gồm có Cà phê, Trà, Nước ép và Bánh. Mình gọi Cà phê kem sữa béo + Bánh Cookie. Vị cà phê khá dịu và nhẹ kết hợp vị kem beo béo. Đặc biệt món này có thêm kẹo marshmallow cháy xém dùng như muỗng để khuấy, nhìn rất lạ mắt. (Không liên quan nhưng món này ở Yên ngon hơn) ",
      images: ["assets/image_36.png","assets/image_37.png","assets/image_38.png"]
  ),CoffeeInfo(
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
  ),
];