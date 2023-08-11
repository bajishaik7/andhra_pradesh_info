import 'dart:convert';
import 'package:andhra_pradesh_info/districtdata.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
// import 'package:another_carousel_pro/another_carousel_pro.dart';

import 'about_ap.dart';
import 'tourismpage.dart';
import 'userpolicy.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List options = ["About Andhra Pradesh", "tourism", "Districts", "Contact Us"];
  List details = [];

  Future<void> fetchData() async {
    final String response = await rootBundle.loadString('assets/apdata.json');
    final data = await json.decode(response);

    setState(() {
      details = data["items"];

      //starts with array
      // name = data['name'];
      // print(_items);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  List tourism = [
    {
      "bgimage":
          "https://www.trawell.in/admin/images/upload/759142556Tirupati_Main.jpg",
      "type": "Tirupati",
      "sub": [
        "Tirumala",
        "Govindaraja Swami Temple",
        "Kapila Theertham",
        "Chandragiri",
        "Kalyani Dam",
        "Thiruttani"
      ],
      "des": [
        "At a distance of 22 km from Tirupati, 87 km from Chittoor, 435 km from Vijayawada, 574 km from Hyderabad, 785 km from Vizag, 155 km from Chennai and 271 km from Bangalore, Tirumala, located in the Chittoor district of Andhra Pradesh, is one of the most famous pilgrimage centers in India and also one of the top places to experince Andhra Pradesh tourism. Tirumala is commonly referred as Tirupati by devotees, but they are 22 km apart and the sacred Balaji Temple is situated in Tirumala.\n\ Tirumala, adobe of Sri Venkateswara (also known as Balaji - an incarnation of Lord Vishnu) is one of the most celebrated pilgrimage centers in India and it attracts millions of devotees every year. The Tirumala Temple is situated atop the Tirumala Hills which consists of seven peaks known as Sapthagiri at an altitude of 3,200 feet. The seven peaks represent the seven hoods of Adishesha, the serpent on whom lies Lord Vishnu.\n\ The temple of Lord Venkateswara was built by the Tamil king Thondaimaan. The Pallavas of Kanchipuram (9th century), Cholas of Tanjore (10th century), Pandyas of Madurai and Vijayanagara Kings (14th & 15th centuries) regularly visited the temple and made large contributions towards its development. Especially, Sri Krishna Devaraya of Vijayanagara Empire contributed a lot to the temple. The statues of Sri Krishna Devaraya and his spouse stand in the premises of the temple.\n\ The Tirumala shrine is a masterpiece of Dravidian architecture. The main sanctum contains 2 m high standing idol of Venkateswara on a lotus flanked by his consorts Bhudevi and Sridevi. The most striking feature of the awe-inspiring black idol is its fabulous diamond crown, which is said to be the most precious single ornament in the world. The Sanctorum 'Ananda Nilayam' has a glittering gold covered Vimana and gold covered gates.\n\  Apart from the main temple, other tourist places on Tirumala hills include Akasa Ganga, Srivari Padalu, Chakra Theertham, Papavinasam, Shilatoranam, etc. There are several attractions in Tirupati town along with Kanipakam, Srinivasa Mangapuram, Tiruchanur, Talakona Falls, Srikalahasti, etc.\n\  Accommodation is provided by TTD near the temple, which is always crowded. No private accommodation is available here. So piligrims need to book the accommodation in advance. Several devotees walk to Tirumala from Tirupati through 3500 well laid steps with roof that runs through forest (4 hours one way).\n\ Renigunta is the nearest airport (38 km from Tirumala) which serves direct flights from Delhi, Hyderabad, Chennai and Bangalore. Tirupati Railway Station is well connected with Hyderabad, Chennai, Trivandrum, Kanyakumari, Kakinada, Nagercoil, Kolkata, Pondicherry, Jammu, Bangalore, Mumbai, Bhubaneswar, New Delhi, Vizag, Mangalore, Gujarat, Kochi, etc. Buses are available from Tirupati as well Tirumala Hills to the adjacent cities like Chennai, Kanchipuram, Vellore, Vizag, Bangalore and Hyderabad.\n\ Usually it takes 1-2 days to visit major places in Tirumala.\n\ Temple Timings: 5 AM to 11 PM (till 1 AM in peak season)",
        "Yoga Nanda Lakshmi Narasimha Swamy temple and Siva temples are the key highlights here. It is one of the Pancha Narasimhar Kshetrams in Andhra Pradesh. Among the several shrines of Lord Lakshmi Narasimha Swamy that flourished on the holy banks of river Krishna Vedadri is an important one. It is situated just at a distance of 10 kms from ‘chillakallu’ on the Nation High way No.9 from Vijayawada to Hyderabad.\n\ Gunadala Mary Matha Church is one of the most popular churches and is a pilgrimage for Christians in Andhra Pradesh. The shrine is situated in Gunadala, a hilly region at Vijayawada. The holy place is also called as the Mary Matha Shrine and is more popularly known as St Mary’s Church. \n\ At a distance of 1 km from Tirupati Railway Station & 22 km from Tirumala Tirupati Balaji Temple, Sri Govindaraja Swami Temple is one of the important temples in Tirupati, located in the heart of the city. It is one of the best places to visit in Tirupati city.\n\ The original temple had Sri Parthasarathi as the main deity. Sri Ramanuja added the Sri Govindaraja deity in 1130 AD. Yadavaraya Dynasty made several gifts for decoration of the chariot and carrying necessary repairs of the temple. The temple came in for greater importance in 1506 AD during the rule of Vijayanagara Dynasty and from then onwards different rulers in a different way developed the temple.\n\This famous temple in Tirupathi is a remarkable achievement of the ancient south Indian architecture. It has an impressive outer gopura and an inner gopura. The inner most gopura is the earliest one, dating from the 14th century and has carvings that depict scenes from Ramayana and Lord Krishna's life. The temple has two main shrines dedicated to Lord Vishnu and Lord Krishna. The shrine to the north is Sri Govindaraja and the shrine to the south is Sri Parthasarathi (Lord Krishna). The idols of Rukmini and Satyabhama are also found here.\n\The presiding deity Sri Govindaraja Swamy is found lying on Ananta. He is considered as brother of Lord Venkateswara. The Govindaraja Swamy was the caretaker of massive wealth borrowed from king Kubera for the marriage ceremony of Lord Venkateswara with Padmavathi Devi. He efficiently utilized this wealth to conduct one of the most glorious marriages in the mythology. Hence Govindaraja Swamy is considered to be the god who helps you elevate your wealth and efficiently manage the wealth acquired.\n\This temple complex includes museum and smaller shrines like Kalyana Venkateswara Swami Temple, Andal Temple, Salai Nachiyar Devi Temple, Ramanuja Temple, Vyasaraya Anjaneyaswami Temple, Alwar Temples, Chakrathalwar Temple, Manavala Mahamuni Temple, Vedanta Desikar Temple and Anjaneyaswami Temple.\n\This is the biggest temple in Tirupati town and attracts lakhs of pilgrims. The abhisekhas are performed to a small idol as the main statue is said to have built using sand. This temple is managed by Tirumala Tirupati Devasthanm board.\n\ The Bramhotsavam of Govindaraja Swamy during the month of May-June (Vaisakha) and annual Float festival held in February - March, attract a large number of devotees every year.\n\ Timings: 5AM - 12:30 PM, 1:15 PM - 4:45 PM and 6 PM - 9:30 PM",
        "At a distance of 4 km from Tirupati Railway Station & 25 km from Tirumala Tirupati Temple of Lord Venkateswara, Kapila Theertham is a famous waterfall situated inside Kapileswara Swamy Temple at the foot of Sheshadri Hills in Tirupati. This is a unique waterfall where the water of mountain streams drop from a height of over 100 feet into a large pond in the temple premises. It is one of the must visit tourist places in Tirupati and a major pilgrimage site in Tirupati city.\n\ Kapila Theertham temple is the only Shiva temple in the vicinity of Tirupati. It is also said to be one of the 108 sacred teerthas (springs) on Tirumala hills. The Siva lingam here is made of brass. A huge stone statue of a seated bull Nandhi, greets devotees at the entrance to the temple.\n\ According to legend, Saint Kapila Maharishi was said to have lived here, worshipped and meditated in the cave in front of the idol of Lord Shiva, hence the placed is named after the saint as Kapila Theertham. Lord Shiva is said to have blessed Sage Kapila with a vision of himself and his consort. This temple received very good support from the Kings of Vijayanagara between 13th and 16th centuries, especially from Krishna Devaraya.\n\ There are many sub-shrines with-in the main temple premises. Temples for Kamakshi, Vinayaka, Subhramanya, Agastheeswara and Sri Krishna are few among them. Both the temple and the waterfall are considered to be highly sacred. A holy dip here is believed to rid the devotees of all sins. This is a good place to visit during the monsoons as the water fall looks breathtaking. The waterfall would be empty in late winter and summer seasons.\n\ The famous festivals celebrated in the temple are Brahmotsavam, Annabhishekam, Maha Shivarathri and Vinayaka Chaturthi. Kapileswara Swamy Brahmotsavam is the biggest event of the temple celebrated in during the month of February. Another auspicious day is the full moon day in the Karthika Month.\n\ Timings: 5 AM to 8 PM",
        "At a distance of 15 km from Tirupati, 33 km from Tirumala Tirupati Balaji Temple, 147 km from Chennai, 238 km from Bangalore & 574 km from Hyderabad, Chandragiri is an ancient town and the seat of Yadavaraya Kings from 11th to 13th centuries and fourth capital of Vijayanagar Dynasty. Chandragiri along with Tirupati is one of the ideal Chennai weekend getaways and a major heritage / historical site in Andhra Pradesh. It is one of the prime Tourist places in Tirupati town.\n\ Chandragiri near Tirupati is famous for the historical fort, built in the 11th century. Chandragiri was under the rule of Yadavaraya Dynasty for about three centuries and came into control of Vijayanagar rulers in 1367. It came into prominence during Saluva Narasimha Rayalu. Chandragiri was the 4th capital of Vijayanagar Empire and they shifted their capital here when Golconda sultans attacked Penukonda. In 1646, the fort was annexed to the Golconda territory and subsequently came under Mysore rule before controlled by British.\n\ The Fort is built on a huge rock at an altitude of 183 meters. The southern side of the hill is enclosed by strong walls, surrounded by a ditch to prevent any intruder from entering into the fort. The Chandragiri Fort has eight ruined temples inside the fortification along with Raja Mahal, Rani Mahal and other ruined structures.\n\ The Raja Mahal Palace is now an archaeological museum. The palace is one of the finest examples of Vijayanagara architecture. This imposing three storied palace adorned by the crowning towers represents Hindu architectural elements. The palace was constructed using stone, brick, lime mortar and devoid of timber. The central tower that covers durbar hall rises through two stories. It is said to be the same venue where Sri Rangaraya granted the site of Fort St. George to the British in 1640. The floors are supported by massive pillars while the walls bear fine plaster and stucco decorations.\n\ Queen's Palace is Similar to the Kings palace in style and method of execution. Contrary to the popular belief that this place was meant for the queen, the records available from the basement speaks this building was used as commander's quarters.\n\ Timings: 10 AM - 8:45 PM on all days except Friday. Entry fee: Rs.10 per person.\n\ Sound & Light Show Timings:\n\ 1st Show (Telugu): Nov-Feb: 6.30 pm to 7.15 pm and Mar-Oct: 7.00 pm to 7.45 pm\n\ 2nd Show (English): Nov-Feb: 7.30 pm to 8.15 pm and Mar-Oct: 8.00 pm to 8.45 pm\n\ Light show cost: Adult: Rs.20, Child: Rs.10",
        "At a distance of 20 Kms from Tirupati & 38 km from Tirumala Tirupati Balaji Temple, Kalyani Dam is a picturesque dam constructed on the River Kalyani. The dam is situated in the Rangampet forest on Tirupathi-Madanapallee Road. This beautiful dam is the main source of water supply for Tirupati and Tirumalai.\n\ The surroundings of the dam are beautiful and offers wonderful experience to the visitors.",
        "At a distance of 13 km from Arakkonam, 44 km from Kanchipuram, 86 km from Chennai and 65 km from Tirupati, Thiruthani is a holy town located in Tiruvallur District of Tamil Nadu and is famous for the Murugan Temple. This temple is one among the six Padai Veedus (Battle Grounds) of Lord Murugan, other five are Palani, Swamimalai, Tirupparangunram, Pazhamudircholai and Thiruchendur. This place represents the site where Subramanya stayed after destroying the demon Surapadman.\n\ Tiruttani is also said to be the place where the Lord Subramanya married Valli - one of his two consorts. This temple has been mentioned in the Sangam period work Tirumurugaatruppadai composed by Nakkeerar. According to legend, Devayani, daughter of Indra married Lord Murugan and was presented Indra's elephant Airavatam as part of his dowry offering. Upon Airavatam's departure Indra found his wealth waning. Lord Subramanya is said to have offered to return the white elephant, however Indra refused to accept a gift that he had made and instead requested that the elephant face his direction, hence the image of the elephant in this temple also faces the east.\n\ The hill temple is reachable by a motorable road and is also accessed through a plight of 365 steps. The temple has 4 enclosures and a series of temple towers. There is a shrine to Aapat Sahaaya Vinayakar who helped the Murugan in winning Valli's hand in marriage. The processional image of Murugan is housed in a Rudraksha tower. The large ornament adorning the image of Subramanya is decorated with green stones and is of great beauty.\n\ Lord Muruga is seen holding Vajra Hastam in his right hand instead of Vel, his regular weapon. There are separate shrines for Valli and Devayani. Sri Aadhi Balasubramanian graces on the wall behind the sanctum sanctorum as a child. Lord Bhairava graces in temple with 4 dogs vehicle representing 4 Vedas. The temple also has five ponds spread around the temple.\n\ The sandal paste used in worshipping the Lord on special festivals has a divine significance. It is believed to be gifted by Indra. Devotees dissolve in water and consume it as it is believed that would cure them from any disease.\n\ A large number of devotees flock to Thiruthani every year during the Aadi Krittikai festival. Other popular festivals at this temple are the Float Festival, Brahmotsavams, Valli Kalyanam, Skanda Sashti and Thai Pusam.\n\ Timings: 6 AM - 9 PM",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/upload/203211290TirumalaTemple_Main_New.jpg",
        "https://www.trawell.in/admin/images/upload/203211740GovindrajswamiTemple_Main_New.jpg",
        "https://www.trawell.in/admin/images/upload/153110520KapilaTheertham_Main.jpg",
        "https://www.trawell.in/admin/images/upload/759142515Chandragiri_Main.jpg",
        "https://www.trawell.in/admin/images/upload/573455986Tirupati_Kalyani_Dam_Main.jpg",
        "https://www.trawell.in/admin/images/upload/154916486Tiruttani_Main.jpg"
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/249844677Vizag_Main_thumb.jpg",
      "type": "Vizag",
      "sub": [
        "Kailasagiri",
        "Rama Krishna Beach",
        "Submarine Museum",
        "Bheemili Beach",
        "Tatipudi Reservoir"
      ],
      "des": [
        "At a distance of 9 km from Vizag Railway Station, Kailasagiri is a charming hill on the seafront at an altitude of 130 meters. Kailasagiri is one of the prime attractions in Vizag city.\n\ Spread over an area of 350 acres, it is one of the most attractive tourist spots in Vizag with an enchanting view of the sea, beaches, lush green forests and the beautiful city. The major attraction of the park is Lord Shiva Parvathi statue. At the base of Lord Shiva's statue, there is a stream that flows all the way to the foot of the hill. The hilltop also has many wonderful attractions like the Titanic viewpoint, floral clock, Shanku-Chakra Namas of Lord Venkateswara, Gliding point, Jungle Trails, Manicured lawns, Art gallery & Children Park. The floral clock on Kailasagiri is one of the biggest in India with a diameter of 10 ft.\n\ A number of amazing viewpoints are developed all around the hilltop. One more major attraction is the toy train operated on top of the hill which takes a circular tour of the garden on the hill top. The train journey is for 20 minutes and costs Rs 40 for adult and Rs 30 for children below the age of 10 years.\n\ Kailasagiri is a favourite location among the filmmakers all over India. It is one of the prominent hill top parks with panoramic sea view on the East Coast. The park was developed by Visakhapatnam Urban Development Authority (VUDA). The hilltop is well connected by road, walk and ropeway. Two stairways are provided for pedestrians. The ropeway from bottom of the hill to Kailasagiri is a special attraction.\n\ Ropeway Timings: 11 AM - 1 PM and 2 PM - 8 PM\n\ Park Timings: 10 AM to 8 PM\n\ Entry fee: Rs.5 per person.",
        "At a distance of 4 km from Vizag Railway Station, Ramakrishna Beach (also called RK Beach) is a spectacular long beach on Bay of Bengal. This is one of the most popular beaches in Visakhapatnam and gets its name from the Ramakrishna Mission ashram across the Beach Road from the park. Ramakrishna Beach is one of the prime attractions of Vizag city.",
        "At a distance of 6 km from Vizag Railway Station, the Submarine Museum situated on RK Beach is a Russian built submarine of the Indian Navy (INS Kurusura) turned to a museum in 2001. Submarine Museum is one of the prime attractions of Vizag city.\n\ The Museum shows the signboards of the growth of submarine through artifacts, photographs and written scripts. The museum showcases the life inside a submarine and hardships faced by the submariners in the sea. Guides are available in the museum to help the visitors.\n\ Entry Fee: Adults: Rs.40, Children: Rs.20, Camera: Rs.50 and Video Camera: Rs.200.\n\ Timings: 2 PM - 9 PM from Tuesday to Saturday & 10 AM - 12 PM and 2 PM - 9 PM on Sundays. It is closed on Mondays.",
        "At a distance of 32 km from Vizag Railway Station, 377 km from Vijayawada, 227 km from Rajahmundry & 628 km from Hyderabad, Bheemunipatnam popularly known as Bheemili is famous for a picturesque beach. It is located at the mouth of the river Gosthani which merges with Bay of Bengal at Bheemunipatnam.\n\ There are number of accommodation options and one can find many budget hotels with modern amenities. Visitors can also stay at the Keertana Vanam Beach Resort run by the Visakhapatnam Urban Development Authority (VUDA).",
        "At a distance of 65 Kms from Vizag, 55 Kms from Araku & 632 Kms from Hyderabad, the Tatipudi Reservoir is located near Srungavarapukoda (also called S Kota) town situated between Vizag and Araku Valley in Vizianagaram district. \n\ \n\The Reservoir is about 10 Kms from S Kota and can be reached via Kothavooru and Krishnapuram (while coming from Vizag), or via Tennuboddavara and Tadupudi village (while coming from Araku). Private vehicles can be hired by S Kota town to reach this place.\n\ This place can be visited while going to Araku or during return to Vizag with 1-2 Hours additional effort."
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/249844594Kalasagiri_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844122RKBeach_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844343SubmarineMuseum_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844529Bheemili_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844464Tatipudi_Main_thumb.jpg"
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/249844316Araku_Main_thumb.jpg",
      "type": "Araku Valley",
      "sub": [
        "Borra Caves",
        "Ananthagiri",
        "Chaparai / Chaaparai",
        "Tribal Museum",
        "Duduma Waterfalls",
      ],
      "des": [
        "At a distance of 36 km from Araku, 88 km from Vizag & 662 km from Hyderabad, Borra Caves are one million year-old limestone caves and the deepest caves in the country. Situated in Anantagiri hills of Andhra Pradesh, the caves are situated at an altitude of 1400 m and occupy an area of 2 sq.km. Borra Caves is one of the best places to visit in Araku Valley as part of Vizag packages.\n\ These natural caves were discovered in 1807 by William King George of the Geological Survey of India. According to locals, once a cowherd lost his cow while grazing. He soon realized that his cow had fallen down. While searching for the cow, the cowherd found these caves and came across a Linga inside it. The Linga is considered synonymous to Lord Shiva, who saved the cow. After this, a small Shiva temple was built right outside this cave.\n\ The caves are filled with fascinating stalagmite and stalactite formations of calcium deposits. The Gosthani River used to flow through the caves between the formations. The caves were created due to the flow of river over the limestone area. The pressure was exerted by the humic acid in the water on the mineral deposits and the limestone dissolved in the water. The dissolved limestone trickled down drop by drop forming different shapes in the cave. One can see different formations of the stalactites and stalagmites as Shiv-Parvathi, Mother-Child, Rushi's Beard, Human Brain, Crocodile, Tiger and Cows udder. A Shiva lingam and an idol of a cow (Kamadhenu) are among the formations which have religious significance.\n\ The Vizag - Araku train has a station at Borra Caves, from where the caves are nearly 5 km away. Few restaurants are available outside the Borra Caves including AP Tourism restaurant that offers lunch and snacks.\n\ Entrance Fee: Rs.40 (Adult), Rs.30 (Children), Camera: Rs.25, Video: Rs.100\n\ Timings: 10 AM to 5.30 PM.",
        "At a distance of 26 km from Araku, 85 km from Vizag & 660 km from Hyderabad, Anantagiri is a lovely tiny hill station between Vizag and Araku Valley. It is one of the top tourist places to visit in Araku Valley and is also among the top hill station in Andhra Pradesh apart from being a popular weekend getaway from Vizag city.\n\ At an altitude of 1168 meters, Anantagiri is famous for extensive coffee plantations and numerous waterfalls. There is a view point on the way to Anantagiri on main road that offers excellent views of the deep valleys on one side and coffee plantations on the other side.",
        "At a distance of 13 km from Araku Bus Stand, Chaaparai is a beautiful water cascade situated on Paderu - Araku Road in Vishakhapatnam district of Andhra Pradesh. Also known as Dumbriguda Waterfalls, it is a scenic place surrounded by forests and is one of the popular Araku Tourist Places.\n\ One can experience the beauty of water gushing through natural rocks. Bathing is well possible when the water flow is not really heavy. It is recommended not to enter into the water in monsoon season when water flow is heavy.\n\ Visitors have to take their own vehicles or hire a taxi/auto from Araku and visit this place.\n\ Entry Fee: Rs. 10 for Person",
        "At a distance of 200 m from Araku Bus Station, Araku Tribal Museum is a wonderful place which explores the tribal culture of Eastern Ghats. It is one of the top tourist places to visit in Araku Valley.\n\ The Andhra Pradesh Tourism Development Corporation established this museum in 1996. Araku Valley boasts of 19 tribes that live in the vicinity of the town. The purpose of the museum is to create awareness about tribal culture and lifestyle. Araku Tribal Museum is not a historical place but offers information about the tribes that currently live here.\n\ Timings: 10 AM to 6 PM\n\ Entry Fee: Rs. 10 for Adults & Rs. 5 for Children",
        "At a distance of 70 Kms from Araku, Duduma Falls (also known as Matsya Tirtha) on Machkund River is located in Orissa state close to Munchingiputtu village of Visakhapatnam District. With a height of 520 feet, this is one of the most popular waterfalls in Orissa state.\n\ The tourism department has started focusing on this destination and can see some facilities here going forward. Nearby Jalaput Dam on Machkund River offers spectacular views.",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/249844919BorraCaves_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844684Anantagiri_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844602Chaparaayi_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844345TribalMuseum_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/242260574Araku_Duduma_thumb.jpg",
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/400648197Srisailam_Main_thumb.jpg",
      "type": "Srisailam",
      "sub": [
        "Mallikarjuna Swamy Temple",
        "Srisailam Dam",
        "Pathala Ganga",
        "Uma Maheshwaram",
      ],
      "des": [
        "At a distance of 1 km from Srisailam Bus Station, Mallikarjuna Swamy Temple dedicated to Lord Shiva has a great historical and religious significance and it is one of the 12 Jyotirlingas and also one of the 18 Sakti Peethas (Bhramaramba Temple situated in same complex). The holy temple is situated on a mountain named Shri Shaila on the banks of Krishna River. This Jyotirlinga is also referred as Kailash of the South. Mallikarjun Temple is among the prime places to visit in Srisailam.\n\ Timings: 5 AM to 3:30 PM & 6 PM to 10 PM",
        "At a distance of 14 km from Srisailam Bus Station & 15 km from Srisailam Temple, Srisailam Dam is constructed across Krishna River on the border of Mahabubnagar District, Telangana (Left bank) and Kurnool district, Andhra Pradesh (Right bank). It is one of the largest dams in India and the 3rd largest hydroelectric project in India. Srisailam Dam is among the prime places to visit in Srisailam, situated on Hyderabad to Srisailam route. This is another popular attraction to visit as part of Hyderabad tour packages.\n\ APSRTC operates a 2.5 hours bus tour covering Srisailam Dam, Phaladhara & Panchadhara, Hathakeswaram and Sikharam.",
        "At a distance of 1 km from Srisailam Mallikarjuna Temple, Pathala Ganga is the sacred place in the backwaters of River Krishna. This is the place where devotees can have a holy dip in the river Krishna. Steps and iron chains are provided for the devotees to hold onto to protect themselves from the strong force of the river. From this place you can get a glimpse of wide reservoir and the magnificent mountains spread with the lush green Nallamala Forest. It is one of the popular Srisailam places to visit for best views of River Krishna. It is geographically located behind Srisailam Dam and the flood gates can be seen from here. Pathala Ganga is also the boating center for pleasure rides and trips to Akkamahadevi Caves.\n\ Rope way Timings: 6 AM to 5: 30 PM. Cost: Adult - Rs. 50/- (two ways), Child - Rs. 35/- (two ways).\n\ Boating is also available at Pathala Ganga and the duration is usually around 20 minutes. Boating here is a pleasant experience. Speed boats are also available (duration - 5 minutes). Cost: Adult - Rs. 50/-, Child - Rs. 35/-.\n\ Boating Timings: 9 AM to 5 PM.\n\ Tickets to visit Akka Mahadevi Caves can be obtained at boating point of Pathala Ganga.",
        "At a distance of 87 km from Srisailam, 14 km from Achampet town and 159 km from Hyderabad, Uma Maheswaram is famous for Uma Maheswara Temple built in 2nd century. Situated in deep Nallamalai Forests in Mahabubnagar district, the presiding deities are Mallikarjuna (Shiva) and Bhramaramba (Parvati). Uma Maheshwaram is considered as the north gateway to holy town of Srisailam. It is one of the top places to visit near Srisailam.",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/400648420SrisailamTemple_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/400648862SrisailamDam_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/400648976PathalaGanga_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/169060418Srisailam_Umamaheshwaram_Temple_Main_thumb.jpg",
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/103146556PapiKondalu_Main_thumb.jpg",
      "type": "Papikondalu",
      "sub": ["Pattisam"],
      "des": [
        "At a distance of 35 km from Rajahmundry & 30 km from Papikondalu, Pattisam, also known as Pattiseema, is a beautiful place located on the banks of river Godavari in West Godavari district of Andhra Pradesh. It is situated between Rajahmundry and Papikondalu and can be reached by road and boat from Rajahmundry. There are two temples in Pattisam, Sri Veerabhadra Swamy, dedicated to Lord Shiva and Sri Bhava Narayana Swamy dedicated to Lord Vishnu. This temple is one of the Panchakasi Kshetras. The other four temples are at Kedarnath, Kashi, Kalahasti and Srisailam."
      ],
      "pic": [
        "https://www.trawell.in/admin/images/upload/103146388Pattiseema.jpg"
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/249844254Vijayawada_Main_thumb.jpg",
      "type": "Vijayawada",
      "sub": [
        "Kanaka Durga Temple",
        "Bhavani Island",
        "Prakasam Barrage",
        "Undavalli Caves",
        "Kondapalli Fort"
      ],
      "des": [
        "At a distance of 4 km from Vijayawada Railway Station, Kanaka Durga Temple is located on the Indrakeeladri hill on the banks of Krishna River in Vijayawada. Kanaka Durga, the goddess of power and riches is considered the presiding deity of Vijayawada. It is one of the famous temples in South India. The shrine also called Sri Durga Malleswara Swami Temple dates back to the 8th century.\n\ \n\ According to legend, goddess Durga killed demon Mahishasura and enshrined on the Keela Mountain with eight arms in the form of Mahishasura Mardini as she had given boon to Keela. Indra and all other gods worshipped the goddess Kanaka Durga on the hill which later known as Indrakeeladri. In Dwaapara Yuga, Arjuna did great penance on Indrakeeladri for Lord Shiva in order to get the most powerful Astra called Paashupataastra. Later, Lord Shiva appeared to fulfill the desire of Arjuna and called him as Vijaya (victorious). The place came to be known as Vijayawada after Arjuna's victory.\n\ Navaratri, Saraswati puja and Theppotsavam are the main celebrations held at this temple. Thousands of devotees from the state throng the temple after a holy dip in the River Krishna\n\ Timings: 4 AM - 4 PM and 6.15 PM - 10 PM",
        "At a distance of 3 Kms from Vijayawada Railway Station, the Bhavani Island is situated upstream of River Krishna, close to the Prakasam Barrage.\n\ The total area of the island is about 133acres. The island has extensive forest coverage, shimmering ponds and rolling meadows.\n\ Boat riding facility is also available here.",
        "At a distance of 2 km from Vijayawada Railway Station, Prakasam Barrage is a 1223.5 meter long modern regulator and Road Bridge built across the River Krishna and is located at the southern entrance of Vijayawada.\n\ The beautiful backwaters formed by the barrage give the city a unique setting with the backdrop of Kanakadurga Hill. The barrage was first built by Sir Arthur Cotton in 1855 and later reconstructed in the 1950s. This is one of the earliest major irrigation projects in Southern India. It was named after the first Chief Minister of Andhra Pradesh, Tanguturi Prakasam. The scheme irrigates nearly one million hectors of land, converting the Krishna delta into a rich granary in Andhra Pradesh. This barrage also supplies water to Buckingham canal which was constructed as inland navigation canal initially but later used as irrigation water supply canal.\n\ The idea of constructing a dam across the river Krishna dates back to 1798. It began with captain Buckle and was revised in 1839 and 1841 by captain Best and captain Lake. After the endorsement of Major Cotton, the dam was approved on 5 January 1850. The construction was started in 1852 and completed in 1855.\n\ Besides irrigation, the dam provides a spectacular view of the lake and has become a major tourist attraction of Vijayawada. The lake around the barrage is not so deeper and has a shallow effect on the sides thus a good picnic spot. Boating along with few water sports activities are available here. The famous Bhavani Island is situated amidst the backwaters of the barrage.",
        "At a distance of 6.5 km from Vijayawada Railway Station, 30 km from Guntur and 275 km from Hyderabad, The Undavalli Caves, a monolithic example of Indian rock-cut architecture, are located in Undavalli Village of Guntur district in Andhra Pradesh.\n\ The Undavalli Caves are ancient cave temples believed to be built between 4th and 5th centuries by Gupta dynasty. The caves are located on a hill overlooking the Krishna River. These caves have been carved out of solid sandstone on a hillside. The best known and largest one has four stories with a huge statue of Lord Vishnu in a reclining posture sculpted from a single block of granite in the second floor. Other shrines inside the cave are dedicated to Trimurti- Brahma, Vishnu and Shiva. Main cave belongs to the earliest examples of Gupta architecture, primarily primitive rock-cut monastery cells carved into the sandstone hills. Initially caves were shaped as a Buddhist monastery and the first floor still retains style of Buddhist vihara, including some Buddhist sculptures. Facade of the third floor is adorned with numerous sculptures, including depictions of lions and elephants.\n\ Undavalli caves are associated with the Vishnukundina kings of 420 to 620 CE. It is also believed that these caves were used by the Buddhist monks as the rest houses. This is a good place to visit in the vicinity of Vijayawada.\n\ Timings: 9 AM to 6 PM",
        "At a distance of 24 km from Vijayawada Railway Station & 262 km from Hyderabad, Kondapalli Fort, also known as Kondapalli Kota, is located at Kondapalli Village in the Krishna district close to Vijayawada.\n\ This 14th century Fort is believed to have been built by the Reddy King of Kondaveedu, Prolaya Vema Reddy. Spread over an area of 18 sq.km, this Fort is said to have served as a recreational palace for the king. The Fort was also used as a business centre. Later, the fort went into the hands of Gajapati rulers of Orissa. In the year 1520 AD the King, Sri Krishna Devaraya of Vijayanagara Empire has captured the Kondapalli fort in Kalinga wars. Later, the fort came into the hands of Qutubshahi Kings in the 16th century. During the colonial rule, the British soldiers were given training in this fort.\n\ Kondapalli is also famous for its wooden toys. Kondapalli toys are carved out of locally available special light softwood known as Poniki. These toys are brightly coloured and adorned with beautiful designs of animals, birds, fruits and vegetables, mythological and religious figures. Kondapalli toys are very popular world-over. Today, Kondapalli Fort is a major tourist attraction to visit near Vijayawada.\n\ Timings: 10 AM to 5 PM",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/24984462KanakadurgaTemple_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844678BhavaniIsland_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844182PrakasamBarriage_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844204UndavalliCaves_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/249844753KondapalliFort_Main_thumb.jpg"
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/135648548Srikalahasti_Main_thumb.jpg",
      "type": "Srikalahasti",
      "sub": [
        "Srikalahasteeswara Temple",
        "Swarnamukhi River",
      ],
      "des": [
        "Temple Timings: 6 AM to 9 PM.\n\ Rahu Ketu Pooja Timings: 6:30 AM to 8:30 PM. Amavasya is the best day to perform Rahu Ketu Pooja.\n\ Govu Pooja Timings: Saturday - Monday 4:30 AM and Tuesday - Friday 5 AM\n\ Rs.300 - Rahu Ketu Pooja will be done in a huge hall outside the temple premises.\n\ Rs.750 - Rahu Ketu Pooja will be done near the main temple premises in an A/C hall which has Shiva Sannidhi inside.\n\ Rs.1500 - Rahu Ketu Pooja will be done inside the temple premises, which are also considered as VIP tickets.\n\ Govu Puja cost: Rs. 50 per person.",
        "At a distance of 2 Kms from Srikalahasti Bus Station, Swarnamukhi River is located near Srikalahasti Temple. When the hermits of Bilwaka grove pleaded with Sage Agastya on lack of water, he brought river Akash Ganga to the earth. As ordained by Lord Siva, Akash Ganga flowed as Swarnamukhi and sanctified the temple at Sri Kalahasti.\n\ According to another legend, Lord Siva directed Sage Vashishta to proceed, along with Arundhati. Sage Vashishta finding that there was no water in the vicinity undertook a penance invoking Lord Brahma. Lord Brahma approached Lord Siva and told him about the cause of Sage Vashishta's penance. Thereupon Lord Siva unlocked Ganga from his matted hair and allowed her to follow Brahma. Gangadevi sparkling in golden hue rushed to the place where Sage Vashishta lived. Thus, the river here got its name Suvarnamukhi.\n\ Boating facility is available here."
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/13564873Temple_Main_thumb.jpg",
        "https://www.indianpanorama.in/blog/wp-content/uploads/2018/11/swarnamukhi-river.jpg",
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/609085648Rajahmundry_Main_thumb.jpg",
      "type": "Rajahmundry",
      "sub": [
        "Godavari Bridge",
        "Dowleswaram Barrage",
        "Pattisam, Near Papikondalu",
        "Draksharamam, Near Kakinada",
        "Papikondalu",
      ],
      "des": [
        "At a distance of 2.5 km from Rajahmundry Railway Station, The Godavari Bridge or Kovvur-Rajahmundry Bridge is a truss bridge spanning Godavari river in Rajahmundry. It was commissioned by South Central Railway division of Indian Railways. It was inaugurated by the then President of India, Fakhruddin Ali Ahmed in 1974. It is Asia's second longest road-cum-rail bridge crossing a water body. This is very scenic place with wonderful views of the bridge and Godavari River.",
        "At a distance of 10 km from Rajahmundry Railway Station, Dowleswaram Barrage is an irrigation structure which is built at Dowleswaram, on the lower stretch of the Godavari River before it empties into the Bay of Bengal. The barrage was built by a British irrigation engineer, Sir Arthur Thomas Cotton.",
        "At a distance of 35 km from Rajahmundry & 30 km from Papikondalu, Pattisam, also known as Pattiseema, is a beautiful place located on the banks of river Godavari in West Godavari district of Andhra Pradesh. It is situated between Rajahmundry and Papikondalu and can be reached by road and boat from Rajahmundry. There are two temples in Pattisam, Sri Veerabhadra Swamy, dedicated to Lord Shiva and Sri Bhava Narayana Swamy dedicated to Lord Vishnu. This temple is one of the Panchakasi Kshetras. The other four temples are at Kedarnath, Kashi, Kalahasti and Srisailam.",
        "At a distance of 17 km from Kakinada, 42 km from Rajahmundry, 65 Kms from Annavaram, 197 km from Vijayawada, 198 km from Vizag & 466 Kms from Hyderabad, Draksharamam is famous for one of the pancharama temples called Draksharama Bheemeshwara Swamy temple. This temple is situated in a green belt of river Godavari. Draksharamam is among prime place to visit on a Vizag tour.\n\ It is easily accessible by Bus from Kakinada & Rajahmundry (40 Kms).\n\ Timings: 6 AM to 12 PM & 3 to 8 PM",
        "At a distance of 60 km from Rajahmundry, 180 km from Vijayawada, 20 km from Polavaram, 260 km from Vizag & 410 km from Hyderabad, Papi Kondalu is a breathtakingly beautiful hill range bounded by River Godavari in the state of Andhra Pradesh. Papi hills are a set of three hills which form a beautiful gorge on the Godavari River spread across East Godavari and West Godavari districts. Entire area of Papi Kondalu is covered by tropical rain forests and it was recently declared as a protected National Park and is one of the top places to experience the Tourism in Andhra Pradesh. Papikondalu is one of the top attractions you must include in Vizag tour packages.",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/609085615Rajahmundry_Godavari_Bridge_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/609085563Rajahmundry_Dawaleswaram_Barrage_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/103146388Pattiseema_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/135648842Draksharamam_Main_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/103146556PapiKondalu_Main_thumb.jpg",
      ]
    },
    {
      "bgimage":
          "https://www.trawell.in/admin/images/thumbs/719249944Amaravati_Main1_thumb.jpg",
      "type": "Amaravati",
      "sub": [
        "Amaravati Stupa ",
        "Amaravati Museum",
        "Dhyana Buddha Statue",
        "Kondaveedu Fort",
        "Amareswara Temple",
      ],
      "des": [
        "At a distance of 1 km from Amaravati Bus Station, Amaravati Stupa is a ruined Buddhist monument located in Amaravati, Andhra Pradesh. Popularly known as Mahachaitya or Great Stupa of Amaravati, it is one of the largest stupas in India and among the must visit places in Amaravati.",
        "At a distance of 500 m from Mahachaitya and 1 km from Amaravati Bus Stand, Amaravati Museum is an archeological museum situated in Amaravati, the de-facto capital of Andhra Pradesh, India. Just opposite to Amaravati Stupa, it is one of the popular museums in Andhra and among the top places to visit in Amaravati as part of Vijayawada Tour Packages.\n\Maintained by ASI, the Amaravati Museum is an amazing repository of relics that have been gathered from the ruins of this 2000 year old Buddhist settlement as well as from nearby places. These artefacts belong to the period 3rd century BC to 12th century AD exhibit in three different galleries. The ancient and complex art work done by the craftsmen of that period are displayed in the first gallery. The Purnakumbha designs and the Lotus designs here express the intricate art of those days. The two drums of slab depicting the Stupas, Swastika mark on the cushioned seat of the throne under the Bodhi tree, the Agni Skanda (Flaming pillar), the dome and the standing Buddha belonging to 8th century are the precious collections of this museum.\n\Timings of Museum: 9 AM - 5 PM, Closed on Fridays\n\Entry Fee: Rs.5 for Person",
        "At a distance of 2 km from Amaravati Bus Station, the Dhyana Buddha is a statue of Lord Buddha situated in Amaravati, Andhra Pradesh. It is one of the tallest Buddha statues in India and among the most important places to visit in Amaravati.\n\Standing tall at a height of 125 feet, the statue of Dhyana Buddha was commissioned in 2003 and completed in 2015. The statue is situated in 4.5 acre scenic locale on the bank of Krishna River. Made out of concrete and stone, this giant statue was sculpted by R. Mallikarjuna Rao, the Joint Director of Social Welfare, Guntur. The statue was designed by incorporating features from all the 50 types of Buddhist sculptures from 145 major heritage sites all over India.\n\Timings: 8 AM - 6 PM\n\Entry Fee: Rs.20 for Person",
        "At a distance of 32 km from Guntur, 58 km from Amaravati and 73 km from Vijayawada, Kondaveedu Fort is an ancient hill fortress located at Kondaveedu village in Guntur district of Andhra Pradesh. It is one of the historical forts in Andhra Pradesh and among the famous Amaravati Tourist Places.\n\ Kondaveedu Fort was constructed during the time of Telugu Chodas, strengthened by Kakatiyas and occupied by Prolaya Vema Reddy who shifted his capital from Addanki to Kondaveedu in 1323 AD. Later it was taken over by Gajpathis of Orissa and ravaged by the Bahmani Sultans in 1458. The Vijayanagara emperor Krishnadevaraya captured it in 1516. The Golconda Sultans fought for the fort in 1531, 1536 and 1579, and Sultan Quli Qutb Shah finally captured it in 1579, renaming it as Murtuzanagar. Later it was recaptured by the Mughal army of Aurangzeb in 1687 and the fort came under the control of the French colonists in 1752 when it was extensively fortified. It passed on to the English imperialists who got control of the fort in 1788 but abandoned it in the early 19th century in favour of Guntur.\n\Timings: 5 AM - 6 PM",
        "At a distance of 1.5 km from Amaravati Bus Station, Amareswara Temple is a Hindu temple situated on the bank of Krishna River in Amaravati, Andhra Pradesh. Also called as Amaralingeswara Swamy Temple, it is one of the well-known places of pilgrimage in Andhra Pradesh and among the popular places to visit in Amaravati.\n\Maha Shivaratri is the major festival celebrated at Amareswara Temple. The divine aura of the shrine attracts thousands of pilgrims every year during this occasion. Navaratri and the Kalyana Utsavam are the other festivals celebrated here with great devotion here.\n\Timings: 6 AM - 1 PM & 4 PM - 8 PM",
      ],
      "pic": [
        "https://www.trawell.in/admin/images/thumbs/719249998Amaravathi_Stupa_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/719249174Amaravathi_Museum_thumb.jpg",
        "https://www.trawell.in/admin/images/upload/719249815Dhyana_Buddha.jpg",
        "https://www.trawell.in/admin/images/thumbs/719249517Kondaveedu_Fort_thumb.jpg",
        "https://www.trawell.in/admin/images/thumbs/719249459amareshwara_tempe_thumb.jpg",
      ]
    },
  ];

/*   Map data= 
  {"items" :
   [
    {
      "District Name": "Srikakulam",
      "pic":
          "https://cdn.s3waas.gov.in/s3f899139df5e1059396431415e770c6dd/uploads/2019/06/2019061214.jpg",
      "pics2": [
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam1.png",
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam2.png",
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam3.png",
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam4.png",
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam5.png",
        "https://static.javatpoint.com/tourist-places/images/tourist-places-in-srikakulam6.png"
      ],
      "about District":
          "Srikakulam district is one of the twenty-six districts of the Indian state of Andhra Pradesh, located in the Uttarandhra region of the state, with its headquarters located at Srikakulam.[5][6] It is one of the six districts, located in the extreme northeastern direction of the state. It was formerly known as Chicacole , and was under Ganjam district till 1936 April 1, then merged under Vizagapatam district .This was once the part of ancient Kalinga.",
      "mandal": "30",
      "population": "27,03,114",
      "Area(in sq mtr)": "5,837",
      "density": "477.34",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3f899139df5e1059396431415e770c6dd/uploads/bfi_thumb/2021061026-p8g7srygge4yx8q0ffy9phw35pse40oioox0gbded8.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri.Shrikesh B Lathkar, I.A.S.",
      "number": "-",
      "Email": " collector.sklm@ap.gov.in"
    },
    {
      "District Name": "Parvathipuram Manyam",
      "pic":
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/95/dd/3c/undavalli-caves.jpg?w=1200&h=-1&s=1",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Kamalingeswara_Temple%2C_Gallavilli%2C_Andhra_Pradesh_-_01.jpg/800px-Kamalingeswara_Temple%2C_Gallavilli%2C_Andhra_Pradesh_-_01.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Pedda_gedda_dam_front_look_-_panoramio.jpg/800px-Pedda_gedda_dam_front_look_-_panoramio.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Palakonda.jpg/800px-Palakonda.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/A_view_of_Eastern_Ghats_from_outskirts_of_Parvathipuram.jpg/800px-A_view_of_Eastern_Ghats_from_outskirts_of_Parvathipuram.jpg",
      ],
      "about District":
          "Parvathipuram Manyam district is a district in the Indian state of Andhra Pradesh. With Parvathipuram as its administrative headquarters, it became functional from 4th April 2022. The district was formed from Parvathipuram revenue division from Vizianagaram district and part of Palakonda revenue division of Srikakulam district.[3][4][5][6] The district was once part of ancient Kalinga. The famous Kamalingeswara swamy temple was built in the regin of King Rajaraja Deva of Eastern Ganga Dynasty of Odisha in 11th century",
      "mandal": "15",
      "population": "29,25,340",
      "Area(in sq mtr)": "3,659",
      "density": "252.89",
      "adminpic":
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/95/dd/3c/undavalli-caves.jpg?w=1200&h=-1&s=1",
      "Designation": "Collector & District Magistrate",
      "name": "Nishant Kumar , IAS",
      "number": "08963-293046",
      "Email": "collector-pmanyam@ap.gov.in"
    },
    {
      "District Name": "Vizianagaram",
      "pic":
          "https://cdn.s3waas.gov.in/s3cee631121c2ec9232f3a2f028ad5c89b/uploads/2022/04/2022041633.jpeg",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Port_Gate_of_Vijayanagaram_Kings.JPG/800px-Port_Gate_of_Vijayanagaram_Kings.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Jayathi_Kalinga_Temples%2C_Vizianagara_district%2C_Andhra_Pradesh_-_1.jpg/800px-Jayathi_Kalinga_Temples%2C_Vizianagara_district%2C_Andhra_Pradesh_-_1.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Dibbesvara_temple%2C_Kalinga-style%2C_Saripalli_Andhra_Pradesh_01.jpg/800px-Dibbesvara_temple%2C_Kalinga-style%2C_Saripalli_Andhra_Pradesh_01.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Eastern_Ghats_view_near_Sontivanipalem.jpg/800px-Eastern_Ghats_view_near_Sontivanipalem.jpg",
      ],
      "about District":
          "Vizianagaram (Telugu: విజయనగరo; ) is the main city of the Vizianagaram District of North Eastern Andhra Pradesh in Southern India. Vizianagaram district was formed on 1 June 1979, with some parts carved from the neighbouring districts of Srikakulam and Visakhapatnam. It is, at present, the largest municipality of Andhra Pradesh in terms of population. It is located about 18 km inland from the Bay of Bengal, and 52 km northeast of Visakhapatnam.",
      "mandal": "27",
      "population": "19,30,811",
      "Area(in sq mtr)": "4,122",
      "density": "468.42",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3cee631121c2ec9232f3a2f028ad5c89b/uploads/bfi_thumb/2023041222-q4w262f3mq5qu6sirkrlx5tqzea2lw663cl8gic4oc.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Ms.Nagalakshmi.S I.A.S.",
      "number": "08922-276720",
      "Email": "collector_vznm@ap.gov.in"
    },
    {
      "District Name": "Visakhapatnam",
      "pic":
          "https://www.mapsofindia.com/maps/andhrapradesh/tehsil/vishakhapatnam-tehsil-map.jpg",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Vizag_View_from_Kailasagiri.jpg/800px-Vizag_View_from_Kailasagiri.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Pylon_at_Vizag_Steel_Plant_01.jpg/800px-Pylon_at_Vizag_Steel_Plant_01.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Simhachalam_temple_view_from_the_rear_side_hillock.jpg/800px-Simhachalam_temple_view_from_the_rear_side_hillock.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/View_of_Stupas_at_Bavikonda%2C_Visakhapatnam.jpg/800px-View_of_Stupas_at_Bavikonda%2C_Visakhapatnam.jpg"
      ],
      "about District":
          "Visakhapatnam is a coastal, port city, often called “The Jewel of the East Coast”, situated in  the of Andhra Pradesh, located on the eastern shore of India, nestled among the hills of the Eastern Ghats and facing the Bay of Bengal to the east. It is the administrative headquarters of Visakhapatnam District and is also home of the Eastern Naval Command of the Indian Navy.",
      "mandal": "11",
      "population": "19,59,544",
      "Area(in sq mtr)": "1,048",
      "density": "1869.79",
      "adminpic":
          "https://visakhapatnam.ap.gov.in/wp-content/themes/district-theme-11/images/no-image.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Dr.A.Mallikarjuna, IAS",
      "number": "08912563121",
      "Email": "collector_vspm@ap.gov.in"
    },
    {
      "District Name": "Alluri Sitharama Raj",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Alluri_Sitharama_Raju_in_Andhra_Pradesh_%28India%29.svg/800px-Alluri_Sitharama_Raju_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Lambasinghi_on_a_cloudy_day.jpg/800px-Lambasinghi_on_a_cloudy_day.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Entrance_to_Borra_caves_from_above_01.jpg/800px-Entrance_to_Borra_caves_from_above_01.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Coffee_plantation_in_Araku_Valley_02.jpg/800px-Coffee_plantation_in_Araku_Valley_02.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Chintapalle_Waterfalls.jpg/800px-Chintapalle_Waterfalls.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Papikondalu_04.jpg/800px-Papikondalu_04.jpg",
      ],
      "about District":
          "Alluri Sitharama Raju district, also known as Alluri district and by its initials as ASR district, is a district in the Indian state of Andhra Pradesh. The headquarters of the district is located at Paderu. Named after Alluri Sitarama Raju, a revolutionary in the Indian independence movement who hailed from the region, the district was effective since 4 April 2022 and became one of the twenty-six districts in the state. The district famous for its scenic beauty , falls in the lap of Eastern Ghats.",
      "mandal": "22",
      "population": "9,53,960",
      "Area(in sq mtr)": "12,251",
      "density": "477.87",
      "adminpic":
          "https://visakhapatnam.ap.gov.in/wp-content/themes/district-theme-11/images/no-image.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Sumit Kumar IAS",
      "number": "-",
      "Email": "collector-alluri@ap.gov.in"
    },
    {
      "District Name": "Anakapalli",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Main_Stupa_Bojjannakonda.jpg/800px-Main_Stupa_Bojjannakonda.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Anakapalle_Gandhi_Nagar.jpg/800px-Anakapalle_Gandhi_Nagar.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/NTPC_Simhadri_Super_thermal_power_plant_at_Parawada.jpg/800px-NTPC_Simhadri_Super_thermal_power_plant_at_Parawada.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Panchadharla_Temples_and_Monuments%2C_Dharapalem_village%2C_Andhra_Pradesh_-_71.jpg/800px-Panchadharla_Temples_and_Monuments%2C_Dharapalem_village%2C_Andhra_Pradesh_-_71.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Anakapalle_Sarada_River_Bridge.jpg/800px-Anakapalle_Sarada_River_Bridge.jpg"
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Anakapalli_in_Andhra_Pradesh_%28India%29.svg/800px-Anakapalli_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Anakapalle is a suburb of Visakhapatnam in the Indian state of Andhra Pradesh. The municipality was merged with Greater Visakhapatnam Municipal Corporation.[5] It has the second largest jaggery market of the country.\n\The town was originally under the rule of the Kalinga Empire (ancient Orissa), different dynasties ruled this region i.e. Chedi Kingdom of Kalinga (Orissa), Eastern Ganga dynasty of Orissa, Gajapati Kingdom of Orissa, Kakatiya, and Qutub Shahi empires. Around 1755, Kakarlapudi Appala Raju Payakarao took over the rule of the region under the Nawab of Arcot, with Anakapalle as his fortified headquarters. The saga of Anakapalle starts with a historian named “Tallapragada” place and found that Anakapalle. This was proved from the historical evidence found on Bojjana Konda. Satavahanas, Vishnukundina, Gajapathi’s, Vijayanagara Samrats, Golkonda Samanta Rajulu ruled the area.",
      "mandal": "5",
      "population": "17,26,998",
      "Area(in sq mtr)": "4,292",
      "density": "402.38",
      "adminpic":
          "https://visakhapatnam.ap.gov.in/wp-content/themes/district-theme-11/images/no-image.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Pattanshetti Ravi Subhash IAS",
      "number": "-",
      "Email": "-"
    },
    {
      "District Name": "Kakinada",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Kumararama_Bhimesvara_temple%2Cfirst_floor%2Cgopuram%2Csamalkota.jpg/800px-Kumararama_Bhimesvara_temple%2Cfirst_floor%2Cgopuram%2Csamalkota.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/9/9b/Jntucampus.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/2nd_century_Buddhist_site%2C_Kodavali_Andhra_Pradesh_-_33.jpg/800px-2nd_century_Buddhist_site%2C_Kodavali_Andhra_Pradesh_-_33.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Yeleru_dam_reservoir_at_Yeleswaram_view_03.JPG/800px-Yeleru_dam_reservoir_at_Yeleswaram_view_03.JPG",
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Kakinada_in_Andhra_Pradesh_%28India%29.svg/800px-Kakinada_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Kakinada district is a district in the Coastal Andhra Region in the Indian state of Andhra Pradesh. With Kakinada as its administrative headquarters, it was proposed on 26 January 2022 to become one of the resultant twenty six districts in the state after the final notification has been issued on 4 April 2022 by the government of Andhra Pradesh. The district was formed from Kakinada and Peddapuram revenue divisions from East Godavari district.",
      "mandal": "21",
      "population": "20,92,374",
      "Area(in sq mtr)": "3,019",
      "density": "693.07",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3c74d97b01eae257e44aa9d5bade97baf/uploads/2022/04/2022040415.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Smt. Kritika Shukla IAS",
      "number": "0884-2365424",
      "Email": "collector-kkd@ap.gov.in"
    },
    {
      "District Name": "East Godavari",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/East_Godavari_in_Andhra_Pradesh_%28India%29.svg/800px-East_Godavari_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Godavari_old_and_new_bridges_2.jpg/800px-Godavari_old_and_new_bridges_2.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Golingeswara_temple_Biccavole_east_godavari.jpg/800px-Golingeswara_temple_Biccavole_east_godavari.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Kovvur_shivalayam_02.jpg/800px-Kovvur_shivalayam_02.jpg"
      ],
      "about District":
          "Anakapalle is a suburb of Visakhapatnam in the Indian state of Andhra Pradesh. The municipality was merged with Greater Visakhapatnam Municipal Corporation.[5] It has the second largest jaggery market of the country.\n\   The town was originally under the rule of the Kalinga Empire (ancient Orissa), different dynasties ruled this region i.e. Chedi Kingdom of Kalinga (Orissa), Eastern Ganga dynasty of Orissa, Gajapati Kingdom of Orissa, Kakatiya, and Qutub Shahi empires. Around 1755, Kakarlapudi Appala Raju Payakarao took over the rule of the region under the Nawab of Arcot, with Anakapalle as his fortified headquarters. The saga of Anakapalle starts with a historian named “Tallapragada” place and found that Anakapalle. This was proved from the historical evidence found on Bojjana Konda. Satavahanas, Vishnukundina, Gajapathi’s, Vijayanagara Samrats, Golkonda Samanta Rajulu ruled the area. ",
      "mandal": "19",
      "population": "18,32,332",
      "Area(in sq mtr)": "2,561",
      "density": "715.48",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3c74d97b01eae257e44aa9d5bade97baf/uploads/2022/04/2022040415.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Pattanshetti Ravi Subhash,IAS",
      "number": "-",
      "Email": "collector-ankp@ap.gov.in"
    },
    {
      "District Name": "Konaseema",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Konaseema_in_Andhra_Pradesh_%28India%29.svg/800px-Konaseema_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Draksharama_temple_entrance_02.JPG/800px-Draksharama_temple_entrance_02.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Crop_fields_in_Yeditha_village.jpg/800px-Crop_fields_in_Yeditha_village.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Gummileru_Jain_Temple_close_view2.jpg/800px-Gummileru_Jain_Temple_close_view2.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Amalapuram_LandMark.jpg/800px-Amalapuram_LandMark.jpg",
      ],
      "about District":
          "Konaseema district is a proposed district in the Indian state of Andhra Pradesh. With Amalapuram as its administrative headquarters, it was proposed on 26 January 2022 to become one of the resultant twenty-six districts of the state once a final notification is issued by the government of Andhra Pradesh. The district would be formed from Amalapuram and Ramachandrapuram revenue divisions from East Godavari district.The Godavari delta is surrounded by the tributaries of Vruddha Godavari, Vasishta Godavari, Gautami and Nilarevu.",
      "mandal": "22",
      "population": "17,19,093",
      "Area(in sq mtr)": "2,083",
      "density": "825.30",
      "adminpic":
          "https://visakhapatnam.ap.gov.in/wp-content/themes/district-theme-11/images/no-image.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Himanshu Shukla IAS",
      "number": "-",
      "Email": " collector_sklm@ap.gov.in"
    },
    {
      "District Name": "Eluru",
      "pic":
          "https://cdn.s3waas.gov.in/s3eccbc87e4b5ce2fe28308fd9f2a7baf3/uploads/2022/04/2022040326-724x1024.jpeg",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Buddha_Park_in_Eluru_%28May_2019%29_10.jpg/800px-Buddha_Park_in_Eluru_%28May_2019%29_10.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/South_gopuram_of_Dwaraka_Tirumala_temple.jpg/800px-South_gopuram_of_Dwaraka_Tirumala_temple.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Tammileru_river_towards_Kolleru.jpg/800px-Tammileru_river_towards_Kolleru.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Sunrise_on_Tangellamudi%2C_Eluru.jpg/800px-Sunrise_on_Tangellamudi%2C_Eluru.jpg",
      ],
      "about District":
          "Eluru district is a district in coastal Andhra Region in the Indian state of Andhra Pradesh. With Eluru as its administrative headquarters, it was proposed on 26 January 2022 to become one of the resultant twenty six districts in the state once a final notification is issued by the government of Andhra Pradesh. It is formed from Eluru revenue division and Jangareddygudem revenue division from West Godavari district and Nuzvid revenue division from Krishna district",
      "mandal": "28",
      "population": "20,71,700",
      "Area(in sq mtr)": "6,679",
      "density": "310.18",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3eccbc87e4b5ce2fe28308fd9f2a7baf3/uploads/bfi_thumb/2022121553-pz6o8whlvo7mlts9taxxz1uv7jcyirec8wme4fsxaa.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Himanshu Shukla IAS",
      "number": "-",
      "Email": "collector-eluru@ap.gov.in"
    },
    {
      "District Name": "West Godavari",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/West_Godavari_in_Andhra_Pradesh_%28India%29.svg/800px-West_Godavari_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Bhimavaram_Paddy_Fields.JPG/800px-Bhimavaram_Paddy_Fields.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/A.P._VIllage_Rachuru.jpg/800px-A.P._VIllage_Rachuru.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/SomeswaraSwamy-5.JPG/800px-SomeswaraSwamy-5.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Godavari_river_near_Achanta.jpg/800px-Godavari_river_near_Achanta.jpg",
      ],
      "about District":
          "West Godavari district or Paschima Godavari Jilla is one of the 26 districts in the Indian state of Andhra Pradesh. The district is situated in Coastal Andhra region of the state. Eluru is the administrative headquarters of the district. As of 2011 census of India, it has an area of 2178.4 Sq. K.Ms and a population of 17,79,935. It is bounded by Eluru district on the west, River Godavari on the east, Krishna District and Bay of Bengal  on the south and the Rajahmundry District on the north.",
      "mandal": "19",
      "population": "17,79,935",
      "Area(in sq mtr)": "2,178",
      "density": "817.23",
      "adminpic":
          "https://cdn.s3waas.gov.in/s381448138f5f163ccdba4acc69819f280/uploads/2023/02/2023020627-1.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Smt P. Prasanthi I A S",
      "number": "-",
      "Email": " collector_sklm@ap.gov.in"
    },
    {
      "District Name": "NTR",
      "pic":
          "https://cdn.s3waas.gov.in/s39461cce28ebe3e76fb4b931c35a169b0/uploads/2022/03/2022032036-768x543.jpg",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Night_view_of_Prakasam_Barrage.jpg/800px-Night_view_of_Prakasam_Barrage.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Kondapalli_fort2.jpg/800px-Kondapalli_fort2.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/KANAKADURGA_TEMPLE_VIJAYAWADA_AP_-_panoramio.jpg/800px-KANAKADURGA_TEMPLE_VIJAYAWADA_AP_-_panoramio.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/7th-century_Akkanna_Madanna_Upper_Cave%2C_Vijayawada%2C_Andhra_Pradesh_-_3.jpg/800px-7th-century_Akkanna_Madanna_Upper_Cave%2C_Vijayawada%2C_Andhra_Pradesh_-_3.jpg",
      ],
      "about District":
          "NTR district is a district in coastal Andhra Region in the Indian state of Andhra Pradesh. The district headquarters is located at Vijayawada. The district is named after former Chief Minister of Andhra Pradesh N. T. Rama Rao. The district shares boundaries with Guntur, Palnadu, Krishna, Eluru, Khammam and Nalgonda districts",
      "mandal": "20",
      "population": "22,18,591",
      "Area(in sq mtr)": "3,316	",
      "density": "669.06",
      "adminpic":
          "https://cdn.s3waas.gov.in/s39461cce28ebe3e76fb4b931c35a169b0/uploads/bfi_thumb/2022040368-pmtjg9sktxow6einlagmowb2q1pemln6vhque8993k.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Shri S. Dilli Rao I.A.S",
      "number": "08662478090",
      "Email": "collector-ntr@ap.gov.in"
    },
    {
      "District Name": "Krishna",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/a/ad/Raja%27s_Fort_in_Challapalli.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Srikakulandhra_Maha_Vishnu_Temple_Panorama.jpg/800px-Srikakulandhra_Maha_Vishnu_Temple_Panorama.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Medha_IT_Park_Tower_1.jpg/800px-Medha_IT_Park_Tower_1.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Vijayawada_Airport_10_%28November_2018%29.jpg/800px-Vijayawada_Airport_10_%28November_2018%29.jpg",
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Krishna_in_Andhra_Pradesh_%28India%29.svg/800px-Krishna_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Krishna District with its district headquarters at Machilipatnam is the coastal district of Andhra Pradesh. It was formerly called as Machilipatnam District. Later it was renamed as Krishna District after the holy river Krishna, by adding certain Taluks of the abolished Guntur District in 1859. Again in 1925, Krishna District was further divided into Krishna and West Godavari Districts. There are no changes in its jurisdiction except some minor changes (in Divi Taluk and Munagala Paragana). Further Again in 2022 Krishna District was divided into Krishna and NTR Districts.",
      "mandal": "26",
      "population": "17,35,079",
      "Area(in sq mtr)": "3,775",
      "density": "459.62",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3c399862d3b9d6b76c8436e924a68c45b/uploads/2019/06/2023041594.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Shri P. Raja Babu, I.A.S.",
      "number": "08672252668",
      "Email": "collector_krsn@ap.gov.in"
    },
    {
      "District Name": "Palnadu",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Palnadu_in_Andhra_Pradesh_%28India%29.svg/800px-Palnadu_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Dhyana_Buddha_Project.jpg/800px-Dhyana_Buddha_Project.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Sri_Lakhsmichnnakesava_swami_temple45.jpg/800px-Sri_Lakhsmichnnakesava_swami_temple45.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Anupu_ei01-45.jpg/800px-Anupu_ei01-45.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Ethipothala_Falls2.jpg/800px-Ethipothala_Falls2.jpg",
      ],
      "about District":
          "Palnadu district is a district in coastal Andhra Region in the Indian state of Andhra Pradesh. With Narasaraopet as its administrative headquarters, it was formed on 4 April 2022 to become one of the resultant twenty-six districts The district was formed from Gurazala, Sattenapalli and Narasaraopet revenue divisions from Guntur district.The district covers most of the Palnadu region.",
      "mandal": "28",
      "population": "20,41,723",
      "Area(in sq mtr)": "7,298",
      "density": "279.76",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3e4da3b7fbbce2345d7772b0674a318d5/uploads/2022/04/2022040347.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Siva Sankar Lotheti, I.A.S.",
      "number": "-",
      "Email": "collector-palnadu@ap.gov.in"
    },
    {
      "District Name": "Guntur",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Guntur_in_Andhra_Pradesh_%28India%29.svg/800px-Guntur_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Vykuntapuram_temple_entrance%2C_Tenali.jpg/800px-Vykuntapuram_temple_entrance%2C_Tenali.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/%E0%B0%AE%E0%B0%82%E0%B0%97%E0%B0%B3%E0%B0%97%E0%B0%BF%E0%B0%B0%E0%B0%BF_%E0%B0%B2%E0%B1%8B_%E0%B0%B2%E0%B0%95%E0%B1%8D%E0%B0%B7%E0%B1%8D%E0%B0%AE%E0%B1%80%E0%B0%A8%E0%B0%B0%E0%B0%B8%E0%B0%BF%E0%B0%82%E0%B0%B9%E0%B0%B8%E0%B1%8D%E0%B0%B5%E0%B0%BE%E0%B0%AE%E0%B0%BF_%E0%B0%86%E0%B0%B2%E0%B0%AF_%E0%B0%97%E0%B1%8B%E0%B0%AA%E0%B1%81%E0%B0%B0%E0%B0%82.JPG/800px-%E0%B0%AE%E0%B0%82%E0%B0%97%E0%B0%B3%E0%B0%97%E0%B0%BF%E0%B0%B0%E0%B0%BF_%E0%B0%B2%E0%B1%8B_%E0%B0%B2%E0%B0%95%E0%B1%8D%E0%B0%B7%E0%B1%8D%E0%B0%AE%E0%B1%80%E0%B0%A8%E0%B0%B0%E0%B0%B8%E0%B0%BF%E0%B0%82%E0%B0%B9%E0%B0%B8%E0%B1%8D%E0%B0%B5%E0%B0%BE%E0%B0%AE%E0%B0%BF_%E0%B0%86%E0%B0%B2%E0%B0%AF_%E0%B0%97%E0%B1%8B%E0%B0%AA%E0%B1%81%E0%B0%B0%E0%B0%82.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Chuttugunta_center%2C_Guntur.jpg/800px-Chuttugunta_center%2C_Guntur.jpg"
      ],
      "about District":
          "Guntur is a district in Andhra Pradesh, India covering an area of 11,391 sq. km onthe Deccan, the first home of man in India. Palaeolithic (old stone age) implements have been found, suggesting that man then roamed the region.\n\ The Kingdom of Prataliputra (5th century BC)}, identified with Bhattiprolu, appears to be the earliest known kingdom in Guntur District. Inscriptional evidence shows that king Kubera was ruling over Bhattiprolu around 230 BC followed by the Sala Kings. Guntur was successively ruled by famous dynasties such as the Satavahanas, Ikshavakus, Pallavas, Anandagothrins, Vishnu Kundins, Chalukyas, Cholas, Kakatiyas, Reddies, Vijayanagara and Kutub Shahis during ancient and medieval times. Later, several subordinate kingdoms ruled the region. These subordinate dynasties also indulged in mutual wars, one of which culminated in a famous battle of Palnadu which is enshrined in legend and literature as “Andhra Kurukshetra” in 1180 AD.",
      "mandal": "18",
      "population": "20,91,075",
      "Area(in sq mtr)": "2,443",
      "density": "855.95",
      "adminpic":
          "https://cdn.s3waas.gov.in/s30777d5c17d4066b82ab86dff8a46af6f/uploads/2023/01/2023011066.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri M. Venugopal Reddy, I.A.S.",
      "number": "-",
      "Email": "collector_gntr@ap.gov.in"
    },
    {
      "District Name": "Bapatla",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Maha_Stupa_at_Bhattiprolu_01.jpg/800px-Maha_Stupa_at_Bhattiprolu_01.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Beautiful_Morning_at_Bay_of_Bengal.jpg/800px-Beautiful_Morning_at_Bay_of_Bengal.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Building_of_Vetapalem_Library.jpg/800px-Building_of_Vetapalem_Library.jpg"
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Bapatla_in_Andhra_Pradesh_%28India%29.svg/375px-Bapatla_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Bapatla district is a district in coastal Andhra in the Indian state of Andhra Pradesh established on 4 April 2022. The administrative headquarter is Bapatla. The district is formed from parts of erstwhile Prakasam district and Guntur districts.",
      "mandal": "25",
      "population": "15,86,918",
      "Area(in sq mtr)": "3,829",
      "density": "414.45",
      "adminpic":
          "https://cdn.s3waas.gov.in/s345c48cce2e2d7fbdea1afc51c7c6ad26/uploads/2023/04/2023041528.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri P. Ranjit Basha, IAS.",
      "number": "-",
      "Email": "collector-bapatla@ap.gov.in"
    },
    {
      "District Name": "Prakasam",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Prakasam_in_Andhra_Pradesh_%28India%29.svg/800px-Prakasam_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/7th_to_8th_century_Bhairavakona_rock_cut_cave_temples%2C_Ambavaram_Nallamala_Hills%2C_Andhra_Pradesh_-_14.jpg/800px-7th_to_8th_century_Bhairavakona_rock_cut_cave_temples%2C_Ambavaram_Nallamala_Hills%2C_Andhra_Pradesh_-_14.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/DRYING_CHILLIES%2CDORNALA%2CAP_-_panoramio.jpg/800px-DRYING_CHILLIES%2CDORNALA%2CAP_-_panoramio.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/DKD_Church.JPG/800px-DKD_Church.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Pakala_Beach%2CSingarayakonda.jpg/800px-Pakala_Beach%2CSingarayakonda.jpg"
      ],
      "about District":
          "The Prakasam District named in memory of the eminent freedom fighter, later Chief Minister of the composite Madras State and the first Chief Minister of Andhra Pradesh State, late Sri Tanguturi “Prakasam Panthulu, “Andhra Kesari” who was born at Vinodarayuni palem, a hamlet of Kanaparthi village of Naguluppala Padu Mandal of this district.",
      "mandal": "39",
      "population": "22,88,026",
      "Area(in sq mtr)": "14,322",
      "density": "159.76",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3f3f27a324736617f20abbf2ffd806f6d/uploads/2022/04/2022040536.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri.A S Dinesh Kumar,IAS",
      "number": "8886616001",
      "Email": " collector_sklm@ap.gov.in"
    },
    {
      "District Name": "Nellore",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Sri_Potti_Sriramulu_Nellore_in_Andhra_Pradesh_%28India%29.svg/800px-Sri_Potti_Sriramulu_Nellore_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Udayagiri_Fort_%2816%29.jpg/800px-Udayagiri_Fort_%2816%29.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Pinakini_satygraha_Aasram%2C_in_rainy.jpg/800px-Pinakini_satygraha_Aasram%2C_in_rainy.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Mypadu_beach-sunrise.jpg/800px-Mypadu_beach-sunrise.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/1/1d/Damaramadugu_Rice_Fields.jpg"
      ],
      "about District":
          "Nellore District situated in the South Eastern portion of the state with a coastal length of 163 KM bounded by Bay of Bengal on the East. The district was known as Vikrama Simhapuri until 13th Century and later it came to be referred to as Nellore.  ",
      "mandal": "38",
      "population": "24,69,712",
      "Area(in sq mtr)": "10,441",
      "density": "236.54",
      "adminpic":
          "https://cdn.s3waas.gov.in/s39c82c7143c102b71c593d98d96093fde/uploads/2018/07/2023041211.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri Hari Narayanan.M IAS",
      "number": "-",
      "Email": " collector_sklm@ap.gov.in"
    },
    {
      "District Name": "Kurnool",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/23_-_Telugu_Talli_Statue_with_Kondareddy_Buruju_as_background.JPG/800px-23_-_Telugu_Talli_Statue_with_Kondareddy_Buruju_as_background.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/MANTRALAYAM-Dr._Murali_Mohan_Gurram_%281%29.jpg/800px-MANTRALAYAM-Dr._Murali_Mohan_Gurram_%281%29.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Rock_Garden_Kurnool_Sudhakar_Bichali.jpg/800px-Rock_Garden_Kurnool_Sudhakar_Bichali.jpg",
        "https://cdn.s3waas.gov.in/s37f24d240521d99071c93af3917215ef7/uploads/bfi_thumb/2018022871-1024x768-olwa0o7x3342p9pe1aasvu62z0vcw8isnqejgjnqow.jpg"
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Kurnool_in_Andhra_Pradesh_%28India%29.svg/800px-Kurnool_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "This district derives its name from its chief town Kurnool the capital of former Nawabs, Capital of Andhra Pradesh State from 1st October 1953 to 1st November, 1956 and at present the headquarters of the district. The name Kurnool is said to have been derived form “Kandanavolu”.",
      "mandal": "26",
      "population": "22,71,686",
      "Area(in sq mtr)": "7,980",
      "density": "284.67",
      "adminpic":
          "https://cdn.s3waas.gov.in/s37f24d240521d99071c93af3917215ef7/uploads/bfi_thumb/2023050996-scaled-q67i2akas1fhh5iu2gzljtxn9mcro8acq0jain28fw.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Dr. G.Srijana I.A.S.",
      "number": "08518220006",
      "Email": "collector_krnl@ap.gov.in"
    },
    {
      "District Name": "Nandyal",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Lower_Ahobilam_temple_view.jpg/800px-Lower_Ahobilam_temple_view.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/15th_century_Yaganti_Umamahesvara_temple%2C_Andhra_Pradesh_India_-_138.jpg/800px-15th_century_Yaganti_Umamahesvara_temple%2C_Andhra_Pradesh_India_-_138.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/7th_century_Sivanandisvara_temple%2C_Kadamala_kalva%2C_Andhra_Pradesh_India_-_12.jpg/800px-7th_century_Sivanandisvara_temple%2C_Kadamala_kalva%2C_Andhra_Pradesh_India_-_12.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Srisailam_Tiger_Reserve_Area_20150314_115117_Richtone%28HDR%29.jpg/800px-Srisailam_Tiger_Reserve_Area_20150314_115117_Richtone%28HDR%29.jpg"
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Nandyal_in_Andhra_Pradesh_%28India%29.svg/800px-Nandyal_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Nandyal district is a district in the Indian state of Andhra Pradesh with Nandyal as its administrative headquarters, it was formed on 4 April 2022 to become one of the resultant 26 districts. It is part of the Rayalaseema region. The district consists of Nandyal revenue division and a newly formed Dhone revenue division and Atmakur revenue division from Kurnool district.",
      "mandal": "30",
      "population": "17,81,777",
      "Area(in sq mtr)": "9,682",
      "density": "184.03",
      "adminpic":
          "https://visakhapatnam.ap.gov.in/wp-content/themes/district-theme-11/images/no-image.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri. Shrikesh B Lathkar, I.A.S.",
      "number": "-",
      "Email": " collector_sklm@ap.gov.in"
    },
    {
      "District Name": "Anantapur",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/15th_century_Bugga_Ramalingeswara_temple%2C_Tadipatri%2C_Andhra_Pradesh%2C_India_-_193.jpg/800px-15th_century_Bugga_Ramalingeswara_temple%2C_Tadipatri%2C_Andhra_Pradesh%2C_India_-_193.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Gooty_Fort.JPG/800px-Gooty_Fort.JPG",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Penna_Ahobilam%2C_Uravakonda%2C_Anantapur_%28125425%29_Fotor.jpg/800px-Penna_Ahobilam%2C_Uravakonda%2C_Anantapur_%28125425%29_Fotor.jpg"
      ],
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Anantapur_in_Andhra_Pradesh_%28India%29.svg/375px-Anantapur_in_Andhra_Pradesh_%28India%29.svg.png",
      "about District":
          "Ananthapuramu got its name from ‘Anaatasagaram’, a big tank, which means “Endless Ocean”. The villages of Anaantasagaram and Bukkarayasamudram were constructed by Anantaras Chilkkavodeya, the minister of Bukka-I, a Vijayanagar ruler. Some authorities assert that Anaantasagaram was named after Bukka’s queen, while some contend that it must have been known after Anantarasa Chikkavodeya himself, as Bukka had no queen by that name. Anantapur District was formed in the year 1882 having been separated from Bellary distric",
      "mandal": "32",
      "population": "22,41,105",
      "Area(in sq mtr)": "10,205",
      "density": "219.61",
      "adminpic":
          "https://cdn.s3waas.gov.in/s333e8075e9970de0cfea955afd4644bb2/uploads/bfi_thumb/2023041097-q4t21rkjr4fkzdppz2vw9fcdtpha3srhimp2f0s66g.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Smt. Gowthami.M. IAS",
      "number": "9493188801",
      "Email": "collector_antp@gov.in"
    },
    {
      "District Name": "Sri Sathya Sai",
      "pic":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Sri_Sathya_Sai_in_Andhra_Pradesh_%28India%29.svg/800px-Sri_Sathya_Sai_in_Andhra_Pradesh_%28India%29.svg.png",
      "pics2": [
        "https://cdn.s3waas.gov.in/s3647bba344396e7c8170902bcf2e15551/uploads/2022/04/2022042358.jpg",
        "https://cdn.s3waas.gov.in/s3647bba344396e7c8170902bcf2e15551/uploads/2022/03/2022032957.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Shiva%27s_Bull_at_Lepakshi_%28Lepakshi_Nandi%29.jpg/800px-Shiva%27s_Bull_at_Lepakshi_%28Lepakshi_Nandi%29.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Kadiri_03.jpg/800px-Kadiri_03.jpg"
      ],
      "about District":
          "Sri Sathya Sai district is a district in the Indian state of Andhra Pradesh. Its headquarters is at Puttaparthi. It was formed on 4 April 2022 from parts of the erstwhile Anantapur district.\n\ This district is named after Indian Guru Sri Sathya Sai Baba, who contributed to improving the infrastructure of the Rayalaseema region by building schools, university, free healthcare institutions and drinking water projects.",
      "mandal": "32",
      "population": "18,40,043",
      "Area(in sq mtr)": "8,925",
      "density": "206.17",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3647bba344396e7c8170902bcf2e15551/uploads/bfi_thumb/2023041024-q4t5zxnrg11v057et17hw1t8cqqvbq5y2avwinzj2g.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri.P.Arun Babu., IAS,",
      "number": "-",
      "Email": "collector-sssai@ap.gov.in"
    },
    {
      "District Name": "Kadapa",
      "pics2": [
        "https://cdn.s3waas.gov.in/s37dcd340d84f762eba80aa538b0c527f7/uploads/2018/02/2018022875.jpg",
        "https://cdn.s3waas.gov.in/s37dcd340d84f762eba80aa538b0c527f7/uploads/2018/05/2018051919.jpg",
        "https://cdn.s3waas.gov.in/s37dcd340d84f762eba80aa538b0c527f7/uploads/2019/06/2019062512.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Rayalaseema_Thermal_Power_Station.jpg/800px-Rayalaseema_Thermal_Power_Station.jpg",
      ],
      "pic":
          "https://cdn.s3waas.gov.in/s37dcd340d84f762eba80aa538b0c527f7/uploads/2022/04/2022042520.jpg",
      "about District":
          "YSR District (formerly  known as Kadapa District) is said to be the heart of the Rayalaseema as it is centrally located and well connected with the 8 districts of Rayalaseema. The District has a glorious history and a rich cultural heritage. YSR district is one of the 26 districts in the State  of Andhra Pradesh.",
      "mandal": "36",
      "population": "20,60,654",
      "Area(in sq mtr)": "11,228",
      "density": "183.53",
      "adminpic":
          "https://cdn.s3waas.gov.in/s37dcd340d84f762eba80aa538b0c527f7/uploads/bfi_thumb/2021091356-scaled-pd1khaz2bnxh4t247so640itijh6z61kq10qddrum8.jpg",
      "Designation": "Collector & District Magistrate",
      "name": "V Vijay Rama Raju, IAS",
      "number": "08562-244676",
      "Email": "collector_kdp@ap.gov.in"
    },
    {
      "District Name": "Annamayya",
      "pics2": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/The_Temple_of_Sri_Soumyanatha_Swamy_Nandalur_Kadapa_AP_INDIA.jpg/800px-The_Temple_of_Sri_Soumyanatha_Swamy_Nandalur_Kadapa_AP_INDIA.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Sri_Parasurameshwara_Temple%2C_Attirala.jpg/800px-Sri_Parasurameshwara_Temple%2C_Attirala.jpg",
        "https://cdn.s3waas.gov.in/s31be3bc32e6564055d5ca3e5a354acbef/uploads/2022/03/2022032298.jpg",
        "https://cdn.s3waas.gov.in/s31be3bc32e6564055d5ca3e5a354acbef/uploads/2022/02/2022022512.jpg"
      ],
      "pic":
          "https://cdn.s3waas.gov.in/s31be3bc32e6564055d5ca3e5a354acbef/uploads/2022/04/2022042873.jpg",
      "about District":
          "Annamayya District is the extreme south eastern district of Andhra Pradesh situated within the geographical co-ordinate of 13° 43’ and 15° 14’ of northern latitude and 77° 55’and 79° 29’ Eastern longitude. The latitude varies from 269 to 3787 meters above sea level. The District is bounded on North by YSR Kadapa District, South by Chittoor District West by Anantapur District and East by Nellore and Chittoor Districts.",
      "mandal": "30",
      "population": "16,97,308",
      "Area(in sq mtr)": "7,954",
      "density": "213.39",
      "adminpic":
          "https://cdn.s3waas.gov.in/s31be3bc32e6564055d5ca3e5a354acbef/uploads/bfi_thumb/2023052763-e1685180438191-q72pm03ydlamrmyuupt4nhqs2aqq4vw2rl8lm8u8kw.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri P S Girisha, IAS",
      "number": "-",
      "Email": "collector-annamayya@ap.gov.in"
    },
    {
      "District Name": "Tirupati",
      "pic":
          "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/04/2022040664-768x544.jpg",
      "pics2": [
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/04/2022040116.png",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/04/2022040149.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/03/2022030453.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/03/2022031795.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/03/2022032531.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/03/2022032516.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/03/2022032955.jpg",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/05/2022051028.png",
        "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/2022/09/2022092828.jpg"
      ],
      "about District":
          "Tirupati, the holy city is located in the southeastern part of Andhra Pradesh and Known for ‘Kaliyuga’ deity Lord Venkateswara.  It is located between the Northern Latitudes of 130 21′ 54″ and 140– 30′ 40″ and between the Eastern Longitudes 790 5′ 42″ and 800 4′ 10″.  It is bounded on the east by Bay of Bengal, on the west by Annamayya and Chittoor Districts of Andhra Pradesh, on the North by SPSR Nellore and Annamayya Districts of Andhra Pradesh and on the south by Chittoor District of Andhra Pradesh and Tamilnadu State. In respect of area, it is with an area of 9174 Square Kilometers which accounts for 5.63 percent of the total area of the state.  The general elevation of the mountainous part of the district is 2500 feet above sea level.  The Chennai & Bangalore cities are located in 150 Kms. and 250 Kms. respectively to Tirupati Town.  The District has good business and marketing for Groundnut, Paddy and Other Products.",
      "mandal": "34",
      "population": "21,96,984",
      "Area(in sq mtr)": "8,231",
      "density": "266.92",
      "adminpic":
          "https://cdn.s3waas.gov.in/s3ca8155f4d27f205953f9d3d7974bdd70/uploads/bfi_thumb/2022041816-pnja8xgijze47ahpfci49fxb2vk14d0rf7psdu5aja.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "Sri K Venkata Ramana Reddy, IAS",
      "number": "-",
      "Email": "collector-tirupati@ap.gov.in"
    },
    {
      "District Name": "Chittoor",
      "pics2": [
        "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/2022/04/2022042818.jpg",
        "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/2022/04/2022042873.jpg",
        "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/2022/04/2022042817.jpg",
        "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/2022/04/2022042884.jpg"
      ],
      "pic":
          "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/2022/04/2022042856-768x543.jpg",
      "about District":
          "Chittoor District was constituted on 1st April, 1911 with the admixture of the Culture and Traditions of three borders states of Andhra Pradesh, Tamilnadu and Karnataka. It then comprised the Taluks of Chittoor, Palamaner and Chandragiri transferred from Old North Arcot District of Tamilnadu, Madanapalle and Voyalpadu Taluks of Kadapa District and Ex-Zamindari areas of Punganur, Srikalahasthi, Puttur and Old Karvetinagar estate. Later, Kangundi Taluk of North Arcot District excluding 22 villages was transferred to Palamaner Taluk on 1st December, 1928. This taluk also gained eight villages which were the enclaves of Mysore (Karnataka) State under the Provinces and States (Absorption of enclaves) Order, 1950. The next major change in the jurisdiction of the district took place on 1st April, 1960 as a result of Pataskar Award consequent on the re-organisation of the state on linguistic basis, a major portion of Tiruthani Taluk was transferred to Chengalpattu district of Tamilnadu. Instead one Taluk known as Sathyavedu comprising 76 villages of Tiruvallur Taluk, 72 villages of Ponneri Taluk both of Chengalpattu District of Tamilnadu and 17 villages of Puttur Taluk, 19 villages of Tiruttani Taluk were added to Chittoor District. Also from the same date, the Sub-Taluks of Kuppam and Bangarupalem were constituted transferring 220 villages from Palamaner Taluk and Three villages from Krishnagiri Taluk of Salem District of Tamilnadu to form Kuppam Sub-Taluk and 145 villages from Chittoor Taluk to form Bangarupalem Sub-Taluk. Subsequently, Kuppam and Bangarupalem were made full fledged taluks.",
      "mandal": "32",
      "population": "18,72,951",
      "Area(in sq mtr)": "6,855",
      "density": "273.22",
      "adminpic":
          "https://cdn.s3waas.gov.in/s333e75ff09dd601bbe69f351039152189/uploads/bfi_thumb/2023042151-q5c26ea6k8mqdu475ywbnf60tzjtzfyn2ngkwsdhl2.jpeg",
      "Designation": "Collector & District Magistrate",
      "name": "SHAN MOHAN SAGILI, I.A.S.,",
      "number": "08572240333",
      "Email": "collectorchittoor@gmail.com"
    },
  ];
}; */
  // List details = data["items"];
  String? skb;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Are you sure ?"),
                  content: Text("Do you want to exit this App"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"))
                  ],
                )));
      },
      child: Scaffold(
          appBar: AppBar(
            // systemOverlayStyle:
            //     SystemUiOverlayStyle(statusBarColor: Colors.blueGrey),
            actions: [
              IconButton(
                icon: Icon(Icons.info),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => UserPolicy()));
                },
              )
            ],
            title: currentIndex == 1
                ? Text("Districts Data")
                : currentIndex == 2
                    ? Text("Tourism")
                    : Text("Andhra Pradesh"),
            centerTitle: true,
          ),
          body: currentIndex == 0
              ? AboutAp()
              : Column(
                  children: [
                    // Container(
                    //  child:AnotherCarousel(images: [Image.network("${pics2[index]}")]) ,
                    //   color: Colors.amber,
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    /* 
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButton(
                          hint: Text("Select Option"),
                          underline: SizedBox(),
                          isExpanded: true,
                          value: skb,
                          items: options
                              .map((e) => DropdownMenuItem(
                                    child: Text(e),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (v) {
                            setState(() {
                              skb = v.toString();
                              skb == "About Andhra Pradesh"
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => AboutAp()))
                                  : null;
                            });
                          }),
                    ),
                     */
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Expanded(
                        child: currentIndex == 2
                            ? GridView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: tourism.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: ((context, index) {
                                  String name = tourism[index]["type"];
                                  String bgimage = tourism[index]["bgimage"];
                                  var sub = tourism[index]["sub"];
                                  var des = tourism[index]["des"];
                                  var pic = tourism[index]["pic"];

                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => TourismPage(
                                                  name: name,
                                                  bgimage: bgimage,
                                                  sub: sub,
                                                  des: des,
                                                  pic: pic)));
                                    },
                                    child: Card(
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5)),
                                            child: Container(
                                              height: 150,
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "${tourism[index]["bgimage"]}",
                                                fit: BoxFit.fitHeight,
                                                // placeholder: (context, url) =>
                                                //     CircularProgressIndicator(),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Icon(Icons.error),
                                              ),
                                              /*  Image.network(
                                                "${tourism[index]["bgimage"]}",
                                                fit: BoxFit.fitHeight,
                                              ), */
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            "${tourism[index]["type"]}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }))
                            : currentIndex == 1
                                ? NewWidget(details: details)
                                : Container(
                                    padding: EdgeInsets.all(5),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://upload.wikimedia.org/wikipedia/en/thumb/3/37/Emblem_of_Andhra_Pradesh.svg/800px-Emblem_of_Andhra_Pradesh.svg.png",
                                      fit: BoxFit.fitHeight,
                                      // placeholder: (context, url) =>
                                      //     CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  )
                        //  LottieBuilder.asset("assets/namaste.json"),
                        )
                  ],
                ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            // selectedLabelStyle: TextStyle(fontSize: 15),
            // unselectedLabelStyle: TextStyle(fontSize: 5),
            selectedItemColor: Color.fromARGB(255, 38, 219, 236),
            // selectedIconTheme: IconThemeData(size: 20),
            // unselectedIconTheme: IconThemeData(size: 10),
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.blueGrey,
            elevation: 10,
            onTap: (num) {
              setState(() {
                currentIndex = num;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt), label: "Districts"),
              BottomNavigationBarItem(icon: Icon(Icons.tour), label: "Toursim"),

              // BottomNavigationBarItem(icon: Icon(Icons.adb), label: "Android"),
            ],
          )),
    );
  }
}

class NewWidget extends StatelessWidget {
  NewWidget({
    super.key,
    required this.details,
  });

  List details;

  @override
  Widget build(BuildContext context) {
    return details.isNotEmpty
        ? GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: details.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext, index) {
              String spic = details[index]["pic"];
              String districtname = details[index]["District Name"];

              String aboutDistrict = details[index]["about District"];
              String mandal = details[index]["mandal"];
              String population = details[index]["population"];

              String insqmtr = details[index]["Area(in sq mtr)"];
              String density = details[index]["density"];
              String adminpic = details[index]["adminpic"];
              String Designation = details[index]["Designation"];
              String name = details[index]["name"];
              String number = details[index]["number"];
              String Email = details[index]["Email"];
              var pics2 = details[index]["pics2"];

              // var data = details[index];

              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => DistrictData(
                              Email: Email,
                              number: number,
                              name: name,
                              density: density,
                              adminpic: adminpic,
                              designation: Designation,
                              spic: spic,
                              aboutDistrict: aboutDistrict,
                              mandal: mandal,
                              population: population,
                              insqmtr: insqmtr,
                              data: details,
                              pics2: pics2,
                              districtname: districtname)));
                },
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        height: 135,
                        width: 150,
                        child: CachedNetworkImage(
                          imageUrl: "${spic}",
                          fit: BoxFit.fitHeight,
                          placeholder: (context, url) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      Spacer(),
                      Center(
                          child: Text(
                        "${details[index]["District Name"]}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              );
            })
        : CircularProgressIndicator();
  }
}
