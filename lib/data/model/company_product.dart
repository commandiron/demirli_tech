class CompanyProduct {
  String logoAssetPath;
  String name;
  String shortDescription;
  String fullDescription;
  String imageAssetPath;
  Stage stage;

  CompanyProduct(
    {
      required this.logoAssetPath,
      required this.name,
      required this.shortDescription,
      required this.fullDescription,
      required this.imageAssetPath,
      required this.stage
    }
  );

  static List<CompanyProduct> items = [
    CompanyProduct(
      logoAssetPath: "assets/images/product/kost/kost_logo_100.png",
      name: "Kost",
      shortDescription: "Konut inşaatı maliyet hesaplama uygulaması",
      fullDescription:
      "Kost, konut inşaatı maliyet hesaplamak için tasarlanmış bir mobil uygulamadır. Kullanıcı dostu tasarımı sayesinde, kolayca kullanabileceğiniz bir arayüze sahiptir. Küçük ve orta ölçekli konut projeleri için uygun olan uygulama, maliyetleri hızlı ve otomatik olarak hesaplamanızı sağlar. "
      "Kost, maliyetleri çeşitli kategorilerde sınıflandırarak, maliyetleri daha iyi anlamanızı ve kontrol etmenizi sağlar. "
      "Örneğin, malzeme maliyetleri, işçilik maliyetleri, giderler veya genel giderler gibi. Ayrıca, uygulama içinde çeşitli maliyet hesaplama aracıları mevcuttur. Örneğin, malzeme maliyetlerini hesaplamak için bir materyal maliyet hesaplama aracı veya işçilik maliyetlerini hesaplamak için bir işçilik maliyet hesaplama aracı gibi. "
      "\n"
      "\nKost, konut inşaatı maliyet hesaplamak için ideal bir uygulamadır ve kullanımı kolaydır. Ayrıca, uygulama üzerinden raporlar oluşturarak, maliyetleri daha iyi analiz edebilirsiniz. Bu uygulama, maliyet hesaplamalarınızda size yardımcı olacak ve inşaat projelerinizi daha iyi planlamanıza olanak tanıyacaktır.",
      imageAssetPath: "assets/images/product/kost/cost_cover.png",
      stage: Stage.research
    ),
    CompanyProduct(
      logoAssetPath: "assets/images/product/planok/planok_logo_100.png",
      name: "Planok",
      shortDescription: "Küçük ve orta ölçekli inşaat projeleri için planlama ve takip uygulaması",
      fullDescription: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. \n \nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
      imageAssetPath: "assets/images/product/planok/planok_cover.png",
      stage: Stage.research
    ),
    CompanyProduct(
      logoAssetPath: "assets/images/product/qr_projem/qr_projem_logo_100.png",
      name: "Qr Projem",
      shortDescription: "İnşaat şirketleri için Qr kod ile bağlanmış proje tanıtım broşürü oluşturma uygulaması.",
      fullDescription: "Qr Projem, inşaat şirketleri için geliştirilmiş bir inşaat projesi tanıtım broşürü oluşturma uygulamasıdır. "
          "Kullanıcılar yani inşaat şirket yöneticileri veya pazarlama uzmanları bu uygulama sayesinde, proje bilgileri ile görsellerini ekleyerek "
          "projelerine bağlantılı bir qr kod oluşturabilecek ve o qr kodu kullanarak projelerinin tanıtımını yapabilceklerdir.",
      imageAssetPath: "assets/images/product/qr_projem/qr_projem_cover.png",
      stage: Stage.development
    ),
    CompanyProduct(
      logoAssetPath: "assets/images/product/reb_ar/reb_ar_logo_100.png",
      name: "Reb AR",
      shortDescription: "Yakında...",
      fullDescription: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. \n \nNeque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
      imageAssetPath: "assets/images/product/reb_ar/reb_ar_cover.png",
      stage: Stage.research
    ),
  ];
}

enum Stage {
  research, development, live
}