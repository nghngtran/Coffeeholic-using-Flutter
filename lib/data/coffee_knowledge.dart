class CoffeeKnowledge{
  String title;
  String content;
  String coverImg;
  List<String>contentImg;

  CoffeeKnowledge(this.title,this.content,this.coverImg,this.contentImg);
}

List<CoffeeKnowledge>data = [
  CoffeeKnowledge("Cà phê sữa","Cà phê bắt đầu được đưa vào trồng ở vùng đất Tây Nguyên Việt Nam vào năm 1870. Điều này giúp Việt Nam được ghi nhận là quốc gia đầu tiên ở vùng Đông Nam Á trồng và uống cafe. May mắn thay, đất đỏ bazan lại là một loại thổ nhưỡng đặc biệt phù hợp cho loại cây này." +
      "Do đó, Việt Nam dần phát triển thành quốc gia xuất khẩu cà phê lớn nhất nhì toàn cầu. Vào thời điểm đó, sữa tươi vẫn còn là nguyên liệu khan hiếm nên sữa đặc được cho vào cafe. Lịch sử không ghi lại chính xác khi nào và ai là người đầu tiên đã sáng tạo ra món cà phê sữa đá." +
      "Tuy nhiên cả thế giới đã công nhận đây là thức uống đặc sản của Việt Nam. Bên cạnh 5 kiểu pha cà phê nổi tiếng toàn cầu là kiểu của Mỹ, Đức, Thụy Sỹ, Ý, Pháp thì cách làm cà phê sữa của Việt Nam cùng lọt top 15 cùng với các cách pha cà phê khác của thế giới Condé Nast Traveler (Mỹ) bình chọn. Cà phê sữa đá nổi tiếng đến mức không chỉ du khách thế giới đến Việt Nam đều tìm kiếm các địa chỉ có cách"+
      "pha cà phê sữa ngon, ngay cả các đoàn đại sứ, các nguyên thủ quốc gia đều phải mê mệt thức uống bình dân này. Một lần khi đến thăm Sài Gòn, người ta kể lại rằng thủ tướng Canada nhất định muốn thử cà phê nâu Việt Nam. Trong khi đó, trong một chuyến công du Hà Nội, cựu tổng thống Mỹ Obama đã không thể quên nhắc đến món cà phê sữa đá Việt Nam. Đây cũng không phải điều đáng ngạc nhiên bởi cách pha cà phê nâu đá của Việt Nam đã được trang Bloomberg bình chọn là 1 trong 10 món cà phê độc đáo nhất thế giới. Bên cạnh đó, Tạp chí CN Traveler cũng bình chọn đây là thức uống đầu tiên không thể bỏ qua nếu du khách có dịp đặt chân đến Việt Nam.",
      "assets/CS.jpeg",["assets/CS.jpeg","assets/CS13.png","assets/CS1.png"]),

  CoffeeKnowledge("Cà phê đen","Theo chân người Pháp đem văn hóa cà phê vào Việt Nam, những tưởng thức uống này ban đầu chỉ dành cho những nhà khá giả có điều kiện. Dần dà người ta bình dân hóa cà phê, để chất đắng ngấm dần vào cuộc sống của cả tầng lớp lao động phổ thông. Cà phê trở thành đặc sản chung của mọi cư dân Việt Nam đến tận bây giờ."+
      "Người Pháp ở Paris thường chỉ ghé quán để uống nhanh một loại cà phê là Espresso (nghĩa là “tức thời”). Hoặc cũng có khi là sau bữa trưa, một tách cà phê để cơ thể được tỉnh táo."+ "Còn ở Việt Nam, cà phê là một văn hóa sinh hoạt vừa cộng đồng, vừa riêng tư. Người ta lấy thứ bột đen ém chặt bên trong chiếc phin kim loại làm chất xúc tác cho mọi câu chuyện, những hàn huyên thời cuộc thế nhân bên ngoài và tự sự nội tâm mỗi con người."+
      "Một tách cà phê ngon, phải được chuẩn bị từ tay kẻ sành sõi: từ những lối pha chế rang xay cầu kỳ, ngộ nghĩnh của từng cái tôi riêng, đầy đủ hương thơm từ hạt cà phê rang tới, lối đánh bọt cho kỳ nổi xốp lớp không khí màu cánh gián. Uống ngay, thêm sữa, thêm đường, bỏ đá hay không bỏ đá... thì cà phê vẫn luôn biến hóa để chiều lòng cả những người khó tính nhất. Mà để nói khơi khơi “đi cà phê”, thì quán xá nhiều vô kể. Người ta đến không bởi tiếng tăm, mà bởi chỗ quán quen là chính. Điềm nhiên, đúng quán đúng chỗ, đúng ngày đúng cữ. Môt chiếc ghế ngồi, một chiếc lót ly, một phin cà phê nhễu từng nhịp chậm rãi và thất thường, chiêu thêm cữ trà tráng miệng...thế là nhào vô trò chuyện thế sự với mấy người ngồi quanh. Quán cà phê quen trở thành “nhà”. Người bạn cà phê trở thành “người nhà”."+
      "Uống cà phê đâu phải chỉ xoay quanh chuyện chiếc phin và những gì bên trong nó, mà còn là câu chuyện bên ngoài và xung quanh chiếc phin. Đời sống phồn thịnh, sầm uất vẫn luôn song hành với thú thưởng thức nhàn nhã, với mấy câu tâm sự thân tình - đây là cách mà bạn uống cà phê tại Việt Nam.",
      "assets/CS0.jpg",["assets/CS.jpeg","assets/CS11.png"]),

  CoffeeKnowledge("Bạc xỉu","Cà phê bạc xỉu là cách gọi xuất phát đầu tiên từ Sài Gòn và lâu dần trở nên phổ biến khắp cả nước ta. Dường như với người Việt, bên cạnh cafe đen, cafe đá thì món cafe bạc xỉu cũng được ưa chuộng hơn cả. Hôm nay hãy cùng tìm hiểu cà phê bạc xỉu là gì và cách pha cà phê bạc xỉu ra sao mà có thể gắn bó với bao thế hệ đến vậy nhé."+
      "Cafe bạc xỉu là cách mà người dân Sài Gòn dùng để gọi tắt từ cụm từ “bạc tẩy xỉu phé” xuất phát từ tiếng Quan Thoại (là tiếng Trung phổ biến trong cộng đồng người Hoa ở Sài Gòn) nhằm để chỉ món sữa nóng thêm một chút cafe. Trong tiếng Quan Thoại thì “Bạc” là màu trắng, “Tẩy” là cái ly không, “Xỉu” là một chút và “Phé” là cafe.Hiểu một cách đơn giản hơn thì bạc xỉu là thức uống ít cafe và nhiều sữa. Vì thế bạc xỉu thích hợp với những người thích uống cafe hương vị nhẹ nhàng, không quá nồng như cafe đen thông thường.Về nguồn gốc của món bạc xỉu này thì chúng bắt nguồn là sữa đặc pha với nước sôi để tạo ra cốc sữa thơm ngon. Tuy nhiên cách pha cà phê bạc xỉu này vẫn còn lại hương vị gây khó chịu của sữa đặc, sau đó người ta phát hiện ra rằng, thêm một chút cafe sẽ làm hương vị khó chịu ấy biến mất. Từ đó bạc xỉu ra đời.",
      "assets/CS1.jpg",["assets/CS.jpeg","assets/CS13.png","assets/CS15.png","assets/CS5.jpg","assets/CS4.jpg"]),

  CoffeeKnowledge("Cà phê trứng","Cà phê trứng là một trong những sáng tạo về cà phê tuyệt vời nhất mà tôi từng thử. Là một người yêu cà phê và đã thử qua nhiều loại cà phê khắp thế giới, chưa dòng cà phê nào gây ấn tượng đặc biệt với tôi như món này. Cà phê trứng Hà Nội không thể uống hàng ngày vì quá béo, tuy nhiên được thưởng thức vào những kỳ nghỉ thì rất tuyệt vời."+
      "Người sáng tạo ra món cà phê trứng độc đáo này là cụ Nguyễn Văn Giảng. Từ món cà phê cappuccino của người phương Tây, ông Giảng đã âm thầm nghiên cứu một cách pha chế khác rẻ tiền hơn, nhất là khi sữa tươi là một mặt hàng khan hiếm trong bối cảnh Hà Nội thời đó. Lòng đỏ trứng gà được đánh bông lên, tạo hiệu quả y hệt như một cốc cà phê capuchino chính hiệu. "+
      "Sau khi đánh trứng, cà phê vừa lọc qua phin được đun sôi lên và đổ luôn vào ly trứng khiến cho trứng nổi lên trên, nhìn bọt trứng pha lẫn cà phê tạo ra một màu vàng nâu cực kỳ hấp dẫn."+
      "bí quyết gia truyền của ông Giảng vẫn là cho thêm nhiều thứ vào lòng đỏ trứng trước khi đánh bông. . Sự đặc biệt còn nằm ở chất lượng cà phê, cách pha cà phê, tỉ lệ giữa cà phê và trứng trong một ly, tất cả tạo nên một vị thơm ngon, đậm đà hiếm thấy.",
      "assets/CS2.png",["assets/CS.jpeg","assets/CS11.png","assets/CS12.png","assets/CS9.png"]),
];