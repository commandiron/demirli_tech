class AppStrings {
  static String? homeTitle;
  static String? homeSubTitle;
  static List<String>? visionCategories;

  static String? aboutText;

  static String? contactFooter;

  static void init() {
    homeTitle = "İnşaat sektöründe mobil tabanlı teknoloji çözümleri sunuyoruz.";
    homeSubTitle = "Uçtan uca tüm inşaat sektörünün inovasyonu ve yapay zeka uygulamaları için gelin beraber çalışalım.";
    visionCategories = [
      "Fizibilite",
      "Tasarım",
      "Uygulama",
      "Kontrol",
      "Bakım"
    ];

    aboutText =
      "Demirli Tech, 2023 yılında inşaat sektörüne yönelik mobil uygulamalar üreten, "
      "teknolojik fırsatların ve yapay zeka ile ilgili gelişmelerin "
      "sektör tarafından kullanılabilmesi için inovatif araçlar geliştiren "
      "bir şirket olarak kurulmuştur. "
      "\n"
      "\nBiz, özellikle küçük ve orta ölçekli sektör temsilcilerine ve sektörün müşterilerine yönelik "
      "tüm bilgi ve araçları kolayca erişebilmelerini sağlamak amacıyla, "
      "kullanıcı dostu ve çok yönlü uygulamalar geliştiriyoruz. "
      "\n"
      "\nMisyonumuz, sektörde verimliliği artırmak ve iş süreçlerini kolaylaştırmaktır. "
      "Bunu yaparken, kullanıcıların gerçek ihtiyaçlarını anlamak ve onların beklentilerini karşılamak için "
      "sürekli olarak araştırma ve geliştirme yapıyoruz."
      "\n"
      "\nDemirli Tech, teknolojik gelişmelerin inşaat sektörüyle entegrasyonunu güçlendirmeyi "
      "ve inşaat süreçlerinin otomatize edilmesini hedefliyor.";

    contactFooter = "© 2023 by Demirli Tech";
  }
}