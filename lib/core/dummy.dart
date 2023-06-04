import 'package:discountandcodes/models/store_model.dart';
import '../models/coupon_model.dart';

class DummyData {
  static List<String> categories = [
    'Electronic',
    'Home & Garden',
    'Clothing & Fashion',
    'Gaming',
    "Travel"
  ];
  static List<Store> stores = [
    Store(
        storeName: 'Zaful',
        shortDescription:
            "Zaful.com is a leading one-stop online shop for today's most daring, exciting and edgy fashion apparels.",
        image: "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg",
        totalCoupons: 28,
        category: 'Clothing & Fashion',
        longDescription: '',
        url: 'zuful.com',
        affiliateUrl: 'zaful.com'),
    Store(
        storeName: 'Abba Patio',
        shortDescription:
            "We are a top designer and manufacturer of high-quality outdoor products. Our mission at Abba Patio is to help you transform your entire outdoor living space into one that is comfortable, durable and luxurious.",
        image: "https://cdn.dealspotr.com/io-images/logo/abbapatiocom.jpg",
        totalCoupons: 10,
        category: 'Home & Garden',
        longDescription: '',
        url: 'abbapatio.com',
        affiliateUrl: 'abbapatio.com'),
    Store(
        storeName: "AllBeauty",
        shortDescription:
            "Perfumes, aftershaves and gift sets for men and women. UK retailer ships worldwide.",
        image: "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg",
        totalCoupons: 10,
        category: 'Clothing & Fashion',
        longDescription: '',
        url: 'allebauty.com',
        affiliateUrl: 'allebauty.com'),
    Store(
      storeName: "Macy's",
      shortDescription:
          "Macy's is a major apparel department brand that markets products and services at macys.com. Macy's competes with other top apparel department brands such as Kohl's, JCPenney and Marshalls. Macy's sells mid-range purchase size items on its own website and partner sites in the competitive online apparel department industry.",
      image: "https://cdn.dealspotr.com/io-images/logo/macyscom.jpg",
      totalCoupons: 10,
      category: 'Clothing & Fashion',
      longDescription: '',
      url: 'www.macys.com',
      affiliateUrl: 'www.macys.com',
    ),
    Store(
        storeName: "Walmart",
        shortDescription:
            "Walmart is a major grocery that markets products and services at walmart.com. Walmart competes with other top grocery such as Target, Costco and Sam's Club. Walmart sells mid-range purchase size items on its own website and partner sites in the extremely competitive online grocery industry.",
        image: "https://cdn.dealspotr.com/io-images/logo/walmartcom.jpg",
        totalCoupons: 10,
        category: 'Home & Garden',
        longDescription: '',
        url: 'walmart.com',
        affiliateUrl: 'walmart.com'),
    Store(
        storeName: 'Best Buy',
        shortDescription:
            "Best Buy is a major household electronic parts brand that markets products and services at bestbuy.com. Best Buy competes with other top household electronic parts brands such as Newegg, Monoprice and Abt Electronics. Best Buy sells bigger ticket items or higher priced products or services in the extremely competitive online household electronic parts industry.",
        image: "https://cdn.dealspotr.com/io-images/logo/bestbuycom.jpg",
        totalCoupons: 28,
        category: 'Electronic',
        longDescription: '',
        url: 'bestbuy.com',
        affiliateUrl: 'bestbuy.com'),
    Store(
        storeName: 'Mandala Scrubs',
        shortDescription:
            "Mandala Scrubs is a major scrubs & medical uniform store that markets products and services at wearmandala.com. Mandala Scrubs competes with other top scrubs & medical uniform stores such as FIGS, Scrubs & Beyond and Jaanuu. Mandala Scrubs sells bigger ticket items or higher priced products or services in the competitive online scrubs & medical uniforms industry.When it comes to offering discount codes, Mandala Scrubs very rarely issues promotional discount codes. Mandala Scrubs is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/mandala-scrubs.jpg",
        totalCoupons: 28,
        category: 'Clothing & Fashion',
        longDescription: '',
        url: 'wearmandala.com',
        affiliateUrl: 'wearmandala.com'),
    Store(
        storeName: 'StyleWe',
        shortDescription:
            "StyleWe is a major women's clothing store that markets products and services at stylewe.com. StyleWe competes with other top women's clothing stores such as Cider, Maurices and Woman Within. StyleWe sells mid-range purchase size items on its own website and partner sites in the extremely competitive online women's clothing industry.When it comes to offering discount codes, StyleWe offers coupon codes and discounts actively. StyleWe is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/stylewecom.jpg",
        totalCoupons: 28,
        category: 'Clothing & Fashion',
        longDescription: '',
        url: 'stylewe.com',
        affiliateUrl: 'stylewe.com'),
    Store(
        storeName: 'The Walking Company',
        shortDescription:
            "The Walking Company is a major footwear brand that markets products and services at thewalkingcompany.com. The Walking Company competes with other top footwear brands such as DSW, Kizik and Crocs. The Walking Company sells mid-range purchase size items on its own website and partner sites in the extremely competitive online footwear industry.When it comes to offering discount codes, The Walking Company issues coupons and discount offers regularly but less frequently than competitors. The Walking Company is a highly sought-after brands when it comes to discount codes and promotional deals, with thousands of consumer web searches for The Walking Company codes and deals each month.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/thewalkingcompanycom.jpg",
        totalCoupons: 28,
        category: 'Clothing & Fashion',
        longDescription: '',
        url: 'thewalkingcompany.com',
        affiliateUrl: 'thewalkingcompany.com'),
    Store(
        storeName: 'Ecobee',
        shortDescription:
            "Ecobee is a major smart home brand that markets products and services at ecobee.com. Ecobee competes with other top connected home feature brands such as Vivint, Ring and Walabot. Ecobee sells mid-range purchase size items on its own website and partner sites in the extremely competitive online smart home industry.When it comes to offering discount codes, Ecobee somewhat rarely offers discount codes and coupons. Ecobee is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/ecobee.jpg",
        totalCoupons: 28,
        category: 'Electronic',
        longDescription: '',
        url: 'ecobee.com',
        affiliateUrl: 'ecobee.com'),
    Store(
        storeName: 'Simplehuman',
        shortDescription:
            "Simplehuman is a major smart trash can brand that markets products and services at simplehuman.com. Simplehuman competes with other top connected trash can manufacturers such as Nine Stars, ITouchless and AirdeerTech. Simplehuman sells mid-range purchase size items on its own website and partner sites in the niche online smart trash cans industry.When it comes to offering discount codes, Simplehuman issues coupons and discount offers regularly but less frequently than competitors. Simplehuman is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/simplehumancom.jpg",
        totalCoupons: 28,
        category: 'Electronic',
        longDescription: '',
        url: 'simplehuman.com',
        affiliateUrl: 'simplehuman.com'),
    Store(
        storeName: 'Jostens',
        shortDescription:
            "Jostens is a major photo printing services store that markets products and services at jostens.com. Jostens competes with other top photo printing services stores such as Vistaprint, Shutterfly and SnapFish. Jostens sells mid-range purchase size items on its own website and partner sites in the highly competitive online photo printing services industry.When it comes to offering discount codes, Jostens offers coupon codes and discounts actively. Jostens is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/jostenscom.jpg",
        totalCoupons: 28,
        category: 'Electronic',
        longDescription: '',
        url: 'jostens.com',
        affiliateUrl: 'jostens.com'),
    Store(
        storeName: 'Playstation',
        shortDescription:
            "Playstation is a major gaming console brand that markets products and services at playstation.com. Playstation competes with other top gaming console brands such as Nintendo, Xbox and Loupedeck. Playstation sells mid-range purchase size items on its own website and partner sites in the niche online gaming consoles industry.When it comes to offering discount codes, Playstation very rarely issues promotional discount codes. Playstation is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/playstationcom.jpg",
        totalCoupons: 28,
        category: 'Electronic',
        longDescription: '',
        url: 'playstation.com',
        affiliateUrl: 'playstation.com'),
    Store(
        storeName: 'Magic Spoon',
        shortDescription:
            "Magic Spoon is a major cereal & oatmeal brand that markets products and services at magicspoon.com. Magic Spoon competes with other top cereal & oatmeal brands such as Raw Rev, Nature's Path and GoOats. Magic Spoon sells mid-range purchase size items on its own website and partner sites in the competitive online cereal & oatmeal industry.When it comes to offering discount codes, Magic Spoon issues coupons and discount offers regularly but less frequently than competitors. Magic Spoon is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/magicspooncom.jpg",
        totalCoupons: 28,
        category: 'Home & Garden',
        longDescription: '',
        url: 'magicspoon.com',
        affiliateUrl: 'magicspoon.com'),
    Store(
        storeName: "America's Test Kitchen",
        shortDescription:
            "America's Test Kitchen is a major cooking class store that markets products and services at americastestkitchen.com. America's Test Kitchen competes with other top cooking class stores such as Raddish Kids, Christopher Kimball's Milk Street and YesChef. America's Test Kitchen sells mid-range purchase size items on its own website and partner sites in the competitive online cooking classes industry.When it comes to offering discount codes, America's Test Kitchen very rarely issues promotional discount codes. America's Test Kitchen is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/americastestkitchencom.jpg",
        totalCoupons: 28,
        category: 'Home & Garden',
        longDescription: '',
        url: 'americastestkitchen.com',
        affiliateUrl: 'americastestkitchen.com'),
    Store(
        storeName: 'Babybay',
        shortDescription:
            "Babybay is a major nursery brand that markets products and services at babybay.us. Babybay competes with other top nursery brands such as Modern Nursery, Delta Children and Little Lona. Babybay sells bigger ticket items or higher priced products or services in the competitive online nursery industry.When it comes to offering discount codes, Babybay somewhat rarely offers discount codes and coupons. Babybay is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/babybayus.jpg",
        totalCoupons: 28,
        category: 'Home & Garden',
        longDescription: '',
        url: 'babybay.us',
        affiliateUrl: 'babybay.us'),
    Store(
        storeName: 'Tiqets',
        shortDescription:
            "Tiqets is a major event ticketing store that markets products and services at tiqets.com. Tiqets competes with other top event ticketing stores such as TickPick, SeatGeek and Ticketmaster. Tiqets sells mid-range purchase size items on its own website and partner sites in the highly competitive online event ticketing industry.When it comes to offering discount codes, Tiqets issues coupons and discount offers regularly but less frequently than competitors. Tiqets is a highly sought-after brands when it comes to discount codes and promotional deals, with thousands of consumer web searches for Tiqets codes and deals each month.",
        image: "https://cdn.dealspotr.com/io-images/logo/tiqetscom.jpg",
        totalCoupons: 28,
        category: 'Travel',
        longDescription: '',
        url: 'tiqets.com',
        affiliateUrl: 'tiqets.com'),
    Store(
        storeName: 'Arizona Grand Resort',
        shortDescription:
            "Arizona Grand Resort is a major water park store that markets products and services at arizonagrandresort.com. Arizona Grand Resort competes with other top water park stores such as Raging Waves, Dolphin Discovery and Wilderness Resort. Arizona Grand Resort sells mid-range purchase size items on its own website and partner sites in the competitive online water parks industry.When it comes to offering discount codes, Arizona Grand Resort very rarely issues promotional discount codes. Arizona Grand Resort is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/arizonagrandresort.jpg",
        totalCoupons: 28,
        category: 'Travel',
        longDescription: '',
        url: 'arizonagrandresort.com',
        affiliateUrl: 'arizonagrandresort.com'),
    Store(
        storeName: 'Longwood Gardens',
        shortDescription:
            "Longwood Gardens is a major botanical garden store that markets products and services at longwoodgardens.org. Longwood Gardens competes with other top botanical garden stores such as Minnesota Landscape Arboretum, Missouri Botanical Garden and Desert Botanical Garden. Longwood Gardens sells mid-range purchase size items on its own website and partner sites in the competitive online botanical gardens industry.When it comes to offering discount codes, Longwood Gardens very rarely issues promotional discount codes. Longwood Gardens is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image:
            "https://cdn.dealspotr.com/io-images/logo/longwoodgardensorg.jpg",
        totalCoupons: 28,
        category: 'Travel',
        longDescription: '',
        url: 'longwoodgardens.org',
        affiliateUrl: 'longwoodgardens.org'),
    Store(
        storeName: 'Aquarius Casino Resort',
        shortDescription:
            "Aquarius Casino Resort is a major hotel brand that markets products and services at aquariuscasinoresortcom-us. Aquarius Casino Resort competes with other top hotel brands such as Hotels.com, Marriott Bonvoy and Hilton. Aquarius Casino Resort sells mid-range purchase size items on its own website and partner sites in the extremely competitive online hotels industry.When it comes to offering discount codes, Aquarius Casino Resort very rarely issues promotional discount codes. Aquarius Casino Resort is a highly sought-after brands when it comes to discount codes and promotional deals, with thousands of consumer web searches for Aquarius Casino Resort codes and deals each month.",
        image: "https://cdn.dealspotr.com/io-images/logo/aquariuscasino.jpg",
        totalCoupons: 28,
        category: 'Travel',
        longDescription: '',
        url: 'aquariuscasinoresort.com',
        affiliateUrl: 'aquariuscasinoresort.com'),
    Store(
        storeName: 'Gametime',
        shortDescription:
            "Gametime is a major event ticketing store that markets products and services at gametime.co. Gametime competes with other top event ticketing stores such as TickPick, SeatGeek and Ticketmaster. Gametime sells mid-range purchase size items on its own website and partner sites in the highly competitive online event ticketing industry.When it comes to offering discount codes, Gametime issues coupons and discount offers regularly but less frequently than competitors. Gametime is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/gametime.jpg",
        totalCoupons: 28,
        category: 'Gaming',
        longDescription: '',
        url: 'gametime.co',
        affiliateUrl: 'gametime.co'),
    Store(
        storeName: 'Game Golf',
        shortDescription:
            "Game Golf is a mid-size golf equipment store that markets products and services at gamegolf.com. Game Golf competes with other top golf equipment stores such as PGA TOUR Superstore, TGW and 2nd Swing. Game Golf sells bigger ticket items or higher priced products or services in the highly competitive online golf equipment industry.When it comes to offering discount codes, Game Golf very rarely issues promotional discount codes. Game Golf is a highly sought-after brands when it comes to discount codes and promotional deals, with thousands of consumer web searches for Game Golf codes and deals each month.",
        image: "https://cdn.dealspotr.com/io-images/logo/gamegolfcom.jpg",
        totalCoupons: 28,
        category: 'Gaming',
        longDescription: '',
        url: 'gamegolf.com/home/',
        affiliateUrl: 'gamegolf.com/home/'),
    Store(
        storeName: 'Gameforge',
        shortDescription:
            "Gameforge is a major gaming that markets products and services at gameforge.com. Gameforge competes with other top gaming such as GameBillet, Shadow and Giant Bomb. Gameforge sells mid-range purchase size items on its own website and partner sites in the extremely competitive online gaming industry.When it comes to offering discount codes, Gameforge very rarely issues promotional discount codes. Gameforge is a highly sought-after brands when it comes to discount codes and promotional deals, with thousands of consumer web searches for Gameforge codes and deals each month.",
        image: "https://cdn.dealspotr.com/io-images/logo/gameforgecom.jpg",
        totalCoupons: 28,
        category: 'Gaming',
        longDescription: '',
        url: 'gameforge.com/en-US/',
        affiliateUrl: 'gameforge.com/en-US/'),
    Store(
        storeName: 'GameFly',
        shortDescription:
            "GameFly is a major video game distributors & that markets products and services at gamefly.com. GameFly competes with other top video game distributors & such as G2A, GAMIVO and PlayStation Store. GameFly sells mid-range purchase size items on its own website and partner sites in the competitive online video game distributors & industry.When it comes to offering discount codes, GameFly very rarely issues promotional discount codes. GameFly is among the most sought-after brands when it comes to coupons and discount offers, with hundreds of thousands of searches for coupons each month, offset against its relatively low volume of coupons issued.",
        image: "https://cdn.dealspotr.com/io-images/logo/gameflycom.jpg",
        totalCoupons: 28,
        category: 'Gaming',
        longDescription: '',
        url: 'GameFly.com',
        affiliateUrl: 'GameFly.com'),

    Store(
      storeName: 'Walgreens',
      shortDescription:
          "Walgreens is a major medicine cabinet store that markets products and services at walgreens.com. Walgreens competes with other top pharmacy solutions such as Happy Mammoth, American Red Cross and Pharmaca. Walgreens sells mid-range purchase size items on its own website and partner sites in the extremely competitive online medicine cabinet industry.",
      image: "https://cdn.dealspotr.com/io-images/logo/walgreenscom.jpg",
      totalCoupons: 28,
      category: 'Clothing & Fashion',
      longDescription: '',
      url: 'Walgreens.com',
      affiliateUrl: 'Walgreens.com',
    ),
    //Store(storeName: storeName, description: description, image: image, totalCoupons: totalCoupons)
  ];
  static List<Coupon> coupons = [
    Coupon(
        title: '35% Off',
        description: 'Walmart Deal: Get Up to 35% Off Select Items at Walmart',
        code: "wowfresh",
        image: "https://cdn.dealspotr.com/io-images/logo/walmartcom.jpg",
        storeName: 'Walmart'),
    Coupon(
        title: '15% Off',
        description: 'Extra 15% Off Select Tempaper Wallpaper at Homedepot.com',
        code: "TEMPAPER15",
        image:
            'https://cdn.shopify.com/s/files/1/0252/8310/0734/files/COROS_canada_white_-_copie.png',
        storeName: 'Homedepot'),
    Coupon(
        title: "25% Off",
        description: "Extra 25% Off Your Order at Bestbuy.com w/Coupon Code",
        code: "FREEBEST",
        image: "https://cdn.dealspotr.com/io-images/logo/bestbuycom.jpg",
        storeName: 'Best Buy'),
    Coupon(
        title: '10% Flat',
        description: 'Get 10% flat discount using this Zaful coupon code.',
        code: "FLAT10",
        image: "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg",
        storeName: 'Zaful'),
    Coupon(
        title: '10% Off',
        description:
            '10% Off on orders above 75. Exclusions: New Customer Only.',
        code: "SAVE10",
        image: "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg",
        storeName: 'AllBeauty'),
    Coupon(
        title: '15% Off',
        description: 'Up To 15% Off over 100 (Sitewide) at Allbeauty.com ',
        code: "WEEKEND15",
        image: "https://cdn.dealspotr.com/io-images/logo/allbeautycom.jpg",
        storeName: 'AllBeauty'),
    Coupon(
        title: '20% Off',
        description: 'Save 20% Off Store-wide at Zaful.com. Visit Now.',
        code: "EMILY18",
        image: "https://cdn.dealspotr.com/io-images/logo/zafulcom.jpg",
        storeName: 'Zaful'),
    Coupon(
        title: "10% off",
        description: "50% Off Everything Photo at Walgreens.com",
        code: 'ALLSUNNY',
        image: 'https://cdn.dealspotr.com/io-images/logo/walgreenscom.jpg',
        storeName: 'Walgreens')
  ];
}
