import 'package:discountandcodes/models/store_model.dart';
import '../models/coupon_model.dart';

class DummyData {
  static List<Store> stores = [
    Store(
        storeName: 'Zaful',
        description:
            "Zaful.com is a leading one-stop online shop for today's most daring, exciting and edgy fashion apparels.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg",     totalCoupons: 28, category: 'Clothing & Fashion'),
    Store(
        storeName: 'Abba Patio',
        description:
            "We are a top designer and manufacturer of high-quality outdoor products. Our mission at Abba Patio is to help you transform your entire outdoor living space into one that is comfortable, durable and luxurious.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/abbapatiocom.jpg", totalCoupons: 10, category: 'Home & Garden'),
    Store(
        storeName: "AllBeauty",
        description:
            "Perfumes, aftershaves and gift sets for men and women. UK retailer ships worldwide.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg",     totalCoupons: 10, category: 'Clothing & Fashion'),
    Store(
        storeName: "Macy's",
        description:
        "Macy's is a major apparel department brand that markets products and services at macys.com. Macy's competes with other top apparel department brands such as Kohl's, JCPenney and Marshalls. Macy's sells mid-range purchase size items on its own website and partner sites in the competitive online apparel department industry.",
        image:
        "https://cdn.dealspotr.com/io-images/logo/macyscom.jpg",     totalCoupons: 10, category: 'Clothing & Fashion'),
    Store(
        storeName: "Walmart",
        description:
        "Walmart is a major grocery that markets products and services at walmart.com. Walmart competes with other top grocery such as Target, Costco and Sam's Club. Walmart sells mid-range purchase size items on its own website and partner sites in the extremely competitive online grocery industry.",  image:
        "https://cdn.dealspotr.com/io-images/logo/walmartcom.jpg", totalCoupons: 10, category: 'Home & Garden'),
    Store(
        storeName: 'Brucemore',
        description:
        "Best Buy is a major household electronic parts brand that markets products and services at bestbuy.com. Best Buy competes with other top household electronic parts brands such as Newegg, Monoprice and Abt Electronics. Best Buy sells bigger ticket items or higher priced products or services in the extremely competitive online household electronic parts industry.", image:
        "https://cdn.dealspotr.com/io-images/logo/bestbuycom.jpg",  totalCoupons: 28, category: 'Travel'),
    Store(
        storeName: 'Best Buy',
        description:
        "Best Buy is a major household electronic parts brand that markets products and services at bestbuy.com. Best Buy competes with other top household electronic parts brands such as Newegg, Monoprice and Abt Electronics. Best Buy sells bigger ticket items or higher priced products or services in the extremely competitive online household electronic parts industry.",
        image:
        "https://cdn.dealspotr.com/io-images/logo/bestbuycom.jpg", totalCoupons: 28, category: 'Electronic'),
    Store(
        storeName: 'Walgreens',
        description:
        "Walgreens is a major medicine cabinet store that markets products and services at walgreens.com. Walgreens competes with other top pharmacy solutions such as Happy Mammoth, American Red Cross and Pharmaca. Walgreens sells mid-range purchase size items on its own website and partner sites in the extremely competitive online medicine cabinet industry.",
        image:
        "https://cdn.dealspotr.com/io-images/logo/walgreenscom.jpg",
        totalCoupons: 28, category: 'Clothing & Fashion'),
    //Store(storeName: storeName, description: description, image: image, totalCoupons: totalCoupons)
  ];
  static List<Coupon> coupons = [
    Coupon(
        title: '35% Off',
        description: 'Walmart Deal: Get Up to 35% Off Select Items at Walmart',
        code: "wowfresh",
        image: "https://cdn.dealspotr.com/io-images/logo/walmartcom.jpg", storeName: 'Walmart'),
    Coupon(
        title: '15% Off',
        description: 'Extra 15% Off Select Tempaper Wallpaper at Homedepot.com',
        code: "TEMPAPER15",
        image:
            'https://cdn.shopify.com/s/files/1/0252/8310/0734/files/COROS_canada_white_-_copie.png', storeName: 'Homedepot'),
    Coupon(
        title: "25% Off",
        description: "Extra 25% Off Your Order at Bestbuy.com w/Coupon Code",
        code: "FREEBEST",
        image:
            "https://cdn.dealspotr.com/io-images/logo/bestbuycom.jpg", storeName: 'Best Buy'),
    Coupon(
        title: '10% Flat',
        description: 'Get 10% flat discount using this Zaful coupon code.',
        code: "FLAT10",
        image:
        "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg", storeName: 'Zaful'),
    Coupon(
        title: '10% Off',
        description: '10% Off on orders above 75. Exclusions: New Customer Only.',
        code: "SAVE10",
        image:
        "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg", storeName: 'AllBeauty'),
    Coupon(
        title: '15% Off',
        description: 'Up To 15% Off over 100 (Sitewide) at Allbeauty.com ',
        code: "WEEKEND15",
        image:
        "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg", storeName: 'AllBeauty'),
    Coupon(
        title: '20% Off',
        description: 'Save 20% Off Store-wide at Zaful.com. Visit Now.',
        code: "EMILY18",
        image:
        "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg", storeName: 'Zaful'),
    Coupon(
        title: "10% off",
        description: "50% Off Everything Photo at Walgreens.com",
        code: 'ALLSUNNY',
        image:
            'https://cdn.dealspotr.com/io-images/logo/walgreenscom.jpg', storeName: 'Walgreens')
  ];
}
