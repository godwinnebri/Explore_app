// class Country {
//     Country({
//        required this.name,
//        required this.tld,
//        required this.cca2,
//        required this.ccn3,
//        required this.cca3,
//        required this.cioc,
//        required this.independent,
//        required this.status,
//        required this.unMember,
//        required this.currencies,
//        required this.idd,
//        required this.capital,
//        required this.altSpellings,
//        required this.region,
//        required this.subregion,
//        required this.languages,
//        required this.translations,
//        required this.latlng,
//        required this.landlocked,
//        required this.borders,
//        required this.area,
//        required this.demonyms,
//        required this.flag,
//        required this.maps,
//        required this.population,
//        required this.gini,
//        required this.fifa,
//        required this.car,
//        required this.timezones,
//        required this.continents,
//        required this.flags,
//        required this.coatOfArms,
//       required  this.startOfWeek,
//       required  this.capitalInfo,
//       required  this.postalCode,
//     });

//     Name name;
//     List<String> tld;
//     String cca2;
//     String ccn3;
//     String cca3;
//     String cioc;
//     bool independent;
//     Status status;
//     bool unMember;
//     Currencies currencies;
//     Idd idd;
//     List<String> capital;
//     List<String> altSpellings;
//     Region region;
//     String subregion;
//     Map<String, String> languages;
//     Map<String, Translation> translations;
//     List<double> latlng;
//     bool landlocked;
//     List<String> borders;
//     double area;
//     Demonyms demonyms;
//     String flag;
//     Maps maps;
//     int population;
//     Map<String, double> gini;
//     String fifa;
//     Car car;
//     List<String> timezones;
//     List<Continent> continents;
//     CoatOfArms flags;
//     CoatOfArms coatOfArms;
//     StartOfWeek startOfWeek;
//     CapitalInfo capitalInfo;
//     PostalCode postalCode;
// }

// class CapitalInfo {
//     CapitalInfo({
//        required this.latlng,
//     });

//     List<double> latlng;
// }

// class Car {
//     Car({
//       required  this.signs,
//       required  this.side,
//     });

//     List<String> signs;
//     Side side;
// }

// enum Side { RIGHT, LEFT }

// class CoatOfArms {
//     CoatOfArms({
//        required this.png,
//        required this.svg,
//     });

//     String png;
//     String svg;
// }

// enum Continent { AFRICA, NORTH_AMERICA, SOUTH_AMERICA, EUROPE, ASIA, OCEANIA, ANTARCTICA }

// class Currencies {
//     Currencies ({
//         required this.mru,
//        required this.awg,
//       required  this.ars,
//       required  this.sek,
//       required  this.mvr,
//       required  this.mxn,
//       required  this.nzd,
//       required  this.usd,
//       required  this.xpf,
//       required  this.eur,
//        required this.pkr,
//       required  this.zmw,
//       required  this.scr,
//       required  this.myr,
//       required  this.nok,
//       required  this.uzs,
//       required  this.vuv,
//       required  this.aud,
//       required  this.sgd,
//       required  this.srd,
//       required  this.dzd,
//       required  this.mad,
//       required  this.crc,
//       required  this.lyd,
//       required  this.qar,
//        required this.dkk,
//       required  this.mur,
//       required  this.kzt,
//       required  this.all,
//       required  this.bhd,
//       required  this.pgk,
//      required   this.bif,
//      required   this.inr,
//      required   this.uyu,
//       required  this.xcd,
//      required   this.bbd,
//       required  this.mop,
//       required  this.gbp,
//       required  this.imp,
//      required   this.syp,
//      required   this.ang,
//      required   this.xof,
//      required   this.kgs,
//      required   this.ttd,
//      required   this.egp,
//      required   this.ils,
//      required   this.jod,
//      required   this.mga,
//      required   this.hrk,
//      required   this.fok,
//      required   this.htg,
//      required   this.ckd,
//      required   this.cuc,
//     required    this.cup,
//     required    this.twd,
//      required   this.szl,
//       required  this.zar,
//       required  this.uah,
//       required  this.bmd,
//       required  this.krw,
//       required  this.pen,
//       required  this.iqd,
//       required  this.mdl,
//       required  this.ves,
//       required  this.gyd,
//       required  this.kyd,
//       required  this.khr,
//        required this.lkr,
//       required  this.sdg,
//       required  this.ern,
//       required  this.sos,
//       required  this.kmf,
//       required  this.nio,
//       required  this.rub,
//       required  this.ugx,
//       required  this.tjs,
//       required  this.ssp,
//        required this.czk,
//       required  this.bwp,
//       required  this.tnd,
//         required this.jmd,
//      required  this.mzn,
//       required  this.hnl,
//        required this.azn,
//       required  this.mkd,
//       required  this.gmd,
//      required   this.lrd,
//        required this.cve,
//       required  this.bsd,
//         required this.gel,
//        required this.kid,
//        required this.tzs,
//        required this.cny,
//        required this.gtq,
//       required  this.stn,
//        required this.sll,
//        required this.xaf,
//       required  this.thb,
//      required   this.idr,
//      required   this.gip,
//       required  this.tmt,
//       required  this.dop,
//       required  this.ghs,
//       required  this.jep,
//       required  this.currenciesTry,
//       required  this.tvd,
//       required  this.irr,
//        required this.kes,
//        required this.bgn,
//        required this.zwl,
//       required  this.aoa,
//        required this.ngn,
//        required this.pln,
//        required this.shp,
//        required this.lbp,
//        required this.wst,
//        required this.php,
//        required this.ggp,
//       required  this.kwd,
//        required this.top,
//       required  this.omr,
//       required  this.afn,
//       required  this.rsd,
//       required  this.amd,
//        required this.bdt,
//        required this.lak,
//        required this.clp,
//        required this.pab,
//        required this.npr,
//        required this.mmk,
//       required  this.fkp,
//      required   this.huf,
//      required   this.gnf,
//        required this.aed,
//        required this.bam,
//        required this.mwk,
//       required  this.btn,
//       required  this.cdf,
//       required  this.vnd,
//       required  this.brl,
//       required  this.bzd,
//       required  this.pyg,
//       required  this.bnd,
//       required  this.bob,
//        required this.djf,
//        required this.cad,
//        required this.jpy,
//        required this.rwf,
//       required  this.isk,
//       required  this.byn,
//        required this.hkd,
//        required this.lsl,
//        required this.fjd,
//        required this.cop,
//        required this.sar,
//        required this.etb,
//        required this.kpw,
//        required this.nad,
//        required this.mnt,
//       required  this.sbd,
//       required  this.yer,
//       required  this.ron,
//     });

//     Aed mru;
//     Aed awg;
//     Aed ars;
//     Aed sek;
//     Aed mvr;
//     Aed mxn;
//     Aed nzd;
//     Aed usd;
//     Aed xpf;
//     Aed eur;
//     Aed pkr;
//     Aed zmw;
//     Aed scr;
//     Aed myr;
//     Aed nok;
//     Aed uzs;
//     Aed vuv;
//     Aed aud;
//     Aed sgd;
//     Aed srd;
//     Aed dzd;
//     Aed mad;
//     Aed crc;
//     Aed lyd;
//     Aed qar;
//     Aed dkk;
//     Aed mur;
//     Aed kzt;
//     Aed all;
//     Aed bhd;
//     Aed pgk;
//     Aed bif;
//     Aed inr;
//     Aed uyu;
//     Aed xcd;
//     Aed bbd;
//     Aed mop;
//     Aed gbp;
//     Aed imp;
//     Aed syp;
//     Aed ang;
//     Aed xof;
//     Aed kgs;
//     Aed ttd;
//     Aed egp;
//     Aed ils;
//     Aed jod;
//     Aed mga;
//     Aed hrk;
//     Aed fok;
//     Aed htg;
//     Aed ckd;
//     Aed cuc;
//     Aed cup;
//     Aed twd;
//     Aed szl;
//     Aed zar;
//     Aed uah;
//     Aed bmd;
//     Aed krw;
//     Aed pen;
//     Aed iqd;
//     Aed mdl;
//     Aed ves;
//     Aed gyd;
//     Aed kyd;
//     Aed khr;
//     Aed lkr;
//     Bam sdg;
//     Aed ern;
//     Aed sos;
//     Aed kmf;
//     Aed nio;
//     Aed rub;
//     Aed ugx;
//     Aed chf;
//     Aed tjs;
//     Aed ssp;
//     Aed czk;
//     Aed bwp;
//     Aed tnd;
//     Aed jmd;
//     Aed mzn;
//     Aed hnl;
//     Aed azn;
//     Aed mkd;
//     Aed gmd;
//     Aed lrd;
//     Aed cve;
//     Aed bsd;
//     Aed gel;
//     Aed kid;
//     Aed tzs;
//     Aed cny;
//     Aed gtq;
//     Aed stn;
//     Aed sll;
//     Aed xaf;
//     Aed thb;
//     Aed idr;
//     Aed gip;
//     Aed tmt;
//     Aed dop;
//     Aed ghs;
//     Aed jep;
//     Aed currenciesTry;
//     Aed tvd;
//     Aed irr;
//     Aed kes;
//     Aed bgn;
//     Aed zwl;
//     Aed aoa;
//     Aed ngn;
//     Aed pln;
//     Aed shp;
//     Aed lbp;
//     Aed wst;
//     Aed php;
//     Aed ggp;
//     Aed kwd;
//     Aed top;
//     Aed omr;
//     Aed afn;
//     Aed rsd;
//     Aed amd;
//     Aed bdt;
//     Aed lak;
//     Aed clp;
//     Aed pab;
//     Aed npr;
//     Aed mmk;
//     Aed fkp;
//     Aed huf;
//     Aed gnf;
//     Aed aed;
//     Bam bam;
//     Aed mwk;
//     Aed btn;
//     Aed cdf;
//     Aed vnd;
//     Aed brl;
//     Aed bzd;
//     Aed pyg;
//     Aed bnd;
//     Aed bob;
//     Aed djf;
//     Aed cad;
//     Aed jpy;
//     Aed rwf;
//     Aed isk;
//     Aed byn;
//     Aed hkd;
//     Aed lsl;
//     Aed fjd;
//     Aed cop;
//     Aed sar;
//     Aed etb;
//     Aed kpw;
//     Aed nad;
//     Aed mnt;
//     Aed sbd;
//     Aed yer;
//     Aed ron;
// }

// class Aed {
//     Aed({
//       required  this.name,
//       required  this.symbol,
//     });

//     String name;
//     String symbol;
// }

// class Bam {
//     Bam({
//      required   this.name,
//     });

//     String name;
// }

// class Demonyms {
//     Demonyms({
//       required  this.eng,
//       required  this.fra,
//     });

//     Eng eng;
//     Eng fra;
// }

// class Eng {
//     Eng({
//       required  this.f,
//       required  this.m,
//     });

//     String f;
//     String m;
// }

// class Idd {
//     Idd({
//        required this.root,
//       required  this.suffixes,
//     });

//     String root;
//     List<String> suffixes;
// }

// class Maps {
//     Maps({
//     required    this.googleMaps,
//     required    this.openStreetMaps,
//     });

//     String googleMaps;
//     String openStreetMaps;
// }

// class Name {
//     Name({
//       required  this.common,
//       required  this.official,
//       required  this.nativeName,
//     });

//     String common;
//     String official;
//     Map<String, Translation> nativeName;
// }

// class Translation {
//     Translation({
//       required  this.official,
//       required  this.common,
//     });

//     String official;
//     String common;
// }

// class PostalCode {
//     PostalCode({
//       required  this.format,
//       required  this.regex,
//     });

//     String format;
//     String regex;
// }

// enum Region { AFRICA, AMERICAS, EUROPE, ASIA, OCEANIA, ANTARCTIC }

// enum StartOfWeek { MONDAY, SUNDAY, SATURDAY }

// enum Status { OFFICIALLY_ASSIGNED, USER_ASSIGNED }
