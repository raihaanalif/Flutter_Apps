class City {
  String name;
  String desc;
  String positiveCase;
  String deadCase;
  String bgColor;
  String imageAsset;

  City({
    this.name,
    this.desc,
    this.positiveCase,
    this.deadCase,
    this.bgColor,
    this.imageAsset,
  });
}
var city = [
  City(
    name: 'Jakarta',
    desc: 'Ibukota yang memiliki kepadatan penduduk yang diatas rata rata dan merupakan provinsi dengan jumlah kasus corona terbanyak.',
    positiveCase: '798.502',
    deadCase: '11.606',
    bgColor: 'red',
    imageAsset: 'assets/jakarta.jpg',
  ),
  City(
    name: 'Bandung',
    desc: 'Ibukota Provinsi Jawa Barat yang sempat menjadi daerah dengan cluster covid terbanyak.',
    positiveCase: '35.166',
    deadCase: '1.191',
    bgColor: 'red',
    imageAsset: 'assets/bandung.jpg',
  ),
  City(
    name: 'Surabaya',
    desc: 'Ibukota Provinsi Jawa Timur yang wilayahnya sempat menjadi kota dengan jumlah kasus positif kedua terbanyak setelah Jakarta.',
    positiveCase: '46.317',
    deadCase: '1.630',
    bgColor: 'red',
    imageAsset: 'assets/surabaya.jpg',
  ),
  City(
    name: 'Aceh',
    desc: 'Salah satu daerah istimewa di Indonesia yang terletak di ujung Indonesia memiliki penambahan kasus yang tidak signifikan.',
    positiveCase: '22.104',
    deadCase: '954',
    bgColor: 'yellow',
    imageAsset: 'assets/aceh.jpg',
  ),
  City(
  name: 'Bali',
  desc: 'Merupakan daerah yang menjadi pusat perhatian turis selama di Indonesia ini memiliki total kasus yang tidak jauh berbeda dengan kota kota yang ada di Jawa.',
  positiveCase: '69.789',
  deadCase: '2.016',
  bgColor: 'red',
  imageAsset: 'assets/bali.jpg',
  ),
  City(
    name: 'Malang',
    desc: 'Merupakan salah satu daerah di jawa timur yang menjadi cluster penyebaran COVID 19 selain Surabaya.',
    positiveCase: '10392',
    deadCase: '752',
    bgColor: 'red',
    imageAsset: 'assets/malang.jpg',
  ),
  City(
    name: 'Bogor',
    desc: 'Merupakan salah satu kota besar yang terletak di Jawa Barat yang mempunyai total terkonfirmasi pasien COVID 19 terbanyak setelah Bandung',
    positiveCase: '31.288',
    deadCase: '407',
    bgColor: 'red',
    imageAsset: 'assets/bogor.jpg',
  ),
  City(
    name: 'Lampung',
    desc: 'Merupakan salah satu daerah yang ada di Sumatera Selatan, merupakan salah satu tempat dengan kasus COVID 19 terbanyak di luar Pulau Jawa.',
    positiveCase: '32.316',
    deadCase: '1.908',
    bgColor: 'red',
    imageAsset: 'assets/lampung.jpg',
  )
];