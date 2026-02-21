-- Places
INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-1',
    'Bwindi Impenetrable National Park',
    'Uganda',
    'Attraction',
    'A UNESCO World Heritage site, Bwindi Impenetrable National Park is a sanctuary for nearly half of the world''s mountain gorillas. Its dense, misty forests offer a once-in-a-lifetime opportunity to observe these magnificent creatures in their natural habitat while supporting vital conservation efforts and local communities.',
    'Bwindi Impenetrable National Park is a UNESCO World Heritage site in southwestern Uganda, renowned for its exceptional biodiversity with over 160 species of trees and 120 species of mammals. Its main attraction is gorilla tracking, offering a unique opportunity to see these magnificent creatures up close. The dense, misty forest also provides incredible bird watching, with over 350 species, and guided nature walks that reveal the rich ecosystem and stunning waterfalls within the park.',
    'https://images.unsplash.com/photo-1648510398515-c4a7bda2d544?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.9,
    '{"lat":-1.087,"lng":29.619}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-2',
    'Serena Hotel Kampala',
    'Uganda',
    'Hotel',
    'A 5-star hotel offering a world-class experience in Kampala.',
    'Nestled amidst 17 acres of lush water gardens and shaded by jacaranda trees, Kampala Serena Hotel is an oasis of tranquility in the heart of the city. This 5-star hotel blends pan-African style with world-class facilities, featuring an international conference center, a stunning rock-hewn swimming pool, and the Maisha Mind Body & Spirit Spa. Guests can enjoy diverse culinary experiences, from the sophisticated Pearl of Africa restaurant to the relaxed Lakes Restaurant, all while being assured of top-tier security and service.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/bc/9f/40/kampala-serena-hotel.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":0.3162,"lng":32.5893}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-3',
    'The Lawns',
    'Uganda',
    'Restaurant',
    'A unique dining experience with a specialty in game meat.',
    'The Lawns offers a serene dining environment with lush gardens and a sophisticated ambiance. The menu is a fusion of international cuisine with a special focus on game meats like crocodile, ostrich, and gnu. It''s a perfect spot for a romantic dinner or a special celebration, known for its quality service and unique culinary offerings.',
    'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.5,
    '{"lat":0.3015,"lng":32.5878}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-4',
    'Bwindi Impenetrable Forest',
    'Uganda',
    'Attraction',
    'Home to nearly half of the world''s remaining mountain gorillas, making it one of the top destinations for gorilla trekking.',
    'Bwindi Impenetrable Forest, a UNESCO World Heritage Site in southwestern Uganda, is a sanctuary of dramatic, mist-shrouded volcanic slopes and one of the most biologically diverse forests in Africa. Its most famous residents are the mountain gorillas, and tracking them through the dense vegetation is an unforgettable wildlife encounter. The forest also hosts chimpanzees, forest elephants, and over 350 bird species, offering rich opportunities for nature walks and birdwatching. Engaging with local Batwa pygmy communities provides deep cultural insight into their ancient forest-dwelling traditions.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/d4/02/b5/experience-the-beauty.jpg?w=700&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-1.055,"lng":29.625}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-5',
    'Murchison Falls National Park',
    'Uganda',
    'Attraction',
    'Uganda’s largest and oldest national park, famous for the spectacular Murchison Falls where the Nile River squeezes through a narrow gorge.',
    'Murchison Falls National Park, Uganda’s largest conservation area, is a realm of breathtaking waterfalls, sprawling savannahs, and the mighty Nile River. The park''s centerpiece is the thunderous Murchison Falls, where the Nile explodes through a narrow 7-meter gorge. Visitors can enjoy thrilling game drives to see lions, giraffes, and elephants, and take a boat safari to the base of the falls for incredible hippo and crocodile sightings. The park also offers chimpanzee tracking in the nearby Budongo Forest and spectacular hiking to the top of the falls.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/3b/73/32/africa-is-for-us-the.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":2.273,"lng":31.792}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-6',
    'Uganda Wildlife Conservation Education Centre',
    'Uganda',
    'Attraction',
    'A leading conservation education facility, home to rescued and rehabilitated wildlife in habitats mimicking their natural environments.',
    'The Uganda Wildlife Conservation Education Centre (UWEC), often called the Entebbe Zoo, is a center for animal rescue, rehabilitation, and conservation education. Located on the shores of Lake Victoria, it provides a sanctuary for animals that are orphaned, injured, or confiscated from illegal trade. Visitors can see a wide range of native species, including lions, giraffes, rhinos, and chimpanzees, in spacious, naturalistic enclosures. It offers unique experiences like behind-the-scenes tours and a ''keeper for a day'' program.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/bd/e4/15/photo0jpg.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":0.056,"lng":32.463}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-7',
    'Entebbe Botanical Gardens',
    'Uganda',
    'Attraction',
    'Historic gardens on the shores of Lake Victoria, showcasing over 500 indigenous and exotic plant species.',
    'Established in 1898, the Entebbe Botanical Gardens are a tranquil oasis on the shores of Lake Victoria. The gardens are a haven for nature lovers, featuring a diverse collection of tropical plants, trees, and flowers from around the world. It''s an excellent spot for birdwatching, with numerous species attracted to the lush environment, and visitors can often spot colobus monkeys swinging through the trees. The peaceful atmosphere makes it perfect for a leisurely stroll or a relaxing picnic.',
    'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/c3/bf/b7.jpg',
    NULL,
    4.5,
    '{"lat":0.065,"lng":32.476}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-8',
    'Ngamba Island Chimpanzee Sanctuary',
    'Uganda',
    'Attraction',
    'A safe haven for orphaned eastern chimpanzees, providing a semi-natural forest environment for them to thrive.',
    'Located on a forested island in Lake Victoria, Ngamba Island Chimpanzee Sanctuary provides a safe home for over 50 orphaned and rescued chimpanzees. The sanctuary offers a unique opportunity to observe these intelligent primates up close from a raised viewing platform during their feeding times. Visitors can also take a boat trip across the beautiful Lake Victoria to reach the island, making the journey part of the adventure. The project is managed by the Chimpanzee Sanctuary and Wildlife Conservation Trust (CSWCT).',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/d6/b9/87/20210407-114824-largejpg.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-0.103,"lng":32.65}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-9',
    'Gaddafi National Mosque',
    'Uganda',
    'Attraction',
    'The largest mosque in East Africa, offering panoramic views of Kampala from its minaret.',
    'The Uganda National Mosque, located atop Old Kampala Hill, is a stunning architectural landmark and the largest mosque in East Africa. Commissioned by Colonel Muammar Gaddafi, its design blends Islamic and Ugandan cultural elements. The mosque is open to visitors of all faiths, who can admire its beautiful interior and intricate details. A highlight of the visit is climbing the 272 steps of the minaret for breathtaking 360-degree views of Kampala''s seven hills.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/68/9c/ef/caption.jpg?w=700&h=400&s=1',
    NULL,
    4.6,
    '{"lat":0.318,"lng":32.571}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-10',
    'Mabamba Swamp',
    'Uganda',
    'Attraction',
    'A vast wetland renowned as one of the best places in Uganda to see the elusive and prehistoric-looking Shoebill stork.',
    'Mabamba Swamp, a vast wetland on the shores of Lake Victoria, is a birdwatcher''s paradise and one of the most reliable places in Uganda to spot the rare and prehistoric-looking Shoebill stork. Visitors explore the swamp''s narrow water channels by canoe, guided by local experts who know the best spots to find this elusive bird. Besides the Shoebill, the swamp is home to over 300 other bird species, making it a rich and rewarding ecological tour.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/e3/47/4d/bird-watching-on-a-locally.jpg?w=700&h=400&s=1',
    NULL,
    4.7,
    '{"lat":0.076,"lng":32.348}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-11',
    'Kazinga Channel',
    'Uganda',
    'Attraction',
    'A natural waterway in Queen Elizabeth National Park with one of the largest concentrations of hippos in the world.',
    'The Kazinga Channel is a wide, natural waterway that links Lake Edward and Lake George within Queen Elizabeth National Park. It boasts one of the world''s largest concentrations of hippos and numerous Nile crocodiles. A boat cruise along the channel is a highlight of any visit to the park, offering fantastic opportunities to see elephants, buffalo, and a wide array of water birds cooling off at the water''s edge. The slow-moving boat provides excellent photo opportunities and a relaxing way to experience the park''s wildlife.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/c8/a6/73/kazinga.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-0.198,"lng":29.932}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-12',
    'Lake Mburo National Park',
    'Uganda',
    'Attraction',
    'Uganda’s smallest savanna national park, offering diverse landscapes and rich wildlife including zebras, impalas, and over 300 bird species.',
    'Lake Mburo National Park is Uganda’s most compact savanna park, making it an easily accessible and rewarding destination. It''s known for its rich biodiversity and is the best place in the country to see large herds of zebra and impala. The park''s varied landscapes of acacia woodland, wetlands, and grassy hills can be explored through game drives, boat cruises on Lake Mburo, guided nature walks, and even horseback safaris, which offer a unique and intimate way to view wildlife.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/93/f3/bb/caption.jpg?w=700&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-0.595,"lng":30.948}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-13',
    'Source of the Nile - Speke Monument',
    'Uganda',
    'Attraction',
    'Historic site where British explorer John Hanning Speke identified the source of the River Nile in 1858.',
    'This is the historic site where British explorer John Hanning Speke identified the source of the River Nile in 1858. A stone monument marks the exact spot on the banks of Lake Victoria, just above Ripon Falls (now submerged). Visitors can take a boat ride to the precise point where the Nile begins its long journey north to the Mediterranean Sea. The area is also home to a variety of birdlife and offers souvenir shopping from local craft vendors.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/6a/46/8a/nilin-kaynagi.jpg?w=900&h=500&s=1',
    NULL,
    4.6,
    '{"lat":0.4479,"lng":33.2041}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-14',
    'Bigodi Wetlands Sanctuary',
    'Uganda',
    'Attraction',
    'A community-run conservation area protecting a rich wetland ecosystem near Kibale National Park.',
    'Located near Kibale National Park, the Bigodi Wetlands Sanctuary is a shining example of community-based ecotourism. The sanctuary is a paradise for birdwatchers, with over 200 species including the Great Blue Turaco. It is also home to eight primate species. Visitors can take guided walks along boardwalks and trails, supporting local conservation efforts and community livelihoods at the same time.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/3d/22/29/photo3jpg.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":0.552,"lng":30.407}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-15',
    'Kidepo Valley National Park',
    'Uganda',
    'Attraction',
    'One of Uganda’s most remote and breathtaking national parks.',
    'Kidepo Valley National Park is one of Uganda’s most remote and breathtaking national parks. Located in the far northeastern corner of the country, it''s often called Uganda’s “hidden gem” due to its untouched beauty and unique wildlife. The park is surrounded by rugged mountains and expansive savannah plains, offering dramatic views. It is home to over 75 mammal species, including lions, cheetahs, elephants, giraffes, and large herds of buffalo. Due to its remote location, Kidepo offers a more intimate and authentic wilderness experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/13/46/de/giraffe-evening-walk.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":3.84,"lng":33.85}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-16',
    'Uganda Martyrs Shrine',
    'Uganda',
    'Attraction',
    'One of Uganda’s most sacred Christian pilgrimage sites in Namugongo.',
    'The Uganda Martyrs Shrine in Namugongo is one of Uganda’s most sacred Christian pilgrimage sites. It commemorates the 22 Catholic and 23 Anglican martyrs who were executed between 1885 and 1887 for refusing to renounce their faith. The site features a stunning basilica built in the shape of a traditional African hut. Every year on June 3rd, millions of pilgrims gather here to honor the martyrs, making it one of the largest religious gatherings in Africa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/39/f6/d8/a-roman-catholic-minor.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":0.395,"lng":32.651}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-17',
    'Igongo Cultural Centre',
    'Uganda',
    'Attraction',
    'A lively cultural hub offering a rich and immersive experience in western Uganda.',
    'Igongo Cultural Centre, located near Mbarara, is a premier destination for experiencing the culture and history of the Ankole people. The center features the Eriijukiro Museum, one of the largest in western Uganda, displaying artifacts and royal regalia. Visitors can also explore a cultural village, enjoy traditional music and dance performances, and sample local Ankole cuisine. It''s an excellent stop for travelers exploring western Uganda''s national parks.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/b3/ee/fa/igongo-cultural-centre.jpg?w=700&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-0.528,"lng":30.697}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-18',
    'Green Equator Masaka Rd (Kayabwe)',
    'Uganda',
    'Attraction',
    'A popular and symbolic stop along the Kampala–Masaka highway, marking the equator line.',
    'A popular stop for travelers on the Kampala-Masaka highway, this landmark allows you to stand with one foot in the Northern Hemisphere and the other in the Southern. Visitors can watch fascinating water experiments demonstrating the Coriolis effect and shop for souvenirs from local artisans. It''s a fun and educational photo opportunity that marks a significant geographical point.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/a2/3f/58/equator-sign-in-uganda.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-0.00078,"lng":32.036}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-19',
    'Gallery Antique',
    'Uganda',
    'Attraction',
    'Specialises in Contemporary Art from Ugandan Artists, and tribal art sculptures.',
    'Gallery Antique Uganda specializes in contemporary art from mainly Ugandan artists, as well as tribal art sculptures, masks, old beadwork, and pottery. The collection has been accumulated over 25 years, offering a rich selection for enthusiasts, collectors, and dealers. The gallery provides a deep dive into the artistic heritage of the region.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/b3/fe/5d/the-interior-section.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":0.233,"lng":32.57}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-20',
    'Social Innovation Museum',
    'Uganda',
    'Attraction',
    'A unique place that will inspire you to want to change the world.',
    'The Social Innovation Museum is a unique place that will inspire you to want to change the world. It showcases how social innovations happen, and you can interact with social innovators from the Social Innovation Academy (SINA). You will see over 70 social enterprises and innovations, including buildings upcycled from plastic bottles. It''s a place of inspiration and creative problem-solving.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/9b/a7/df/social-innovation-museum.jpg?w=700&h=400&s=1',
    NULL,
    4.6,
    '{"lat":0.312,"lng":32.327}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-21',
    'Waterfall Cruises - Murchison Falls',
    'Uganda',
    'Attraction',
    'Iconic safari experience on the Victoria Nile leading to the base of the falls.',
    'Murchison Falls National Park offers one of Uganda’s most iconic safari experiences: a boat cruise on the Victoria Nile. The cruise takes you to the base of the mighty falls, where the river funnels through a narrow gorge. Along the way, you''ll have close encounters with hippos, crocodiles, elephants, and a variety of birdlife. It''s a photographer''s dream and a must-do activity in the park.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/89/58/8c/from-the-top.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":2.273,"lng":31.792}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-23',
    'Le Petit Village Hotel And Spa',
    'Uganda',
    'Hotel',
    'Boutique hotel with tranquil gardens, stylish rooms, and diverse dining options.',
    'A unique boutique hotel offering a tranquil escape with its lush gardens and stylish, African-inspired rooms. The hotel is a culinary destination in itself, featuring a Belgian restaurant, a Japanese restaurant, and a gourmet supermarket. Guests can unwind at the spa, gym, or pool, all within a beautifully landscaped and spacious compound.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/66/b7/56/hotel-le-petit-village.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":0.2982,"lng":32.5931}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-24',
    'K Hotels',
    'Uganda',
    'Hotel',
    'Hotel renowned for exceptional staff, spa, and sauna facilities with stunning views.',
    'K Hotels in Entebbe is renowned for its exceptional service and stunning views over Lake Victoria. It offers a luxurious experience with amenities like a pool, gym, spa, and sauna. Guests can enjoy comfortable rooms, a delicious complimentary breakfast, and unique entertainment, such as the Mongolian-themed night at the rooftop bar.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/c7/65/84/lake-suite.jpg?w=500&h=300&s=1',
    NULL,
    4.7,
    '{"lat":0.0528,"lng":32.4705}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-25',
    'Explorers Hub',
    'Uganda',
    'Hotel',
    'A unique guesthouse offering vegan and organic options, a wine shop, and a local craft shop.',
    'Explorers Hub is a charming and eco-conscious guesthouse in Entebbe, perfect for travelers seeking a more intimate and sustainable stay. It stands out for its restaurant offering vegan and organic options, an on-site wine shop, and a craft shop featuring locally made African products. It provides a cozy and thoughtful experience for guests.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/a7/15/9e/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":0.057,"lng":32.462}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-26',
    'Speke Hotel',
    'Uganda',
    'Hotel',
    'Centrally located hotel in Kampala with easy access to attractions and businesses.',
    'One of Kampala''s oldest hotels, Speke Hotel offers a blend of colonial charm and modern comfort. Its central location provides easy access to business centers and attractions. The hotel is known for its quick check-in, helpful staff, comfortable rooms, diverse breakfast, and multiple dining options with open-air settings.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/fa/9e/40/img-20190607-104540-largejpg.jpg?w=500&h=-1&s=1',
    NULL,
    4.2,
    '{"lat":0.314,"lng":32.583}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-27',
    'Chobe Safari Lodge',
    'Uganda',
    'Hotel',
    'A breathtaking lodge in Murchison Falls National Park with incredible wildlife views.',
    'Located in Murchison Falls National Park, Chobe Safari Lodge offers a five-star luxury experience with breathtaking views of the Nile River. It''s a paradise for wildlife enthusiasts, with frequent sightings of hippos, elephants, and giraffes from the lodge itself. Guests praise the wonderful staff, lovely rooms, excellent food, and the stunning three-tiered swimming pool.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/4c/1b/a7/chobe-safari-lodge-uganda.jpg?w=500&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":2.27,"lng":31.96}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-28',
    'Hotel Golden Tulip Canaan Kampala',
    'Uganda',
    'Hotel',
    'Luxury hotel with exceptional staff, comfortable rooms, and excellent food.',
    'This luxury hotel offers exceptional service and comfort with views over the Kitante Golf Course. It features a pool, spa, and fitness center, making it a great choice for both leisure and business travelers. The comfortable rooms, excellent food, and proximity to the city center ensure a pleasant and convenient stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/e9/97/bc/buiding.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":0.306,"lng":32.593}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-29',
    'Kabira Country Club',
    'Uganda',
    'Hotel',
    'Tranquil hotel with serene grounds, spacious rooms, and varied dining options.',
    'A tranquil retreat set in a leafy Kampala suburb, Kabira Country Club offers serene grounds, spacious rooms, and a wealth of recreational facilities including a pool, gym, sauna, and tennis courts. It''s known for its varied dining options, from Indian to Mongolian cuisine, and a well-stocked bar, often with live music.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/35/52/3d/swimming-pool.jpg?w=500&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":0.344,"lng":32.602}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-30',
    'Hilton Garden Inn Kampala',
    'Uganda',
    'Hotel',
    'Modern hotel in Kampala near Acacia Mall, featuring spacious, well-equipped rooms.',
    'This modern hotel is strategically located in Kampala, near the vibrant Acacia Mall and numerous restaurants. It offers spacious, well-equipped rooms with complimentary WiFi and tea/coffee amenities. Guests can enjoy attentive service and a variety of dining options, making it a convenient and comfortable choice for travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/36/0a/d9/hilton-garden-inn-kampala.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":0.334,"lng":32.588}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-31',
    'Mweya Safari Lodge',
    'Uganda',
    'Hotel',
    'Scenic lodge on a peninsula in Queen Elizabeth National Park with stunning views.',
    'Perched on a scenic peninsula in Queen Elizabeth National Park, Mweya Safari Lodge offers unparalleled 360-degree views of the Kazinga Channel and Lake Edward. It''s an ideal spot for wildlife sightings right from the lodge, with boat tours on the channel being a major highlight. Guests can enjoy spacious rooms, a large pool, and nightly entertainment.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/01/e9/8b/c5/mweya-lodge-view-from.jpg?w=500&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-0.194,"lng":29.897}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-32',
    'Lake Victoria Serena Golf Resort & Spa',
    'Uganda',
    'Hotel',
    'A beautiful resort with spacious rooms, great service, and a stunning landscape.',
    'This beautiful resort on the shores of Lake Victoria combines the feel of a Tuscan village with the natural beauty of Uganda. It boasts a championship golf course, spacious rooms with elegant decor, a state-of-the-art spa, and a marina with a restaurant. The great service and stunning landscape make it a perfect luxury getaway.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/ab/fa/7b/caption.jpg?w=500&h=300&s=1',
    NULL,
    4.6,
    '{"lat":0.207,"lng":32.607}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-33',
    'Fairway Boutique Hotel',
    'Uganda',
    'Hotel',
    'Central hotel with well-designed rooms, lush gardens, and top-rated dining.',
    'Centrally located yet offering a peaceful retreat, Fairway Boutique Hotel is set amidst lush, green gardens. It features well-designed rooms, a relaxing poolside bar, and top-rated dining with diverse Asian Fusion cuisine. Its proximity to Kampala''s key attractions, malls, and restaurants makes it a convenient and enjoyable stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/a2/1a/c6/fairway-boutique-hotel.jpg?w=500&h=300&s=1',
    NULL,
    4.5,
    '{"lat":0.319,"lng":32.576}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-34',
    '2Friends Beach Hotel',
    'Uganda',
    'Hotel',
    'Lakeside hotel near the airport with comfortable rooms and a waterfront restaurant.',
    'Located on the shores of Lake Victoria and convenient to Entebbe airport, 2Friends Beach Hotel is an ideal spot for pre- or post-safari relaxation. It offers comfortable rooms, a small pool, and a bar. The waterfront restaurant is a highlight, serving great fresh fish with beautiful views of the lake.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/8d/66/21/exterior.jpg?w=500&h=300&s=1',
    NULL,
    4.4,
    '{"lat":0.052,"lng":32.457}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-35',
    'Humura Resorts',
    'Uganda',
    'Hotel',
    'Peaceful hotel in Kampala with spacious rooms, Ugandan-style decor, and a tranquil atmosphere.',
    'Humura Resorts provides a peaceful and tranquil atmosphere in a convenient Kampala location. The spacious rooms are decorated in a Ugandan style, and the hotel features a refreshing pool, a gym, and complimentary breakfast. It offers convenient access to city attractions while maintaining a serene environment for guests.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/e9/dc/a9/view-from-lounge.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":0.33,"lng":32.58}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-36',
    'Nyamunyonyi Lake Resort',
    'Uganda',
    'Hotel',
    'Serene resort boasting spacious rooms, exceptional hospitality, and stunning lake views.',
    'Situated on the beautiful Lake Bunyonyi, Nyamunyonyi Lake Resort is a serene getaway boasting spacious rooms and stunning lake views. Known for its exceptional hospitality, the resort offers a variety of activities, including boat cruises and zip-lining, making it an ideal destination for vacations or romantic honeymoons.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/75/73/6d/rooms-view-at-nyamunyonyi.jpg?w=500&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-1.272,"lng":29.989}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-37',
    'De Rain Eco Beach Resort',
    'Uganda',
    'Hotel',
    'Serene resort offering spacious rooms with lake views.',
    'De Rain Eco Beach Resort offers a serene lakeside experience with spacious rooms that provide beautiful views of the water. It is known for its excellent service, with personal attention from the owner, and serves delicious food at affordable prices. It''s an ideal spot for nature lovers and families looking for a peaceful retreat.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/2c/dd/62/super-king-size-bed.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":0.051,"lng":32.455}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-38',
    'Explorers River Camp',
    'Uganda',
    'Hotel',
    'Well-maintained camp with warm beds and essential amenities.',
    'Situated near the banks of the Nile, Explorers River Camp is a popular base for adventure seekers in Jinja. The camp is well-maintained, offering comfortable tented accommodations with warm beds and essential amenities. It''s a great spot for those participating in local festivals or exploring the adventure capital of East Africa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/ec/e6/66/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":0.525,"lng":33.153}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-39',
    'La Grande Hotel',
    'Uganda',
    'Hotel',
    'Hotel known for its warm welcome and helpful staff.',
    'La Grande Hotel is consistently praised for its warm, welcoming, and helpful staff who go above and beyond to ensure a pleasant stay. The service is often highlighted as a key feature, making guests feel valued and well-cared for from the moment they arrive.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/66/36/73/caption.jpg?w=500&h=300&s=1',
    NULL,
    4.2,
    '{"lat":0.441,"lng":33.204}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-40',
    'Latitude 0 Degrees Hotel',
    'Uganda',
    'Hotel',
    'Hilltop hotel with serene ambiance and stunning views.',
    'This luxury boutique hotel sits on a hilltop, offering a serene ambiance and stunning panoramic views of Kampala and Lake Victoria. It boasts exceptional African-inspired decor, a rooftop bar, two swimming pools, a gym, and spacious, beautifully designed rooms. It''s a true sanctuary of style and comfort.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/ac/ce/d8/latitude-0-degrees-hotel.jpg?w=500&h=300&s=1',
    NULL,
    4.9,
    '{"lat":0.287,"lng":32.582}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-41',
    'Forest Cottages',
    'Uganda',
    'Hotel',
    'Centrally located hotel with good food and Wi-Fi.',
    'Nestled in a tranquil, forested environment, Forest Cottages offers a peaceful escape while still being centrally located in Kampala. The grounds are beautiful and well-kept, and the restaurant serves good food. While the rooms are cozy, the hotel provides reliable Wi-Fi and a serene atmosphere.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/c1/63/3c/forest-cottages-front.jpg?w=500&h=-1&s=1',
    NULL,
    4,
    '{"lat":0.345,"lng":32.597}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-42',
    'Golf Course Hotel',
    'Uganda',
    'Hotel',
    'Hotel with exceptional staff and a unique revolving restaurant.',
    'Overlooking the Uganda Golf Club, this hotel is known for its exceptional staff who provide genuine warmth and dedication. A standout feature is its revolving restaurant on the top floor, offering panoramic views of the city. It''s a great choice for both business and leisure travelers looking for quality service and a unique dining experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/86/3a/8a/golf-course-hotel.jpg?w=500&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":0.32,"lng":32.591}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-43',
    'Kaazi Beach Resort',
    'Uganda',
    'Hotel',
    'Friendly beach resort suitable for large groups.',
    'Located near Kampala, Kaazi Beach Resort offers a beach-like atmosphere on the shores of Lake Victoria. The staff are known for their friendliness, and the resort is well-equipped to handle large groups. With an easy booking process, it''s a convenient option for events or a simple getaway from the city.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/89/43/6f/kaazi-beach-hotel.jpg?w=500&h=300&s=1',
    NULL,
    4.1,
    '{"lat":0.201,"lng":32.584}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-44',
    'Arcadia Suites',
    'Uganda',
    'Hotel',
    'Hotel offering spacious suites and reliable airport transfers.',
    'Arcadia Suites offers a home-away-from-home experience with its very spacious suites, which include a small kitchenette. The hotel is known for its reliability, offering safe and efficient airport transfers. Guests appreciate the great showers and in-room amenities like an iron and ironing board, making it ideal for longer stays.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ec/14/a3/arcadia-suites.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":0.325,"lng":32.594}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ug-45',
    'Buffalo Safari Lodge',
    'Uganda',
    'Hotel',
    'Safari lodge known for wildlife sightings and excellent service.',
    'Located near Queen Elizabeth National Park, Buffalo Safari Lodge offers an authentic safari experience with spacious cottages and exceptional service. The lodge is known for frequent wildlife sightings, including resident elephants. Guests can enjoy excellent food and relax by the infinity pool while taking in the sounds of the African bush.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/1d/c3/72/buffalo-safari-lodge.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-0.177,"lng":29.986}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-1',
    'Maasai Mara National Reserve',
    'Kenya',
    'Attraction',
    'Wildlife-rich safari destination encompassing the Big Five and the Great Migration, with opportunities for cultural experiences and diverse activities amidst stunning landscapes.',
    'The Maasai Mara is one of the most famous and important wildlife conservation and wilderness areas in Africa, world-renowned for its exceptional populations of lion, leopard, cheetah and African bush elephant. It also hosts the Great Migration, which secured it as one of the Seven Natural Wonders of Africa, and as one of the ten Wonders of the World. Visitors can also engage in cultural tours to nearby Maasai villages.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/5f/14/85/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-1.683,"lng":35.25}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-2',
    'Giraffe Manor',
    'Kenya',
    'Hotel',
    'An exclusive boutique hotel, famous for its resident Rothschild giraffes.',
    'Giraffe Manor is set in 12 acres of private land within 140 acres of indigenous forest in the Langata suburb of Nairobi. As one of Nairobi''s most iconic buildings, it offers an enchanting experience where resident Rothschild giraffes often poke their long necks into the windows in search of a treat. With its stately façade and elegant interior, it harks back to the 1930s when European visitors first enjoyed East African safaris.',
    'https://images.unsplash.com/photo-1594555249447-1f8e0143fa6f?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.9,
    '{"lat":-1.374,"lng":36.747}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-3',
    'Carnivore Kenya',
    'Kenya',
    'Restaurant',
    'An open-air restaurant famous for its nyama choma (roasted meat).',
    'Carnivore is a unique dining experience and a meat-lover''s paradise. The restaurant''s specialty is an all-you-can-eat meat buffet, featuring a wide variety of meats, including game like ostrich and crocodile, roasted on traditional Maasai swords over a huge charcoal pit. It is a must-visit for any foodie visiting Nairobi.',
    'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=2074&auto=format&fit=crop',
    NULL,
    4.7,
    '{"lat":-1.321,"lng":36.8}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-4',
    'Sheldrick Wildlife Trust',
    'Kenya',
    'Attraction',
    'Sheldrick Wildlife Trust (SWT) is a leader in African wildlife conservation. Through its Orphans'' Project, SWT has raised over 320 orphaned elephants and rhinos. When grown, each orphan is reintegrated.',
    'The Sheldrick Wildlife Trust operates the most successful orphan elephant rescue and rehabilitation program in the world. Visitors can watch the baby elephants enjoy their daily mud bath and milk feeding, and even adopt an elephant to support their care and conservation efforts. It''s a heartwarming and educational experience for all ages.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/6f/f2/74/elephants-love-to-play.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-1.332,"lng":36.793}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-5',
    'Nairobi National Park',
    'Kenya',
    'Attraction',
    'Wildlife sanctuary adjacent to urban skyline with sightings of rhinos, lions, and giraffes. Hosts a rhinoceros conservation program and provides a condensed safari experience.',
    'Unique for being the only national park within a capital city''s limits, Nairobi National Park offers a classic African safari experience against a backdrop of city skyscrapers. It boasts a healthy population of rhinos, lions, giraffes, zebras, and more. It''s an accessible way to see incredible wildlife without venturing far from Nairobi.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/69/4e/00/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-1.362,"lng":36.833}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-6',
    'Giraffe Centre',
    'Kenya',
    'Attraction',
    'Engage with Rothschild giraffes on an elevated walkway, feeding and learning about their conservation in a serene setting near Giraffe Manor.',
    'The Giraffe Centre is a conservation and education center dedicated to protecting the endangered Rothschild''s giraffe. Visitors can get up close and personal with these gentle giants from a raised platform, feeding them pellets by hand. It''s a fun and interactive experience that also supports vital conservation work.',
    'https://images.unsplash.com/photo-1594555249447-1f8e0143fa6f?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.6,
    '{"lat":-1.37,"lng":36.749}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-7',
    'Diani Beach',
    'Kenya',
    'Attraction',
    'Pristine white sandy beach fringed with palm trees, featuring warm waters and diverse sea life. Enjoy camel rides, snorkeling, and local crafts amidst a vibrant coastal scene.',
    'Diani Beach is a picture-perfect tropical paradise on the Kenyan coast. Its flawless white sands, clear turquoise waters, and lush palm trees make it an ideal spot for relaxation and water sports. Visitors can enjoy snorkeling in the coral reefs, camel rides along the shore, and exploring the vibrant local culture.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/6e/09/d6/diani-beach.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-4.321,"lng":39.576}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-8',
    'Watamu Beach',
    'Kenya',
    'Attraction',
    'Sun-kissed beach presenting a fusion of natural beauty, tranquil stretches for romantic walks, and vibrant nightlife to the rhythm of African beats. Features water sports and enchanting sunsets.',
    'Watamu Beach is a stunning stretch of coastline known for its soft white sands and crystal-clear waters, protected as part of the Watamu Marine National Park. It''s a hub for snorkeling, diving, and other water sports, with vibrant coral reefs just offshore. The laid-back atmosphere and beautiful scenery make it a favorite for travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/63/14/fa/10-minuti-agli-isolotti.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-3.351,"lng":40.016}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-9',
    'Karura Forest',
    'Kenya',
    'Attraction',
    'Tranquil forest with diverse trails for cycling, walking, and birdwatching, featuring caves, waterfalls, and scenic spots amidst a biodiverse landscape.',
    'Karura Forest is an urban oasis in Nairobi, offering a peaceful escape from the city bustle. It features well-marked trails for walking, jogging, and cycling, as well as beautiful waterfalls, caves, and picnic spots. The forest is home to a variety of wildlife, including monkeys and numerous bird species, making it a great spot for nature lovers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/ab/51/54/gate-a-karura-forest.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.246,"lng":36.833}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-10',
    'Hell''s Gate National Park',
    'Kenya',
    'Attraction',
    'National park with biking, hiking, rock climbing, and thermal spas amidst stunning geological wonders and diverse wildlife. Enjoy a day of natural exploration and relaxation.',
    'Named for its intense geothermal activity, Hell''s Gate National Park offers dramatic scenery with towering cliffs, water-gouged gorges, and stark rock towers. It''s one of the few Kenyan parks where you can walk or cycle unguided, offering a unique and active safari experience. Visitors can also enjoy rock climbing and a visit to a natural spa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/4a/b4/1a/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-0.893,"lng":36.315}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-11',
    'Karen Blixen Museum',
    'Kenya',
    'Attraction',
    'Historic farmhouse nestled in Ngong Hills, offering guided tours that delve into the life of a famed literary figure, set amid European-style gardens with panoramic views.',
    'Once the farmhouse of Danish author Karen Blixen, famed for her book ''Out of Africa,'' this museum provides a glimpse into colonial life in Kenya. The well-preserved house and beautiful gardens offer a tranquil atmosphere, and guided tours share fascinating stories about Blixen''s life and the history of the property.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/ca/28/79/provided-by-museums-of.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-1.351,"lng":36.709}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-12',
    'Mount Kenya',
    'Kenya',
    'Attraction',
    'Mount Kenya presents a challenging trek through diverse terrains and rich wildlife, culminating in panoramic summit views. The Sirimon route delights with ascending vistas and scenic descents.',
    'Africa''s second-highest peak, Mount Kenya is a UNESCO World Heritage Site offering breathtaking scenery and a challenging trek for adventurers. The mountain''s slopes are cloaked in forest, bamboo, and moorland, hosting a variety of wildlife. Reaching the summit at sunrise provides an unforgettable panoramic view.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/b9/18/38/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-0.152,"lng":37.308}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-13',
    'Lake Nakuru',
    'Kenya',
    'Attraction',
    'Tranquil wildlife sanctuary within the Great Rift Valley, featuring diverse species like rhinos and flamingos amid serene landscapes and birdwatching havens.',
    'Lake Nakuru National Park is famous for its vast flocks of flamingos that fringe its shores, creating a stunning pink spectacle. The park is also a sanctuary for both black and white rhinos, and offers excellent opportunities to see leopards, lions, and giraffes. The diverse landscapes range from woodland to rocky cliffs.',
    'https://images.unsplash.com/photo-1540845769673-458a6dbaa612?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.6,
    '{"lat":-0.37,"lng":36.083}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-14',
    'Village Market',
    'Kenya',
    'Attraction',
    'High-end shopping destination in the diplomatic district with a mix of local and African brands, family-friendly activities, and a relaxed vibe. Hosts the Masai Market weekly.',
    'The Village Market is a large shopping, recreation, and entertainment complex in Nairobi. It features over 150 outlets, a variety of restaurants, and family-friendly activities like bowling and a trampoline park. It also hosts a vibrant Masai Market on Fridays, offering a wide array of local crafts and souvenirs.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/f4/36/79/experience-amazing-food.jpg?w=500&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-1.229,"lng":36.809}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-15',
    'Marafa-Hells Kitchen',
    'Kenya',
    'Attraction',
    'Geological wonder with vibrant sandstone cliffs and gorges, renowned for its stunning sunset views. Local legends and hiking routes enrich the visitor''s journey.',
    'Marafa Depression, also known as Hell''s Kitchen, is a unique sandstone gorge with spectacular, multi-colored rock formations. Local legends tell stories of its creation, adding a mystical element to the landscape. The gorge is best visited at sunset, when the vibrant colors are at their most brilliant. Guided walks are available to explore its depths.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/71/c8/fc/hell-s-kitchen-marafa.jpg?w=500&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-3,"lng":39.983}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-16',
    'Haller Park',
    'Kenya',
    'Attraction',
    'Interactive wildlife encounters in a natural setting with trails, featuring giraffe feeding, a crocodile section, and educational tours.',
    'Haller Park is a former cement quarry that has been transformed into a thriving nature reserve. It showcases a successful ecological restoration project and is home to a variety of wildlife, including giraffes, hippos, and giant tortoises. Visitors can enjoy feeding the giraffes, exploring the trails, and learning about conservation.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/24/7a/33/a-hippo-tries-to-beat.jpg?w=500&h=500&s=1',
    NULL,
    4.5,
    '{"lat":-4.004,"lng":39.715}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-17',
    'Nyali Beach',
    'Kenya',
    'Attraction',
    'Pristine sandy beach in a lively neighborhood, ideal for swimming and snorkeling in the Indian Ocean. Enjoy local vendors and the picturesque sunset on a boat tour.',
    'Nyali Beach is a beautiful stretch of white sand located just north of Mombasa. It''s a popular spot for both locals and tourists, offering a range of activities from swimming and sunbathing to snorkeling and surfing. The beach is lined with hotels and restaurants, providing a lively and convenient coastal experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/61/63/fe/or-a-balcony-with-pool.jpg?w=200&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-4.041,"lng":39.704}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-18',
    'Ol Pejeta Conservancy',
    'Kenya',
    'Attraction',
    'Wildlife conservancy with a focus on rhino conservation, providing game drives, lion tracking, and rare animal encounters. Features a chimp sanctuary and bush walks.',
    'Ol Pejeta Conservancy is a leading wildlife conservation area in Laikipia, famous for being the largest black rhino sanctuary in East Africa. It is also home to the last two northern white rhinos in the world. Visitors can enjoy a variety of activities, including game drives, lion tracking, and visiting the Sweetwaters Chimpanzee Sanctuary.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/b4/3e/aa/herd-of-elephants-enjoying.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":0,"lng":36.966}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-19',
    'Fort Jesus Museum',
    'Kenya',
    'Attraction',
    'Fort Jesus is Mombasa’s most popular tourist attraction. The fort, located along the coastline near the Old Town, is a monumental piece of architecture that was built in the 16th century by the Portuguese.',
    'A UNESCO World Heritage site, Fort Jesus is a monumental piece of 16th-century Portuguese military architecture in Mombasa. The fort''s impressive structure and rich history offer a fascinating glimpse into the coastal region''s past. The on-site museum displays artifacts from various historical periods, including the Omani Arabs and the British.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/4a/a6/61/s-w-r-s-h-s-h-s-ry.jpg?w=500&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-4.062,"lng":39.679}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-20',
    'Watamu National Marine Park',
    'Kenya',
    'Attraction',
    'Tropical marine sanctuary with pristine beaches and clear waters for snorkeling. Enjoy diverse aquatic life, from colorful fish to playful dolphins, and participate in turtle releases.',
    'Watamu Marine National Park is one of Africa''s oldest marine parks, renowned for its rich coral gardens and diverse marine life. It''s a paradise for snorkelers and divers, with opportunities to see colorful fish, sea turtles, and dolphins. The park''s pristine beaches and clear waters make it an idyllic coastal destination.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/38/5a/4b/enjoy-your-vacation-with.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-3.361,"lng":40.015}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-21',
    'Mida Creek',
    'Kenya',
    'Attraction',
    'The Watamu Marine National Park and Reserve was established in 1968, making it, together with the Malindi Marine National Park, one of the oldest marine parks in Africa. In 1979',
    'Mida Creek is a broadwater tidal creek surrounded by extensive mangrove forests and lined with palm trees. It''s a recognized Important Bird Area, attracting a variety of migratory birds. Visitors can enjoy boat trips, kayaking, and stand-up paddleboarding, as well as exploring the local Giriama community''s culture.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/0d/6c/29/mida-mangrove-channels.jpg?w=400&h=300&s=1',
    NULL,
    4.5,
    '{"lat":-3.366,"lng":39.95}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-22',
    'Fairview Coffee Estate',
    'Kenya',
    'Attraction',
    'Coffee estate tour through a lush farm, with insights into coffee production from plant to cup, complete with tastings and picturesque garden views.',
    'Fairview Coffee Estate offers an immersive ''bean to cup'' tour, guiding visitors through the process of coffee cultivation and production. The tour concludes with a coffee tasting session, set against the backdrop of the beautiful estate. It''s an educational and aromatic experience for coffee lovers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/db/e8/c0/home-to-the-worlds-finest.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-1.096,"lng":37.034}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-23',
    'Ngong Hills',
    'Kenya',
    'Attraction',
    'Scenic hillside destination for hiking, ziplining, and picnics, with panoramic views of the Rift Valley and unique windmill landscape. Ideal for day trips and outdoor adventures.',
    'The Ngong Hills are a series of peaks overlooking the Great Rift Valley, offering stunning panoramic views. They are a popular destination for hiking, picnicking, and enjoying the outdoors. The hills are also known for their wind farm, which adds a unique element to the landscape. The area is rich in history and was featured in the book ''Out of Africa''.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/fc/88/15/ngong-hills-7-hills-3.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-1.399,"lng":36.641}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-24',
    'Lake Naivasha',
    'Kenya',
    'Attraction',
    'Scenic wildlife sanctuary with action-packed landscapes, tranquil boat rides, and diverse birdlife. Ideal for nature enthusiasts and adventure seekers. Advance booking recommended.',
    'Lake Naivasha is a beautiful freshwater lake in the Great Rift Valley, known for its high population of hippos and diverse birdlife. Visitors can take boat trips to see the wildlife up close and visit Crescent Island Game Sanctuary, where you can walk among giraffes, zebras, and wildebeest.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/5e/2e/c4/boat-rides-and-quad-biking.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-0.776,"lng":36.357}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-25',
    'Karen Blixen Coffee Garden',
    'Kenya',
    'Restaurant',
    'Karen Blixen Coffee Garden & Cottages is set in what used to be Karen Blixen’s old coffee farm estate, in the heart of Karen in beautiful gardens and a peaceful suburb approximately 20 miles from.',
    'Set in the historic former coffee estate of Karen Blixen, this restaurant offers a tranquil dining experience in beautiful gardens. The menu features a mix of international and local cuisine, and the peaceful atmosphere makes it a perfect spot for a relaxing meal. It''s a great place to unwind after visiting the nearby Karen Blixen Museum.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/23/a1/2c/hattons-lounge.jpg?w=500&h=400&s=1',
    NULL,
    4.3,
    '{"lat":-1.35,"lng":36.709}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-26',
    'The Hub Karen',
    'Kenya',
    'Attraction',
    'Shopping destination providing a variety of retail outlets, a food court, and an art caffe, set within a bustling mall atmosphere. Includes a centralized customer support center.',
    'The Hub Karen is a premier shopping mall in Nairobi, offering a wide range of retail stores, restaurants, and entertainment options. It''s a modern and spacious mall with a family-friendly atmosphere, featuring a large food court, a cinema, and various activities for all ages. It''s a popular spot for both shopping and socializing.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/1f/2f/56/the-hub-karen-mall.jpg?w=500&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-1.328,"lng":36.721}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-27',
    'Amboseli National Park',
    'Kenya',
    'Attraction',
    'Safari experience with close wildlife encounters, including large elephant herds and diverse birdlife, set against the backdrop of Mount Kilimanjaro. Observation Hill provides panoramic views.',
    'Amboseli National Park is famous for its large herds of elephants and stunning views of Mount Kilimanjaro, just across the border in Tanzania. The park''s open plains and wetlands make for excellent wildlife viewing, with opportunities to see lions, cheetahs, and a wide variety of birdlife. Observation Hill offers breathtaking panoramic views of the park.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/02/14/aa/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-2.645,"lng":37.255}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-28',
    'Mount Longonot National Park',
    'Kenya',
    'Attraction',
    'Challenging hike through Great Rift Valley rewards with panoramic vistas of the crater and diverse flora and fauna. Ideal for nature and outdoor activity enthusiasts.',
    'Mount Longonot is a dormant volcano in the Great Rift Valley, offering a challenging but rewarding hike to its crater rim. The trek provides stunning views of the surrounding landscape and the crater itself, which is covered in forest. The park is also home to a variety of wildlife, including zebra, giraffe, and buffalo.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/9d/91/2d/mount-longonot-is-a-very.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-0.914,"lng":36.456}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-29',
    'Kiambethu Farm',
    'Kenya',
    'Attraction',
    'Come and enjoy a lunch time tour of the farm with Fiona... Arrive at 11am and over a cup of tea or coffee the history of the farm and process of making tea is informally explained.',
    'Kiambethu Farm offers a fascinating insight into life on a settler farm and the tea-making process. The tour includes a walk through the indigenous forest, an explanation of tea cultivation, and a delicious three-course lunch served on the beautiful farmhouse lawn. It''s a peaceful and educational day trip from Nairobi.',
    'https://images.unsplash.com/photo-1668875438994-4388304392ef?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.5,
    '{"lat":-1.139,"lng":36.786}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-1',
    'Palacina The Residence & The Suites',
    'Kenya',
    'Hotel',
    'Tranquil boutique hotel featuring spacious, apartment-style rooms with full kitchens, lush gardens, indoor heated pool, gym, sauna, and an on-site restaurant offering fresh, varied cuisine.',
    'A tranquil boutique hotel in Nairobi, Palacina offers spacious, apartment-style rooms complete with full kitchens, making it ideal for both short and long stays. Set amidst lush gardens, it features an indoor heated pool, a gym, a sauna, and an on-site restaurant known for its fresh and varied cuisine. It provides a serene and luxurious home away from home.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/2f/20/d6/pool.jpg?w=500&h=300&s=1',
    NULL,
    4.8,
    '{"lat":-1.297,"lng":36.792}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-2',
    'Argyle Grand Hotel Nairobi',
    'Kenya',
    'Hotel',
    'Exceptional dining, convenient location near airport, and complimentary transfers. Renowned for hospitality and accessibility. Ideal for stopovers. Great food variety. Excellent service and staff coordination.',
    'Conveniently located near Jomo Kenyatta International Airport, Argyle Grand Hotel is an ideal choice for travelers. It is renowned for its exceptional dining, warm hospitality, and complimentary airport transfers. The hotel offers a great variety of food, excellent service, and is a perfect, accessible option for stopovers in Nairobi.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/da/7a/b8/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.32,"lng":36.853}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-3',
    'Eka Hotel Nairobi',
    'Kenya',
    'Hotel',
    'Modern hotel near airports and national park. Offers spacious rooms, good food variety, and professional service. Quiet despite main road location.',
    'Eka Hotel is a modern hotel strategically located near both the international airport and Nairobi National Park. It offers spacious rooms, a good variety of food, and professional service. Despite its proximity to a main road, the hotel maintains a quiet atmosphere, making it a comfortable base for exploring Nairobi.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/1d/43/da/pool-view.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.325,"lng":36.845}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-4',
    'Best Western Plus Meridian Hotel',
    'Kenya',
    'Hotel',
    'Centrally located hotel in Nairobi CBD with serene ambiance and excellent value. Features rooftop pool with city views, bar, and massage services. Renowned for outstanding service, conferencing facilities, and lively atmosphere. Ideal for business and leisure travelers.',
    'This centrally located hotel in Nairobi''s CBD offers a serene ambiance and excellent value. A highlight is the rooftop pool with fantastic city views, a bar, and massage services. Renowned for outstanding service and good conferencing facilities, it provides a lively yet comfortable atmosphere for both business and leisure travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/b3/2f/d3/lobby.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.281,"lng":36.819}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-5',
    'Novotel Nairobi Westlands',
    'Kenya',
    'Hotel',
    'Highly recommended for its breathtaking views and delicious Indian cuisine. Noteworthy for its beautiful ambience, top-notch service, and unique menu.',
    'Located in the vibrant Westlands district, Novotel is highly recommended for its breathtaking city views and beautiful ambiance. It is particularly noted for its delicious Indian cuisine and unique menu, all delivered with top-notch service. It''s a stylish and comfortable choice for travelers looking for a modern hotel experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/7d/91/42/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-1.267,"lng":36.807}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-6',
    'Pax Manor Muthaiga',
    'Kenya',
    'Hotel',
    'Elegant hotel with serene views, lush gardens, and Karura Forest backdrop. Features spacious lounges, infinity pool, restaurant with scenic dining, and top-tier service. Ideal for relaxation and unwinding.',
    'An elegant and serene hotel with stunning views and a backdrop of the lush Karura Forest. Pax Manor features spacious lounges, an infinity pool, and a restaurant with scenic dining. Known for its top-tier service and tranquil atmosphere, it''s an ideal place for relaxation and unwinding in a luxurious setting.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2f/1b/ba/13/infinity-pool.jpg?w=500&h=300&s=1',
    NULL,
    4.9,
    '{"lat":-1.248,"lng":36.833}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-7',
    'PrideInn Azure Hotel Nairobi Westlands',
    'Kenya',
    'Hotel',
    'Quiet hotel with warm, welcoming atmosphere and well-equipped rooms. Excellent service, fresh Indian cuisine, and vegetarian options. Convenient location with top-notch facilities and conference spaces.',
    'This quiet hotel offers a warm and welcoming atmosphere with well-equipped rooms. It is praised for its excellent service and delicious, fresh Indian cuisine with good vegetarian options. With a convenient location and top-notch facilities, including conference spaces, it serves both leisure and business travelers well.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/a8/d4/d8/hotel-front.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.266,"lng":36.805}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-8',
    'ibis Styles Hotel Westlands Nairobi',
    'Kenya',
    'Hotel',
    'Modern hotel with a welcoming ambiance, exceptional service, and a convenient location. Highlights include a rooftop bar with stunning views, delicious food with standout breakfasts, and well-designed, clean rooms. Friendly staff go above and beyond to ensure a memorable stay.',
    'A modern hotel with a welcoming ambiance, exceptional service, and a convenient Westlands location. Highlights include a fantastic rooftop bar with stunning views, delicious food with standout breakfasts, and well-designed, clean rooms. The friendly staff consistently go above and beyond to ensure a memorable stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/67/06/6e/sun-downer-rear-view.jpg?w=500&h=300&s=1',
    NULL,
    4.6,
    '{"lat":-1.268,"lng":36.808}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-9',
    'Severin Sea Lodge',
    'Kenya',
    'Hotel',
    'Beachfront hotel with traditional Swahili design, lush gardens, and ocean views. Features include dining with fresh, local cuisine, glass-bottom boat rides, a swing bar, and romantic dining options.',
    'This beachfront hotel on the Kenyan coast features traditional Swahili design, lush tropical gardens, and beautiful ocean views. Guests can enjoy dining on fresh, local cuisine, take glass-bottom boat rides, relax at the unique swing bar, or arrange for romantic private dining experiences.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/98/21/cd/severin-sea-lodge.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-4.012,"lng":39.721}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-10',
    'Villa Rosa Kempinski Nairobi',
    'Kenya',
    'Hotel',
    'Elegant, luxurious hotel with exceptional service, a standout breakfast buffet, and modern amenities. Features spacious rooms, top-notch conference facilities, and a relaxing bar with great food and drinks. Convenient location and world-class hospitality create a memorable stay.',
    'An elegant and luxurious hotel offering exceptional service, a standout breakfast buffet, and modern amenities. It features spacious rooms, top-notch conference facilities, and a relaxing bar with great food and drinks. The convenient location and world-class hospitality ensure a memorable stay for all guests.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/d1/b9/ef/villa-rosa-kempinski.jpg?w=500&h=-1&s=1',
    NULL,
    4.9,
    '{"lat":-1.272,"lng":36.809}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-11',
    'Movenpick Hotel & Residences Nairobi',
    'Kenya',
    'Hotel',
    'Revolving restaurant with 360° views of Nairobi, known for its exceptional service, tranquil ambiance, and top-tier dining. Features delicious, well-crafted meals, amazing desserts, and generous portions. Perfect for special occasions, offering memorable experiences and breathtaking scenery.',
    'This hotel is famous for its revolving restaurant offering 360° views of Nairobi. It''s known for exceptional service, a tranquil ambiance, and top-tier dining with delicious, well-crafted meals and generous portions. It''s a perfect spot for special occasions, promising a memorable experience with breathtaking scenery.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/df/1c/44/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.267,"lng":36.802}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-12',
    'Diani Sea Resort',
    'Kenya',
    'Hotel',
    'Beachfront resort with spacious, air-conditioned rooms, large pool, and peaceful atmosphere. Offers diverse dining options, nightly entertainment, and proximity to shopping and local attractions.',
    'A beachfront resort offering spacious, air-conditioned rooms, a large pool, and a peaceful atmosphere. Guests can enjoy diverse dining options, nightly entertainment, and easy access to local shopping and attractions, making it a great choice for a relaxing beach holiday.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/56/73/e6/diani-sea-resort.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-4.316,"lng":39.584}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-13',
    'Voyager Beach Resort',
    'Kenya',
    'Hotel',
    'Nautical-themed resort on the Indian Ocean with luxurious rooms and beach views. Multiple pools, including a serene Relax Pool and a fun pool with activities. Exceptional Italian restaurant, Smugglers Cove dining, and Lookout Bar with stunning views. Ideal for relaxation and entertainment.',
    'A nautical-themed resort on the Indian Ocean with luxurious rooms and beautiful beach views. It features multiple pools, including a serene "Relax Pool" and a fun pool with activities. An exceptional Italian restaurant, Smugglers Cove dining, and the Lookout Bar with stunning views make it ideal for relaxation and entertainment.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/9b/88/5c/voyager-beach-resort.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-4.015,"lng":39.719}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-14',
    'Southern Palms Beach Resort',
    'Kenya',
    'Hotel',
    'Beachfront resort with multiple pools, water activities, diverse dining options including Indian cuisine, a snack bar, and an Italian restaurant. Offers all-inclusive, full board, and half board plans.',
    'This Diani beachfront resort features multiple pools, water activities, and diverse dining options including Indian cuisine, a snack bar, and an Italian restaurant. Guests can choose from all-inclusive, full board, and half board plans to suit their needs, all while enjoying the beautiful coastal setting.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/72/4b/14/southern-palms-beach.jpg?w=500&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-4.318,"lng":39.582}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-15',
    'Nairobi Serena Hotel',
    'Kenya',
    'Hotel',
    'Elegant hotel in central Nairobi with African-inspired decor, spacious rooms, spa, pool, and gym. Renowned for its dining, breakfast buffet, and attentive service. Ideal for city stays or safari trips.',
    'An elegant hotel in central Nairobi, this Serena property features African-inspired decor, spacious rooms, a full-service spa, a pool, and a gym. It is renowned for its excellent dining, impressive breakfast buffet, and attentive service, making it an ideal choice for city stays or as a base for safari trips.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/19/bd/3a/the-pool-area-by-night.jpg?w=500&h=300&s=1',
    NULL,
    4.7,
    '{"lat":-1.288,"lng":36.814}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-16',
    'Diani Reef Beach Resort & Spa',
    'Kenya',
    'Hotel',
    'Family-friendly resort with a variety of kids'' activities, a large pool, and lively evening entertainment. Features a diverse breakfast and dinner menu with healthy options. Attentive staff, excellent customer care, and a la carte dining with generous portions enhance the experience.',
    'This family-friendly resort on Diani Beach offers a variety of kids'' activities, a large pool, and lively evening entertainment. The dining is diverse, with both buffet and à la carte options, and attentive staff ensure excellent customer care. It''s a perfect destination for a fun-filled family holiday.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/95/4b/84/diani-reef-beach-resort.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-4.303,"lng":39.593}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-17',
    'Medina Palms',
    'Kenya',
    'Hotel',
    'Beachfront hotel with spacious villa-style apartments, rooftop lounges, hot tubs, multiple pools, beach bar, and well-stocked kitchens. Features scenic gardens, stylish rooms, and dining options.',
    'A luxurious beachfront hotel in Watamu, Medina Palms offers spacious villa-style apartments with rooftop lounges and hot tubs. Guests can enjoy multiple pools, a beach bar, and well-stocked kitchens. The resort is set in scenic gardens, providing a stylish and comfortable base for a coastal holiday.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/28/1d/dc/medina-palms.jpg?w=500&h=-1&s=1',
    NULL,
    4.9,
    '{"lat":-3.355,"lng":40.016}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-18',
    'Leopard Beach Resort & Spa',
    'Kenya',
    'Hotel',
    'Family-friendly resort with private beach, multiple pools, and ocean views. Offers kids'' activities, spa, and private pool villas. Varied dining options with buffet and à la carte menus.',
    'This family-friendly resort on Diani Beach boasts a private beach, multiple pools, and stunning ocean views. It offers a range of activities for kids, a full-service spa, and luxurious private pool villas. The varied dining options include both buffet and à la carte menus, catering to all tastes.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/d3/4f/c5/leopard-beach-resort.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-4.309,"lng":39.589}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-19',
    'Sarova Whitesands Beach Resort And Spa',
    'Kenya',
    'Hotel',
    'Beachfront resort with ocean access, multiple dining options, a serene spa, and a kids club with diverse activities. Highlights include fresh seafood, ocean-view bars, and a welcoming, family-friendly atmosphere.',
    'A welcoming beachfront resort with direct ocean access, Sarova Whitesands offers multiple dining options, a serene spa, and a kids club with diverse activities. Highlights include fresh seafood, ocean-view bars, and a family-friendly atmosphere, making it a perfect coastal getaway.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/12/ad/0c/sarova-whitesands-beach.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-4.01,"lng":39.722}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-20',
    'Diani Sea Lodge',
    'Kenya',
    'Hotel',
    'Beachfront resort with spacious, air-conditioned rooms and family-friendly amenities. Features a snack bar, diverse dining options, and activities for all ages. Ideal base for safari excursions.',
    'This beachfront resort offers spacious, air-conditioned rooms and family-friendly amenities. It features a snack bar, diverse dining options, and a range of activities for all ages. It also serves as an ideal base for safari excursions, combining a beach holiday with wildlife adventures.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/50/a9/79/diani-sea-lodge.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-4.316,"lng":39.584}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-21',
    'Radisson Blu Hotel & Residence, Nairobi Arboretum',
    'Kenya',
    'Hotel',
    'Stylish and beautifully designed hotel with a relaxing vibe and peaceful surroundings. Exceptional service, world-class hospitality, and amazing food with diverse options. The Fire Lake restaurant offers a vibrant atmosphere with live music, though some find the band a bit loud.',
    'A stylish and beautifully designed hotel with a relaxing vibe and peaceful surroundings next to the Nairobi Arboretum. It offers exceptional service, world-class hospitality, and amazing food with diverse options. The Fire Lake restaurant provides a vibrant atmosphere with live music, making for an enjoyable evening.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/4d/c4/7b/radisson-blu-hotel-residence.jpg?w=500&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-1.282,"lng":36.799}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-22',
    'Diamonds Leisure Beach & Golf Resort',
    'Kenya',
    'Hotel',
    'Resort with stunning ocean views, a beautiful beach, and spacious rooms. Multiple pools, great dining options, and lively ambiance. Well-equipped conference facilities and various activities for relaxation.',
    'This Diani resort offers stunning ocean views, a beautiful beach, and spacious rooms. Guests can enjoy multiple pools, great dining options, and a lively ambiance. With well-equipped conference facilities and various activities for relaxation, it caters to both leisure and business travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/d8/39/24/leisure-lodge-beach-and.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-4.288,"lng":39.605}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-23',
    'The Fairview',
    'Kenya',
    'Hotel',
    'Colonial-style hotel in Nairobi with lush gardens, a large tranquil pool, multiple dining options, and a varied breakfast buffet. Relaxing oasis with excellent internet and peaceful ambiance.',
    'A colonial-style hotel in Nairobi, The Fairview is set in lush gardens, creating a relaxing oasis in the city. It features a large tranquil pool, multiple dining options, and a varied breakfast buffet. With excellent internet and a peaceful ambiance, it''s a great choice for a comfortable stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/2b/a4/60/fairview-hotel.jpg?w=500&h=300&s=1',
    NULL,
    4.5,
    '{"lat":-1.291,"lng":36.808}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-24',
    'The Social House Nairobi, A Preferred Lifestyle Hotel',
    'Kenya',
    'Hotel',
    'Chic hotel with a cozy ambiance, exceptional service, and outstanding dining options. Praised for its attentive housekeeping, clean and well-stocked rooms, and vibrant nightlife. Convenient yet quiet location with multiple restaurants and entertainment, perfect for a relaxing yet lively stay.',
    'A chic hotel with a cozy ambiance, exceptional service, and outstanding dining options. It is praised for its attentive housekeeping and clean, well-stocked rooms. With a convenient yet quiet location and vibrant nightlife options, it''s perfect for a relaxing yet lively stay in Nairobi.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/7d/3d/c7/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.9,
    '{"lat":-1.258,"lng":36.786}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-25',
    'Serena Beach Resort & Spa',
    'Kenya',
    'Hotel',
    'Beachfront resort with Swahili-inspired decor, lush gardens, ocean-view rooms, and diverse dining options, including fresh seafood and live music. Offers poolside bar, water sports, and cultural tours.',
    'This beachfront resort features beautiful Swahili-inspired decor, lush gardens, and ocean-view rooms. Guests can enjoy diverse dining options, including fresh seafood with live music, a poolside bar, water sports, and cultural tours, all within a stunning coastal setting.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/ac/26/13/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-4.018,"lng":39.718}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-26',
    'Englishpoint Marina',
    'Kenya',
    'Hotel',
    'Modern beachfront hotel with luxurious ocean-view suites, clean spacious rooms, gym, spa, and serene pool. Features top-notch dining, including an authentic Indian restaurant, and a welcoming lounge bar.',
    'A modern beachfront hotel offering luxurious ocean-view suites, clean spacious rooms, a gym, spa, and a serene pool. It features top-notch dining, including an authentic Indian restaurant, and a welcoming lounge bar, providing a sophisticated coastal experience in Mombasa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/b3/36/eb/hotel-englishpoint-spa.jpg?w=500&h=300&s=1',
    NULL,
    4.6,
    '{"lat":-4.048,"lng":39.673}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'ke-hotel-27',
    'The Panari Hotel',
    'Kenya',
    'Hotel',
    'Hotel with stunning views of Nairobi National Park, spacious rooms, rooftop lounge, pool, spa, and ice skating. Eco-friendly atmosphere, excellent service, family-friendly. Convenient to airport.',
    'This hotel offers stunning views of Nairobi National Park, spacious rooms, a rooftop lounge, a pool, and a spa. A unique feature is the on-site ice skating rink. With an eco-friendly atmosphere, excellent service, and family-friendly amenities, it''s a convenient and entertaining choice near the airport.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/f5/9a/36/the-panari-hotel.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.326,"lng":36.852}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-1',
    'Serengeti National Park',
    'Tanzania',
    'Attraction',
    'A vast ecosystem famous for its massive annual migration of wildebeest and zebra.',
    'The Serengeti National Park is a Tanzanian national park in the Serengeti ecosystem in the Mara and Simiyu regions. It is famous for its annual migration of over 1.5 million white-bearded (or brindled) wildebeest and 250,000 zebra and for its numerous Nile crocodile and honey badger. The endless plains of the Serengeti are the epitome of the African safari experience.',
    'https://images.unsplash.com/photo-1715945935208-3d3f6d7ac2f3?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.9,
    '{"lat":-2.333,"lng":34.833}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-2',
    'The Highlands',
    'Tanzania',
    'Hotel',
    'A unique high-altitude camp on the slopes of the Olmoti volcano.',
    'Set on the edge of the mountain forest hugging the Olmoti volcano to the north of Ngorongoro Crater, The Highlands has sweeping views right across the Serengeti. The eight canvas-and-glass domed suites are a clever blend of cutting-edge design and traditional Maasai-inspired furnishings. It offers a range of activities, from crater floor game drives to community and cultural visits and hiking, providing a unique and luxurious safari experience.',
    'https://images.unsplash.com/photo-1678461048112-2bb5298f7187?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.8,
    '{"lat":-2.859,"lng":35.534}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-3',
    'Ngorongoro Crater',
    'Tanzania',
    'Attraction',
    'Wildlife sanctuary in a volcanic crater with dramatic landscapes, home to dense populations of lions, elephants, and the rare black rhino, with a notable hippo pool.',
    'The Ngorongoro Crater is the world''s largest intact volcanic caldera, forming a spectacular natural amphitheater. This UNESCO World Heritage site is teeming with wildlife, including the Big Five. The crater floor is a vibrant ecosystem with lakes, forests, and vast grasslands, offering some of the best game viewing in Africa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/4e/82/9c/ngorongoro-crater-is.jpg?w=500&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-3.169,"lng":35.587}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-4',
    'Mount Kilimanjaro',
    'Tanzania',
    'Attraction',
    'Mount Kilimanjaro treks through the Lemosho route offer a scenic journey with a gradual ascent, leading to the life-changing Uhuru Peak and unforgettable sunrise views.',
    'As Africa''s highest peak, Mount Kilimanjaro is a bucket-list destination for trekkers worldwide. The journey to the summit takes you through five distinct climate zones, from lush rainforest to an arctic-like landscape. Reaching Uhuru Peak at sunrise is a challenging but profoundly rewarding experience, offering breathtaking views from the roof of Africa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/4d/dc/a1/mount-kilimanjaro.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-3.067,"lng":37.355}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-5',
    'Nakupenda Beach Nature Reserve',
    'Zanzibar',
    'Attraction',
    'White sand beach and clear waters ideal for snorkeling with vibrant marine life. Enjoy fresh seafood and visit historical sites for cultural shopping.',
    'Nakupenda Beach, which means ''I love you'' in Swahili, is a stunning sandbank that appears during low tide. It offers pristine white sands and crystal-clear waters perfect for snorkeling and swimming. A day trip here often includes a delicious fresh seafood barbecue, making it a truly idyllic escape.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/d3/3a/ed/photo2jpg.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-6.162,"lng":39.172}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-6',
    'Paje Beach',
    'Zanzibar',
    'Attraction',
    'Sun-kissed beach with clear, warm waters, ideal for kite surfing and reef walks. Offers a relaxed atmosphere with bars and restaurants, though can be crowded.',
    'Paje Beach is a vibrant spot on Zanzibar''s east coast, famous for its excellent kitesurfing conditions. The long stretch of white sand and shallow turquoise waters make it ideal for both beginners and experienced surfers. The beach has a lively, bohemian atmosphere with plenty of cool bars and restaurants.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/e8/b4/7b/you-are-most-welcome.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-6.264,"lng":39.535}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-7',
    'The Tanzanite Experience',
    'Tanzania',
    'Attraction',
    'Gemstone journey through a replicated mine and informative exhibits, revealing the unique history and process behind Tanzanite. Includes a documentary and displays of fine jewelry.',
    'The Tanzanite Experience offers a fascinating journey into the world of Tanzania''s most famous gemstone. The museum features a replica of a tanzanite mine and informative exhibits on the history, geology, and mining process of this rare blue-violet gem. It''s a unique opportunity to learn about and purchase certified Tanzanite.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/ab/b1/1f/the-tanzanite-experience.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-3.366,"lng":36.676}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-8',
    'Kendwa Beach',
    'Zanzibar',
    'Attraction',
    'Spacious beach with crystal clear waters ideal for swimming, serene private areas, and a variety of dining options. Enjoy peaceful sunsets and water sports without the crowds.',
    'Kendwa Beach, located on the northern tip of Zanzibar, is famous for its stunning sunsets and vibrant Full Moon parties. Unlike many other beaches on the island, Kendwa is less affected by tides, making it perfect for swimming at any time of day. The beach has a relaxed yet lively vibe with numerous hotels, bars, and restaurants.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/c4/54/f8/kendwa.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-5.756,"lng":39.288}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-9',
    'Tarangire National Park',
    'Tanzania',
    'Attraction',
    'Safari adventure in a serene park, known for close elephant encounters and diverse wildlife amidst iconic baobab trees. Ideal for game drives and wildlife photography.',
    'Tarangire National Park is a hidden gem known for its large elephant herds and iconic baobab trees. The Tarangire River is a lifeline for wildlife, attracting a diverse range of animals, especially during the dry season. The park offers a more off-the-beaten-path safari experience with stunning landscapes and excellent wildlife viewing.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/6b/ff/ef/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-4,"lng":36}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-10',
    'Jambiani Beach',
    'Zanzibar',
    'Attraction',
    'Idyllic beach known for its white sand, turquoise waters, and seaweed farming. It offers a glimpse into local life with a laid-back atmosphere.',
    'Jambiani is a traditional fishing village on the southeast coast of Zanzibar, offering a more authentic and laid-back beach experience. The stunning white sand beach is perfect for long walks, and at low tide, you can see local women farming seaweed. It''s a great place to experience local life and enjoy the tranquil beauty of the Indian Ocean.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/67/cf/ab/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-6.315,"lng":39.552}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-11',
    'Kikuletwa Hotsprings',
    'Tanzania',
    'Attraction',
    'Tranquil hot springs with crystal clear water for swimming and lounging, featuring rope swings and natural fish pedicures amidst scenic views. Ideal for unwinding post-adventure.',
    'Kikuletwa Hotsprings, also known as Chemka Hot Springs, are a beautiful oasis of geothermal water surrounded by lush palm and fig trees. The crystal-clear water is perfect for a refreshing swim, and the site offers a tranquil spot to relax and unwind. It''s a popular day trip for those looking to escape the heat and enjoy a natural spa experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/66/f3/c8/23-january-2121.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-3.583,"lng":37.083}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-12',
    'Mikumi National Park',
    'Tanzania',
    'Attraction',
    'Wildlife sanctuary providing immersive safaris and close encounters with diverse species, including the big five, in their natural habitat, complemented by comfortable accommodations.',
    'Mikumi National Park is one of Tanzania''s most accessible parks, offering a classic safari experience with a wide variety of wildlife, including lions, elephants, giraffes, and zebras. The Mkata Floodplain is the park''s centerpiece, often compared to the Serengeti for its open grasslands and abundant game.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/bb/75/30/about-safaris.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-7.408,"lng":37.126}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-13',
    'Seronera',
    'Tanzania',
    'Attraction',
    'Safari adventure through wildlife-rich reserves with comfortable, well-equipped vehicles. Spot the "big five", enjoy stunning landscapes, and capture remarkable wildlife photography.',
    'The Seronera region in the central Serengeti is known for its incredible wildlife density and is one of the best places to spot the Big Five. The Seronera River provides a year-round water source, attracting a high concentration of animals. It''s a prime location for game viewing at any time of year.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/b4/80/95/serengeti.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-2.449,"lng":34.825}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-14',
    'Ruaha National Park',
    'Tanzania',
    'Attraction',
    'Safari destination with serene landscapes and diverse wildlife, including lions and elephants. Features informative guides and a peaceful, less-traveled atmosphere for nature enthusiasts.',
    'Ruaha National Park is Tanzania''s largest national park, offering a wild and remote safari experience. It''s known for its large elephant and lion populations, as well as its dramatic landscapes and the Great Ruaha River. The park''s untouched wilderness provides a truly authentic and uncrowded safari adventure.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/10/5e/67/ruaha-national-park.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-7.5,"lng":34.5}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-15',
    'Materuni Waterfalls',
    'Tanzania',
    'Attraction',
    'Rustic trail leading to a 70-meter waterfall, with cultural experiences including a local village tour and traditional coffee making. Enjoy local cuisine and rural ambiance.',
    'Located on the slopes of Mount Kilimanjaro, Materuni is the highest waterfall in the area. A beautiful hike through lush rainforest takes you to the falls, where you can swim in the refreshing pool. The experience is often combined with a visit to a local Chagga village for a traditional coffee-making tour and a delicious local lunch.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/4a/95/ea/materuni-waterfalls-beautiful.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-3.242,"lng":37.382}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-16',
    'Usambara Mountains',
    'Tanzania',
    'Attraction',
    'Mountainous hiking trails through the Usambara Mountains reveal diverse wildlife, local culture, and panoramic landscapes, with multi-day treks available.',
    'Part of the Eastern Arc Mountains, the Usambaras are a biodiversity hotspot, often called the "Galapagos of Africa." They offer fantastic hiking opportunities through lush forests and traditional villages, with stunning viewpoints like Irente Viewpoint. The area is rich in unique flora and fauna and offers a cool respite from the heat of the plains.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/36/7a/89/usambara-mountains.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-4.75,"lng":38.5}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-17',
    'Selous Game Reserve',
    'Tanzania',
    'Attraction',
    'Wildlife park featuring land and river safaris amidst diverse landscapes, home to lions, elephants, and giraffes for a leisurely and educational wildlife encounter.',
    'Now known as Nyerere National Park, this is one of the world''s largest fauna reserves. It offers a unique safari experience with boat trips on the Rufiji River, as well as classic game drives and walking safaris. The reserve is known for its large populations of wild dogs, elephants, and hippos.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/b4/0b/c1/big-mammal-land.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-8.483,"lng":37.416}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-18',
    'Serengeti Hippo Pool',
    'Tanzania',
    'Attraction',
    'Serengeti''s Hippo Pool offers intimate encounters with these majestic creatures amidst their natural habitat, allowing for close-up views and the unique sounds of hippo interactions.',
    'Located in the Seronera region of the Serengeti, the Retina Hippo Pool is a fantastic spot to observe large pods of hippos. From a safe viewpoint, you can watch these massive creatures wallow, grunt, and interact in the water. It''s a noisy, smelly, and unforgettable wildlife spectacle.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/96/e1/2c/baby-hippos-are-born.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-2.332,"lng":34.826}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-19',
    'Ngurdoto Crater',
    'Tanzania',
    'Attraction',
    'Located in Arusha National Park and off limits to humans, this verdant crater’s mossy, swampy habitat provides a natural sanctuary for elephants, buffalo and Colobus monkeys.',
    'Known as "Little Ngorongoro," the Ngurdoto Crater is a lush, swampy caldera within Arusha National Park. While the crater floor is off-limits to humans to protect the wildlife, several viewpoints along the rim offer stunning views of the rich ecosystem below, which is a sanctuary for elephants, buffalo, and colobus monkeys.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/9a/1f/06/photo0jpg.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-3.25,"lng":36.916}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-20',
    'Crafty Dee''s (microbrewery & Brewpub)',
    'Tanzania',
    'Restaurant',
    'Crafty Dee''s Brewing Company has evolved from a backyard room to Dar es Salaam''s premier craft beer destination. Our 130-seat brewpub merges restaurant, pub, and beer garden vibes, showcasing our commitment to innovation.',
    'Crafty Dee''s Brewing Company has evolved from a backyard room to Dar es Salaam''s premier craft beer destination. Our 130-seat brewpub merges restaurant, pub, and beer garden vibes, showcasing our commitment to innovation. Through panoramic windows, guests glimpse our cutting-edge production facility, highlighting our dedication to quality. Crafty Dee''s isn''t just about beer; it''s a community hub. Recognized at the African Beer Cup from 2021-2024, our award-winning beers showcase our dedication to quality and freshness. As Tanzania''s sole microbrewery in Dar es Salaam, Crafty Dee''s represents local ingenuity. Join us in celebrating innovation, tradition, and the limitless possibilities of craft beer. Welcome to Crafty Dee''s, where every sip tells a story of dedication and artistry. Cheers!',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/4a/43/b6/glass-enclosed-state.jpg?w=900&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-6.762,"lng":39.231}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-21',
    'Ngozi Crater Lake',
    'Tanzania',
    'Attraction',
    'Lush jungle trail leading to the serene Ngozi Crater Lake, enveloped by clouds, with captivating views and a refreshing atmosphere, ideal for leisurely hikes.',
    'Ngozi Crater Lake is a stunning volcanic lake in the Southern Highlands of Tanzania. A hike through a lush, dense forest leads to the crater rim, offering breathtaking views of the emerald-green lake below. The area is steeped in local myths and legends, adding a mystical element to this beautiful natural wonder.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/e5/24/92/top-view-lake-ngozi-crater.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-8.995,"lng":33.565}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-22',
    'Migration at Serengeti National Park',
    'Tanzania',
    'Attraction',
    'Vast wildlife sanctuary with dramatic plains and hot air balloon safaris, home to the Great Migration and diverse ecosystems. Ideal for witnessing majestic animals in their natural habitat.',
    'The Great Migration is one of the most incredible wildlife spectacles on Earth. Witnessing over a million wildebeest, zebra, and gazelle traverse the Serengeti plains in search of fresh grazing is an unforgettable experience. The migration is a continuous cycle, offering different but equally thrilling scenes throughout the year, from dramatic river crossings to the calving season.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/4c/2a/53/serengeti-migration-season.jpg?w=500&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-2.333,"lng":34.833}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-23',
    'The Tanzanite Dream',
    'Tanzania',
    'Attraction',
    'Tanzanite jewelry showcase with a spectrum of high-quality pieces in well-lit displays. Visitors can browse unique designs and enjoy a relaxed, informative atmosphere.',
    'The Tanzanite Dream is a specialty shop offering a wide range of beautiful Tanzanite jewelry. With a reputation for quality and authenticity, it''s a great place to find a unique souvenir or a special piece of this rare and beautiful gemstone, found only in Tanzania. The staff are knowledgeable and provide a relaxed shopping experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/30/0c/c2/the-tanzanite-dream.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-3.366,"lng":36.676}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-1',
    'Makofi Guest House',
    'Zanzibar',
    'Hotel',
    'Exotic guesthouse steps from the beach with cozy rooms, a serene garden, shared kitchen, and fast WiFi. Features an island-inspired vibe, friendly staff, and opportunities to connect with travelers.',
    'Just steps from Nungwi beach, Makofi Guest House offers an exotic, island-inspired vibe. It features cozy rooms, a serene garden for relaxing, a shared kitchen, and fast WiFi. The friendly staff and communal atmosphere make it a great place to connect with other travelers from around the world.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/d0/71/2e/nungwi-beach-in-the-early.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-5.731,"lng":39.293}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-2',
    'Turaco Nungwi Resort',
    'Zanzibar',
    'Hotel',
    'Beachfront resort with private beach, stunning sunset views, and tide pool exploration. Features all-inclusive dining, day trips to Stone Town, a swim-up pool bar, and fresh seafood at a beachside grill.',
    'This beachfront resort offers a private beach, stunning sunset views, and tide pool exploration. It features all-inclusive dining, a swim-up pool bar, and fresh seafood at a beachside grill. The resort can also arrange day trips to Stone Town, combining relaxation with cultural exploration.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/fe/08/c9/nungwi-beach-resort-by.jpg?w=700&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-5.727,"lng":39.298}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-3',
    'Essque Zalu Zanzibar',
    'Zanzibar',
    'Hotel',
    'Spacious rooms with luxury bathroom amenities, free shuttle to Kendwa beach, daily housekeeping, kids club, and oceanfront Jetty restaurant. High standard of service praised by guests.',
    'A luxury resort known for its high standard of service, Essque Zalu Zanzibar features spacious suites and villas with luxury amenities. Guests can enjoy a free shuttle to nearby Kendwa beach, daily housekeeping, a kids club, and dining at the stunning oceanfront Jetty restaurant.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/f6/b7/17/40m-high-main-building.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-5.736,"lng":39.294}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-4',
    'Le Mersenne Zanzibar, Autograph Collection',
    'Zanzibar',
    'Hotel',
    'Scenic resort with spacious rooms, ocean views, and a relaxing atmosphere. Features include a picturesque pool, on-site restaurant, water activities, and complimentary boat trips to a sandbank.',
    'This scenic resort offers spacious rooms with ocean views and a relaxing atmosphere. It features a picturesque pool, an on-site restaurant, and various water activities. A special highlight is the complimentary boat trips to a nearby sandbank, perfect for a secluded beach experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/28/78/7c/73/le-mersenne-zanzibar.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-6.291,"lng":39.524}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-5',
    'TUI BLUE Bahari Zanzibar',
    'Zanzibar',
    'Hotel',
    'Beachfront resort with two pools, themed nights, and live entertainment. All-inclusive options with varied dining, including Italian cuisine. Spacious rooms with balconies and ocean views.',
    'A beachfront resort with two pools, TUI BLUE Bahari offers themed nights and live entertainment. The all-inclusive options feature varied dining, including a popular Italian restaurant. Guests can relax in spacious rooms with balconies and beautiful ocean views.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/2f/11/32/main-pool.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-6.042,"lng":39.362}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-6',
    'Gran Melia Arusha',
    'Tanzania',
    'Hotel',
    'breathtaking Mount Meru and Kilimanjaro views. Rooftop bar, coffee plantation tours, organic gardens, spacious rooms with balconies, poolside lounge, and top-quality food and drinks.',
    'This luxury hotel in Arusha offers breathtaking views of Mount Meru and Kilimanjaro. It features a rooftop bar, coffee plantation tours, and organic gardens. Guests can enjoy spacious rooms with balconies, a poolside lounge, and top-quality food and drinks, making it a perfect pre- or post-safari indulgence.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/4c/1d/d5/caption.jpg?w=700&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-3.376,"lng":36.678}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-7',
    'Gold Zanzibar Beach House & Spa',
    'Zanzibar',
    'Hotel',
    'Beachfront resort offering all-inclusive dining with fresh seafood, themed buffets, and personalized service. Features private pools, serene villas, outdoor activities, and a romantic atmosphere.',
    'This luxury beachfront resort offers all-inclusive dining with fresh seafood, themed buffets, and personalized service. It features serene villas, some with private pools, and a range of outdoor activities. The romantic atmosphere makes it a perfect choice for couples and honeymooners.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/8f/9a/09/gold-zanzibar-beach-house.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-5.76,"lng":39.289}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-8',
    'Kendwa Rocks Beach Hotel',
    'Zanzibar',
    'Hotel',
    'Beachfront resort with vibrant full moon parties, live entertainment, and an on-site club. Features modern rooms, clean pools, a charming bar, delicious dining options, and friendly service.',
    'Famous for its vibrant full moon parties, this beachfront resort offers live entertainment and an on-site club. It features modern rooms, clean pools, a charming bar, and delicious dining options. The friendly service and lively atmosphere make it a popular choice for those looking for fun and relaxation.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/11/42/b6/kendwarocks-bungalows.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-5.758,"lng":39.288}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-9',
    'Royal Zanzibar Beach Resort',
    'Zanzibar',
    'Hotel',
    'Ideal for honeymoons or family vacations with well-maintained pools, swim-up bar, spacious rooms with ocean views, and a restaurant offering exceptional food and vistas.',
    'This resort is ideal for honeymoons or family vacations, featuring well-maintained pools with a swim-up bar. Guests can enjoy spacious rooms with ocean views and a restaurant offering exceptional food and stunning vistas. The beautiful grounds and excellent amenities ensure a royal experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/84/70/ec/caption.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-5.733,"lng":39.295}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-10',
    'Mizingani Seafront Hotel',
    'Zanzibar',
    'Hotel',
    'Central oceanfront location in Stone Town near attractions, shops, and restaurants. Features spacious rooms, unique architecture, seafront views, a pool, vintage decor, and organized local tours.',
    'With a central oceanfront location in Stone Town, this hotel is near attractions, shops, and restaurants. It features spacious rooms, unique architecture, seafront views, a pool, and vintage decor. The hotel can also organize local tours, making it a convenient base for exploring the historic city.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/07/63/22/mizingani-seafront-hotel.jpg?w=700&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-6.16,"lng":39.189}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-11',
    'Canary Nungwi Hotel & Spa',
    'Zanzibar',
    'Hotel',
    'Conveniently located near the beach, shops, and restaurants, this hotel features a large pool, rooftop terrace with beach views, spa services, water sports, delicious dining, and stylish, comfortable rooms.',
    'Conveniently located near the beach, shops, and restaurants, this hotel features a large pool and a rooftop terrace with beach views. It offers spa services, water sports, delicious dining, and stylish, comfortable rooms, providing a great all-around experience in Nungwi.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/25/a5/d0/5e/canary-nungwi-hotel-restaurant.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-5.732,"lng":39.294}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-12',
    'Sanna Boutique Hotel',
    'Tanzania',
    'Hotel',
    'Centrally located hotel with spacious rooms, stunning views of Mount Meru. Features a rooftop restaurant, gym, café, and special touches for a remarkable stay.',
    'This centrally located boutique hotel in Arusha offers spacious rooms with stunning views of Mount Meru. It features a rooftop restaurant, a gym, and a café. The hotel is known for its special touches and attention to detail, ensuring a remarkable and comfortable stay for its guests.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/37/a1/d0/caption.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-3.369,"lng":36.682}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-13',
    'Golden Tulip Dar City Center',
    'Tanzania',
    'Hotel',
    'Centrally located hotel with ocean and city views, rooftop dining with diverse breakfast options, clean and spacious rooms, cozy atmosphere, and friendly staff. Close to ferry, airport, and attractions.',
    'A centrally located hotel in Dar es Salaam with ocean and city views. It features rooftop dining with diverse breakfast options, clean and spacious rooms, a cozy atmosphere, and friendly staff. Its proximity to the ferry, airport, and attractions makes it a convenient choice for travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/46/00/26/gtdrone.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-6.815,"lng":39.287}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-14',
    'Paje Beach Apartments & Hotel',
    'Zanzibar',
    'Hotel',
    'Rooms lovely, clean and airy, staff wonderful so helpful and friendly, food amazing. It''s directly on the beach and next door to buccaneer diving which I can also highly recommend.',
    'Located directly on Paje Beach, this hotel offers lovely, clean, and airy rooms. The staff are wonderful, helpful, and friendly, and the food is amazing. It is also conveniently located next to a popular diving center, making it a great choice for beach lovers and divers alike.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/7d/67/b1/paje-beach-apartments.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-6.265,"lng":39.535}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-15',
    'Hotel Verde Zanzibar - Azam Luxury Resort and Spa',
    'Zanzibar',
    'Hotel',
    'Eco-friendly hotel with modern, spacious rooms, private balconies, and ocean views. Features a pool, spa, gym, massage chairs, and water sports. Serene ambiance with vibrant dining and activity options.',
    'An eco-friendly hotel with modern, spacious rooms, private balconies, and ocean views. It features a pool, spa, gym, unique massage chairs, and water sports. The resort offers a serene ambiance with vibrant dining and a variety of activity options for a complete holiday experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/b3/26/18/hotel-verde-zanzibar.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-6.155,"lng":39.208}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-16',
    'Dhow Palace Hotel',
    'Zanzibar',
    'Hotel',
    'Historic 16th-century hotel in Stone Town blending traditional Zanzibari decor with modern comforts. Features a rooftop terrace, pool, museum-like ambiance, and easy access to markets and landmarks.',
    'A historic hotel in a 16th-century building in Stone Town, Dhow Palace blends traditional Zanzibari decor with modern comforts. It features a rooftop terrace, a pool, and a museum-like ambiance. Its central location provides easy access to local markets and historic landmarks.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/c0/78/5d/breakfast-area.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-6.165,"lng":39.191}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-17',
    'My Blue Hotel',
    'Zanzibar',
    'Hotel',
    'Beachfront hotel on Nungwi Beach with stunning sunsets, infinity pool, lively beachfront dining with live music and dancing, nightly entertainment, ocean view suites, and a variety of beach activities.',
    'This beachfront hotel on Nungwi Beach offers stunning sunsets, an infinity pool, and lively beachfront dining with live music and dancing. Guests can enjoy nightly entertainment, ocean-view suites, and a variety of beach activities, making for a fun and beautiful stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/78/f3/20/my-blue-hotel-by-night.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-5.733,"lng":39.294}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-18',
    'Airport Planet Lodge',
    'Tanzania',
    'Hotel',
    'Convenient lodge near the airport with complimentary shuttle service, quick check-in, and relaxing ambience. Offers comfortable accommodations, attentive staff, and a great spot for pre/post-flight stays.',
    'A convenient lodge near Kilimanjaro Airport, it offers complimentary shuttle service, quick check-in, and a relaxing ambiance. With comfortable accommodations and attentive staff, it''s a great spot for pre- or post-flight stays, ensuring a smooth start or end to a Tanzanian adventure.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/53/69/b6/aerial-view-of-swimming.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-3.428,"lng":37.06}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-19',
    'Sansi Kendwa Beach Resort',
    'Zanzibar',
    'Hotel',
    'Boutique beachside resort with stylish rooms and stunning sea views. Highlights include a relaxing atmosphere, professional service, massages, and proximity to Kendwa Beach''s charm and local experiences.',
    'A boutique beachside resort with stylish rooms and stunning sea views. Highlights include a relaxing atmosphere, professional service, and available massages. Its location provides easy access to the charm of Kendwa Beach and local experiences.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/41/e1/e6/sansi-kendwa-beach-resort.jpg?w=700&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-5.759,"lng":39.289}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-20',
    'Golden Tulip Stonetown Boutique',
    'Zanzibar',
    'Hotel',
    'Elegant hotel near the sea port with seamless check-in, clean and spacious rooms, and a rooftop restaurant offering Indian and Zanzibarian cuisine with scenic views. Convenient location for travelers.',
    'An elegant hotel near the sea port, it offers seamless check-in and clean, spacious rooms. The rooftop restaurant serves a mix of Indian and Zanzibarian cuisine with scenic views, providing a convenient and pleasant location for travelers arriving by ferry.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2f/68/79/80/gt-znz-aug-shoot.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-6.158,"lng":39.191}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-21',
    'Nungwi Dreams By Mantis',
    'Zanzibar',
    'Hotel',
    'Boutique hotel with stunning Indian Ocean views, private beach, two infinity pools, spacious rooms with balconies, sea life exploration at low tide, tranquil vibe, evening activities, and dining options.',
    'This boutique hotel offers stunning Indian Ocean views, a private beach, and two infinity pools. Guests can stay in spacious rooms with balconies, explore sea life at low tide, and enjoy the tranquil vibe with evening activities and quality dining options.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/60/87/28/caption.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-5.734,"lng":39.294}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-22',
    'Golden Tulip Zanzibar Resort',
    'Zanzibar',
    'Hotel',
    'Hotel with friendly staff, spacious, clean, air-conditioned rooms. Offers rooftop restaurant with ocean views, local cuisine, and convenient location.',
    'Known for its friendly staff, this hotel provides spacious, clean, and air-conditioned rooms. It features a rooftop restaurant with ocean views serving local cuisine. Its convenient location makes it a great choice for exploring Zanzibar.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/e4/8c/37/suite-ocean-view.jpg?w=700&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-6.115,"lng":39.191}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-23',
    'Meliá Zanzibar',
    'Zanzibar',
    'Hotel',
    'Luxurious oceanfront resort with scenic views, multiple dining options including beachfront and poolside restaurants. Fresh seafood, tapas, and cocktails praised. Convenient buggy service and serene atmosphere.',
    'A luxurious oceanfront resort with scenic views and multiple dining options, including beachfront and poolside restaurants. Guests praise the fresh seafood, tapas, and cocktails. A convenient buggy service and serene atmosphere make for a relaxing and high-end stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/22/84/cf/48/melia-zanzibar.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-5.996,"lng":39.4}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-24',
    'The Mora Zanzibar',
    'Zanzibar',
    'Hotel',
    'Set on a stunning beach with views of Mnemba Island, this resort boasts exceptional snorkeling, diverse dining, and a unique gelato shop included in the all-inclusive package. Highlights include spacious pools, a serene garden pool, sports facilities, a spa, and engaging activities.',
    'Set on a stunning beach with views of Mnemba Island, this resort boasts exceptional snorkeling, diverse dining, and a unique gelato shop included in the all-inclusive package. Highlights include spacious pools, a serene garden pool, sports facilities, a spa, and engaging activities.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/37/45/b8/emerald-zanzibar-resort.jpg?w=700&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-5.836,"lng":39.375}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-25',
    'Hotel Riu Jambo',
    'Zanzibar',
    'Hotel',
    'Modern hotel with spacious, well-furnished rooms and beautiful views. Exceptional dining with varied cuisine, including standout Asian and traditional restaurants. Attentive staff and plentiful water activities. Some construction nearby, but minimal disruption for most guests.',
    'A modern hotel with spacious, well-furnished rooms and beautiful views. It offers exceptional dining with varied cuisine, including standout Asian and traditional restaurants. Attentive staff and plentiful water activities ensure a great stay, despite some nearby construction.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/5e/c8/d3/vista-aerea-y-playa.jpg?w=700&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-5.733,"lng":39.296}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-26',
    'Meliá Serengeti Lodge member of Meliá Collection',
    'Tanzania',
    'Hotel',
    'Luxurious lodge in the Serengeti with panoramic views, spacious modern rooms, infinity pool, and exceptional service. Features game drives with expert guides, wildlife sightings, and stunning sunsets.',
    'A luxurious lodge in the heart of the Serengeti, it offers panoramic views, spacious modern rooms, an infinity pool, and exceptional service. The lodge organizes game drives with expert guides, leading to incredible wildlife sightings. The stunning sunsets from the lodge are a daily highlight.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/ac/0b/d8/caption.jpg?w=700&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-2.463,"lng":34.821}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-27',
    'Tulia Zanzibar Unique Beach Resort',
    'Zanzibar',
    'Hotel',
    'Lush gardens, beachfront villas, and varied activities like yoga, spa massages, and water sports. Organic farm-to-table dining, garden tours, and attentive staff create a relaxing and memorable stay.',
    'This resort is set in lush gardens with beachfront villas and offers varied activities like yoga, spa massages, and water sports. It features organic farm-to-table dining and garden tours. The attentive staff and beautiful surroundings create a relaxing and memorable stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/81/97/06/view-from-seafront-luxury.jpg?w=700&h=-1&s=1',
    NULL,
    5,
    '{"lat":-6.002,"lng":39.389}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-28',
    'The Residence Zanzibar',
    'Zanzibar',
    'Hotel',
    'Peaceful resort with stunning views, clear sea, and distance excursions. Known for great cocktails, spacious garden villas with private pools, and a large main pool. Ideal for honeymoons.',
    'A peaceful resort with stunning views and clear sea, The Residence Zanzibar offers spacious garden villas with private pools. It is known for its great cocktails and a large main pool. Ideal for honeymoons and romantic getaways, it provides a luxurious and private retreat.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/71/bd/af/infinity-pool.jpg?w=700&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-6.467,"lng":39.467}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-29',
    'The Palms, Zanzibar',
    'Zanzibar',
    'Hotel',
    'Serene resort with private villas, plunge pools, and beach cabanas. Access to sister property amenities like a spa, tennis court, and lap pool. High-end dining, personalized service, and ocean views.',
    'A serene and intimate resort featuring just seven private villas, each with its own plunge pool and beach cabana. Guests have access to amenities at sister properties, including a spa and tennis court. The high-end dining, personalized service, and beautiful ocean views make for an exclusive and luxurious stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/1a/99/73/caption.jpg?w=700&h=-1&s=1',
    NULL,
    5,
    '{"lat":-6.284,"lng":39.537}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-30',
    'Baraza Resort And Spa Zanzibar',
    'Zanzibar',
    'Hotel',
    'Luxury oceanfront resort with private villas featuring plunge pools, spacious interiors, and serene day beds. Stunning beach, reef walks, exceptional dining, and attentive service for special occasions.',
    'A luxury oceanfront resort with private villas featuring plunge pools, spacious interiors, and serene day beds. It''s set on a stunning beach, perfect for reef walks. The exceptional dining and attentive service make it an ideal choice for special occasions and a truly memorable holiday.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2e/1a/93/66/caption.jpg?w=700&h=-1&s=1',
    NULL,
    5,
    '{"lat":-6.283,"lng":39.537}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-31',
    'Coral Beach Hotel Dar Es Salaam',
    'Tanzania',
    'Hotel',
    'Coastal hotel with ocean-view rooms, private beach, and waterfront dining. Spacious, modern rooms with balconies. Ideal for business or leisure, offering stunning sunsets and a relaxing ambiance.',
    'This coastal hotel in Dar es Salaam offers ocean-view rooms, a private beach area, and waterfront dining. The rooms are spacious and modern, with balconies to enjoy the view. Ideal for both business and leisure, it provides stunning sunsets and a relaxing ambiance by the sea.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/e3/bc/5f/make-a-tranquil-escape.jpg?w=700&h=400&s=1',
    NULL,
    4.3,
    '{"lat":-6.758,"lng":39.266}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-32',
    'Mvuli Hotel',
    'Tanzania',
    'Hotel',
    'Great for safari base, offering an authentic Tanzanian experience. Conveniently located with friendly staff, comfortable beds, and clean rooms. Organizes safaris efficiently.',
    'Mvuli Hotel is a great base for safaris, offering an authentic Tanzanian experience. It''s conveniently located with friendly staff, comfortable beds, and clean rooms. The hotel is also efficient at organizing safari trips, making it a hassle-free choice for adventurers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/38/5e/2d/mvuli-hotels-arusha.jpg?w=700&h=-1&s=1',
    NULL,
    4.2,
    '{"lat":-3.374,"lng":36.684}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-33',
    'Fun Retreat Resort',
    'Tanzania',
    'Hotel',
    'Resort in Arusha offering day trips to national parks and waterfalls. Features a peaceful setting, Ayurvedic spa, water park, family-friendly activities, spacious rooms, diverse dining, and helpful staff.',
    'This resort in Arusha offers day trips to nearby national parks and waterfalls. It features a peaceful setting, an Ayurvedic spa, a water park, and family-friendly activities. With spacious rooms, diverse dining options, and helpful staff, it''s a great choice for a fun and relaxing family holiday.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/25/f7/a1/fun-retreat.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-3.344,"lng":36.757}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-34',
    'Venus Premier Hotel',
    'Tanzania',
    'Hotel',
    'Centrally located hotel in Arusha with clean, spacious rooms and excellent housekeeping. Offers delicious Indian cuisine, diverse breakfast options, and attentive staff. Great for business and leisure travelers.',
    'A centrally located hotel in Arusha with clean, spacious rooms and excellent housekeeping. It offers delicious Indian cuisine, diverse breakfast options, and attentive staff, making it a great choice for both business and leisure travelers looking for comfort and convenience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/5b/2a/41/lobby.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-3.37,"lng":36.685}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-35',
    'The African Tulip',
    'Tanzania',
    'Hotel',
    'Ideal for safari stopovers, this boutique hotel offers large rooms, friendly staff, and good food. It boasts a cozy pool and bar area, and a central location. Unique mix of modern and traditional decor.',
    'Ideal for safari stopovers, this boutique hotel offers large rooms, friendly staff, and good food. It boasts a cozy pool and bar area, and a central location in Arusha. The unique mix of modern and traditional decor gives it a special charm, perfect for starting or ending a safari adventure.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/1d/31/56/spacious-rooms.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-3.372,"lng":36.687}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'tz-hotel-36',
    'Heart Of Africa Lodge',
    'Tanzania',
    'Hotel',
    'The beds and mattresses are a real asset at the lodge. Rooms rather small but sufficient. We stayed in the lodge to meet our partner NGOs in the area of Arusha. We can just recommend and will stay there next time',
    'This lodge is praised for its comfortable beds and mattresses, ensuring a good night''s sleep. While the rooms are cozy, they are sufficient for a comfortable stay. It''s a recommended base for those working with local NGOs or exploring the Arusha area, offering good value and a pleasant atmosphere.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/9e/5f/92/heart-of-africa-lodge.jpg?w=700&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-3.398,"lng":36.671}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-1',
    'Volcanoes National Park',
    'Rwanda',
    'Attraction',
    'Challenging yet rewarding treks through lush landscapes for close encounters with mountain gorillas and unique Golden Monkeys, supporting local conservation efforts.',
    'A haven for the mountain gorilla, Volcanoes National Park is set against the backdrop of the majestic Virunga Mountains. It offers challenging yet rewarding treks through lush landscapes for close encounters with mountain gorillas and unique Golden Monkeys. The park was also the base for primatologist Dian Fossey.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/02/fc/bb/photo2jpg.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-1.463,"lng":29.493}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-2',
    'The Retreat by Heaven',
    'Rwanda',
    'Hotel',
    'A luxury boutique hotel in the heart of Kigali.',
    'The Retreat is a 20-room luxury boutique hotel created by the American owners of Heaven Restaurant. It offers a five-star experience with a focus on Rwandan culture, sustainability and wellness. The hotel features a solar-heated saltwater swimming pool, a full-service spa, and a farm-to-table restaurant, providing a serene and luxurious base in Kigali.',
    'https://images.unsplash.com/photo-1706978116093-7b8cd429d6bc?q=80&w=2070&auto=format&fit=crop',
    NULL,
    4.7,
    '{"lat":-1.957,"lng":30.06}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-3',
    'Kigali Genocide Memorial',
    'Rwanda',
    'Attraction',
    'A permanent National genocide memorial in remembrance of more than one million victims of the 1994 Genocide against the Tutsi.',
    'The Kigali Genocide Memorial is a deeply moving and essential place for understanding Rwanda''s history. It honors the memory of the more than one million victims of the 1994 Genocide against the Tutsi. The memorial includes three permanent exhibitions and a burial place for over 250,000 victims, serving as a powerful place of remembrance and learning.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/03/b5/50/the-main-museum-building.jpg?w=500&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-1.932,"lng":30.059}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-4',
    'Akagera National Park',
    'Rwanda',
    'Attraction',
    'Just two hours from Kigali, Akagera National Park is situated in the eastern province of Rwanda, on the border with Tanzania.',
    'Akagera National Park is a stunning success story of conservation. After being devastated by poaching, it has been restocked with lions and rhinos, making it a Big Five destination. The park''s diverse landscapes, including savannah, rolling hills, and wetlands, offer a classic safari experience and excellent birdwatching opportunities.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/26/6d/0c/views-from-the-western.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-1.666,"lng":30.75}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-5',
    'Niyo Art Gallery',
    'Rwanda',
    'Attraction',
    'Colorful mural art and vibrant sculptures set the scene at this art gallery that also hosts drumming sessions and serves local African coffee.',
    'Niyo Art Gallery showcases the vibrant work of Rwandan artists and also serves as a social enterprise, supporting street children through art. The gallery features colorful paintings and sculptures, and visitors can enjoy traditional drumming sessions. It''s a great place to experience Rwanda''s contemporary art scene and support a good cause.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/c1/08/ff/amazing-art-center-in.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-1.94,"lng":30.081}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-6',
    'Inema Art Center',
    'Rwanda',
    'Attraction',
    'Founded in 2012 by brothers and self-taught painters Emmanuel Nkuranga and Innocent Nkurunziza, the Inema Arts Centre''s mission is to spur creativity for personal, social, and economic growth.',
    'Inema Art Center is a hub for contemporary Rwandan art, founded by two brothers to promote creativity and provide a platform for local artists. The center features a gallery with a diverse collection of paintings and sculptures, as well as regular workshops, dance performances, and yoga classes. It''s a vibrant and dynamic cultural space.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/f3/9e/5f/20210508-111428-01-largejpg.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-1.942,"lng":30.083}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-7',
    'Kimironko Market',
    'Rwanda',
    'Attraction',
    'A typical bustling African market, offering a vibrant atmosphere and a wide array of goods.',
    'Kimironko Market is one of the largest and busiest markets in Kigali, offering a fantastic immersion into local Rwandan life. It''s a bustling labyrinth of stalls selling everything from fresh produce and spices to colorful fabrics (kitenge), crafts, and household goods. It''s a great place to practice your bargaining skills and find unique souvenirs.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/db/a6/af/photo0jpg.jpg?w=500&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-1.96,"lng":30.122}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-8',
    'Nyungwe National Park',
    'Rwanda',
    'Attraction',
    'Elevated canopy walk and suspension bridges provide panoramic forest vistas.',
    'Nyungwe National Park is one of the oldest rainforests in Africa, home to a remarkable biodiversity, including 13 primate species such as chimpanzees and colobus monkeys. A highlight is the canopy walkway, which offers breathtaking views of the forest from above. The park also has an extensive network of hiking trails for all fitness levels.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/cf/c6/41/chimp-trekking.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-2.483,"lng":29.183}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-9',
    'Iby''iwacu Cultural Village',
    'Rwanda',
    'Attraction',
    'Cultural village with traditional dances, hands-on craft, and ceremony participation.',
    'Now known as the Gorilla Guardians Village, this community-run project offers an immersive experience into Rwandan culture. Visitors can participate in traditional activities like archery, learn about medicinal plants, and watch spectacular traditional dance performances. It''s a fun and educational way to support the local community and learn about their heritage.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/ca/9c/34/we-have-beaut-full-volcanoes.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-1.488,"lng":29.567}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-10',
    'Kigali Convention Centre',
    'Rwanda',
    'Attraction',
    'One of the top tourist attractions in Kigali, the convention centre neighbours Radisson Blu hotel and Kigali Heights.',
    'The Kigali Convention Centre is an architectural marvel and a symbol of modern Rwanda. Its dome-shaped design is inspired by a traditional Rwandan hut and glows with vibrant colors at night. The center hosts major international events and is a key landmark in the city.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/b3/1d/1a/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-1.954,"lng":30.092}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-11',
    'Nyamata Church',
    'Rwanda',
    'Attraction',
    'A poignant genocide memorial where thousands of people were killed during the 1994 genocide.',
    'Nyamata Church is a deeply affecting genocide memorial where thousands of Tutsi sought refuge and were massacred during the 1994 genocide. The church has been preserved as a memorial, with victims'' clothing and belongings still inside, providing a powerful and somber testimony to the horrific events that took place.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/fb/a3/b2/photo0jpg.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-2.139,"lng":30.089}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-12',
    'Choose Kigali Art Gallery',
    'Rwanda',
    'Attraction',
    'A creative space including several floors of open gallery that will feature a rotating collection of local artists.',
    'Located in the historic heart of Kigali, Choose Kigali is a creative space that features a rotating collection of local artists across several floors. In addition to the art gallery, it also has a restaurant and rooftop bar, making it a great spot to enjoy art, food, and views of the city.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/31/b7/d6/gallery.jpg?w=500&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.949,"lng":30.058}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-13',
    'Ntarama Church',
    'Rwanda',
    'Attraction',
    'This site of the April 1994 massacre has been declared a genocide memorial. It remains a solemn tribute to those who were slain, the bones and belongings of the dead still lying among the aisles and…',
    'Similar to Nyamata, Ntarama Church is another deeply moving genocide memorial where thousands of people were massacred. The site has been preserved to honor the victims, with their bones and belongings remaining as a solemn tribute and a stark reminder of the brutality of the genocide.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/e6/ef/63/photo0jpg.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-2.091,"lng":30.083}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-14',
    'Nyandungu Eco-Park',
    'Rwanda',
    'Attraction',
    'Tranquil sanctuary near the airport with lush greenery, walking lanes, and ponds for relaxation. Ideal for birdwatching, with bicycle and scooter rentals available.',
    'Nyandungu Eco-Park is a beautiful urban wetland and forest reserve, offering a tranquil escape near the city. It features walking and cycling trails, ponds, and lush greenery, making it an ideal spot for birdwatching and relaxation. The park is a great example of urban conservation and provides a peaceful recreational space.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/c4/9d/dc/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.5,
    '{"lat":-1.958,"lng":30.134}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-15',
    'Our Lady of Kibeho Shrine',
    'Rwanda',
    'Attraction',
    'But the history of Visionaries as well the messages of Mary, are printed for over in our hearts. A must visit many...',
    'Kibeho is a significant Marian shrine and pilgrimage site, known for the apparitions of the Virgin Mary in the 1980s, which are the only Vatican-approved apparitions in Africa. The history of the visionaries and the messages of Mary are deeply moving for visitors, making it a place of deep spiritual importance.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/6f/28/92/sanctuaire-marial.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-2.628,"lng":29.549}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-16',
    'King''s Palace',
    'Rwanda',
    'Attraction',
    'It is also quite entertaining to interact with the folks who care for the long-horned cattle.',
    'This museum in Nyanza is a reconstruction of the traditional royal residence, offering insights into the Rwandan monarchy. A highlight is the sacred Inyambo cattle, known for their massive horns, which are cared for by herders who sing to them. It''s an entertaining and educational look into Rwanda''s royal history.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/55/d7/07/img-20181111-132359-largejpg.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-2.348,"lng":29.743}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-18',
    'Belgian Peacekeepers Memorial',
    'Rwanda',
    'Attraction',
    'A memorial dedicated to the ten Belgian UN peacekeepers who were murdered at the start of the 1994 Genocide.',
    'This memorial is dedicated to the ten Belgian UN peacekeepers who were murdered at the start of the 1994 Genocide against the Tutsi. The site, situated where they were killed while guarding the Prime Minister, features ten stone pillars and bullet-marked walls, serving as a solemn reminder of their sacrifice.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/61/fb/e6/belgian-peacekeepers.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.947,"lng":30.049}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-19',
    'Amahoro Stadium',
    'Rwanda',
    'Attraction',
    'Good-sized area to start and end the International Kigali Peace Marathon, with plenty of seating for spectators.',
    'The Amahoro Stadium is a multi-purpose stadium in Kigali and the country''s largest. It is used mostly for football matches and also hosts concerts and public events. It has a significant history as a place of refuge for thousands of Tutsi during the 1994 Genocide.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/7c/9c/b9/caption.jpg?w=500&h=-1&s=1',
    NULL,
    4.2,
    '{"lat":-1.958,"lng":30.115}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-20',
    'Congo Nile Trail',
    'Rwanda',
    'Attraction',
    'A famous trail for hiking and biking that runs along the stunning shores of Lake Kivu.',
    'The Congo Nile Trail is a renowned trekking and biking route stretching along the scenic shores of Lake Kivu. It offers breathtaking landscapes, from terraced hillsides to small fishing villages, providing an immersive experience into rural Rwandan life and the beauty of the lake.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/c8/85/86/great-views-of-island.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-2.05,"lng":29.25}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-22',
    'The Ethnographic Museum',
    'Rwanda',
    'Attraction',
    'Tradition remains alive in this modern museum, tastefully displaying many examples of African life and culture.',
    'One of Africa''s finest ethnological collections, this museum in Huye houses seven galleries of historical, ethnographic, artistic, and archaeological artifacts. It offers a rich insight into the culture, traditions, and social history of Rwanda and its people.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/56/52/99/pre-1959-palace.jpg?w=500&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-2.597,"lng":29.742}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-24',
    'Murambi Genocide Memorial Center',
    'Rwanda',
    'Attraction',
    'A chilling and powerful memorial where thousands were killed, with preserved bodies and artifacts.',
    'The Murambi Genocide Memorial is one of the most powerful and disturbing memorials in Rwanda. Located at a former school where thousands of Tutsi were massacred, the site preserves many of the bodies in lime as a stark and unforgettable testament to the horrors of the genocide.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/47/aa/b0/hauptgebaude.jpg?w=500&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-2.463,"lng":29.569}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-29',
    '1000 Hills Distillery',
    'Rwanda',
    'Restaurant',
    'Founded in 2014 by two gentlemen with a love of fine whisky, stunning views and a strong sense of pride in working with local communities, 1000 Hills Distillery was born.',
    'Founded in 2014, 1000 Hills Distillery is a premier craft distillery in Kigali, making award-winning spirits with a strong sense of pride in working with local communities. Visitors can enjoy tours, tastings, and stunning views from their location, making it a unique culinary and cultural experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/72/77/9a/outside-sitting-area.jpg?w=500&h=400&s=1',
    NULL,
    4.4,
    '{"lat":-1.944,"lng":30.103}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-30',
    'Museum Ingabo',
    'Rwanda',
    'Attraction',
    'MUSEUM INGABO is the first private museum in Rwanda, established by a Rwandan Artist King NGABO. It’s a museum for African Storytelling and Art.',
    'MUSEUM INGABO is the first private museum in Rwanda, established by Rwandan artist King NGABO. It’s a museum for African storytelling and art, serving as a tribute to the resilience, diversity, and creativity of the continent. It offers a unique and personal perspective on African heritage.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/cf/80/9b/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-1.934,"lng":30.063}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-32',
    'Campaign Against Genocide Museum',
    'Rwanda',
    'Attraction',
    'A museum showcasing the military campaign that ended the 1994 Genocide against the Tutsi.',
    'Housed in the Parliament building, this museum provides a detailed account of the Rwanda Patriotic Army''s campaign to stop the genocide. It offers a military and political perspective on the events of 1994, highlighting the strategies and sacrifices made to end the atrocities.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/c7/43/26/this-one-of-collection.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-1.954,"lng":30.095}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-33',
    'Kandt House Museum',
    'Rwanda',
    'Attraction',
    'Historical museum presenting Rwanda''s colonial era through artifacts and bilingual displays, set in tranquil gardens with a reptile exhibit.',
    'Formerly the home of German explorer Richard Kandt, this museum presents Rwanda''s history from the colonial era. It features exhibits on the country''s natural history and social life, set in tranquil gardens. A reptile exhibit with live snakes is also part of the museum.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/9c/0e/92/der-garten-des-kandt.jpg?w=500&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-1.947,"lng":30.059}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-34',
    'Kigali City Tower',
    'Rwanda',
    'Attraction',
    'A modern architectural landmark in Kigali.',
    'Kigali City Tower is a mixed-use high-rise building that has become a symbol of Kigali''s rapid development. It features a shopping mall, cinema, offices, and restaurants, offering great views of the city from its upper floors. It''s a hub of modern life in the capital.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/dc/ca/cd/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.3,
    '{"lat":-1.948,"lng":30.061}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-38',
    'Ethnographic Museum Rwanda',
    'Rwanda',
    'Attraction',
    'One of the best museums in East Africa, offering a deep dive into Rwandan culture.',
    'Also known as the National Museum of Rwanda, this institution in Huye provides a comprehensive look into Rwandan history, culture, and traditions through its extensive collection of artifacts and exhibits. It''s considered one of the best ethnographic museums in East Africa.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/13/f8/86/2f/this-is-the-view-of-the.jpg?w=500&h=400&s=1',
    NULL,
    4.6,
    '{"lat":-2.597,"lng":29.742}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-42',
    'Volcanoes National Park Rwanda',
    'Rwanda',
    'Attraction',
    'Volcanoes National Park Rwanda is one of Africa’s most well-known national parks, the area is well-known for housing the rare, endemic, and critically endangered mountain gorillas.',
    'Volcanoes National Park is one of Africa’s most renowned national parks, famous for housing the critically endangered mountain gorillas. It is a key conservation area and a prime destination for gorilla trekking, offering a life-changing opportunity to see these magnificent creatures in their natural habitat.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/29/d9/38/golden-monkeys-are-striking.jpg?w=500&h=400&s=1',
    NULL,
    4.9,
    '{"lat":-1.463,"lng":29.493}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-44',
    'Lake Burera and Lake Ruhondo',
    'Rwanda',
    'Attraction',
    'Great birding on and around the lake (the former of which is best done via canoe, especially with Kingfisher Journeys...',
    'The twin lakes of Burera and Ruhondo are a stunning natural attraction in northern Rwanda. Separated by a narrow strip of land, they offer breathtaking views and opportunities for boat trips, canoeing, and birdwatching. The tranquil waters and surrounding hills create a picturesque and peaceful landscape.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/98/8b/a4/an-amazing-view-of-ruhondo.jpg?w=500&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.45,"lng":29.75}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-46',
    'Rusumo Falls',
    'Rwanda',
    'Attraction',
    'Waterfalls lovers, this is a great place to visit. The place has good historical background and indeed the waterfall is...',
    'Located on the border between Rwanda and Tanzania, Rusumo Falls on the Kagera River is a significant historical and geographical site. The falls are not only beautiful but are also known as a key crossing point during the 1994 Genocide, adding a layer of historical gravity to their natural beauty.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/bf/9c/86/rusumo-falls.jpg?w=500&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-2.383,"lng":30.783}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-47',
    'Nyamyumba Hot Springs',
    'Rwanda',
    'Attraction',
    'Natural hot springs on the shores of Lake Kivu.',
    'Nyamyumba Hot Springs are natural thermal springs located on the shores of Lake Kivu. They are a popular spot for locals and tourists seeking relaxation and the therapeutic properties of the warm, mineral-rich water. It''s a great place to unwind and enjoy the beautiful lake views.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/6e/8d/fc/caption.jpg?w=500&h=400&s=1',
    NULL,
    4.2,
    '{"lat":-2.062,"lng":29.287}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-51',
    'Parliament',
    'Rwanda',
    'Attraction',
    'An important landmark in Kigali, the Parliament building is not only the seat of government but also a site of historical significance, housing the Campaign Against Genocide Museum.',
    'An important landmark in Kigali, the Parliament building is not only the seat of government but also a site of historical significance. It houses the Campaign Against Genocide Museum and still bears the marks of the 1994 conflict, offering a powerful insight into the country''s recent history.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/85/ad/f8/parliament-building-showing.jpg?w=500&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-1.954,"lng":30.095}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-54',
    'Mount Karisimbi',
    'Rwanda',
    'Attraction',
    'The highest of the Virunga Mountains, offering a challenging but spectacular two-day trek.',
    'Mount Karisimbi, an inactive volcano, is the highest peak in the Virunga Mountains and the fifth highest in Africa. The two-day trek to its summit is strenuous but rewards hikers with stunning views of the surrounding volcanoes and a unique high-altitude environment. It''s an adventure for serious trekkers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/a6/61/8d/mount-mikeno-as-seen.jpg?w=500&h=400&s=1',
    NULL,
    4.7,
    '{"lat":-1.5,"lng":29.45}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-1',
    'Heaven Restaurant & Boutique Hotel',
    'Rwanda',
    'Hotel',
    'Peaceful hotel near downtown Kigali with spacious rooms, friendly staff, beautiful patios, and a relaxing pool. Features include two restaurants, banana beer classes, and proximity to local attractions.',
    'A peaceful boutique hotel near downtown Kigali, Heaven offers spacious rooms, friendly staff, beautiful patios, and a relaxing pool. It features two on-site restaurants, offers cultural experiences like banana beer making classes, and is conveniently located near local attractions.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/a3/c7/62/heaven-restaurant-boutique.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-1.958,"lng":30.061}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-2',
    'Hotel Des Mille Collines',
    'Rwanda',
    'Hotel',
    'Centrally located hotel in Kigali with historical significance, stunning outdoor spaces, pool area with exceptional views, and first-class dining. Known for excellent service and a relaxing atmosphere.',
    'Famous for its role in the film "Hotel Rwanda," this centrally located hotel has historical significance. It features stunning outdoor spaces, a pool area with exceptional views, and first-class dining. Known for its excellent service and relaxing atmosphere, it remains an iconic Kigali landmark.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/bc/70/dc/swimming-pool-facade.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.949,"lng":30.06}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-3',
    'Five To Five Hotel',
    'Rwanda',
    'Hotel',
    'Convenient hotel near Kigali Airport with free reliable shuttle service, clean and comfortable rooms, 24-hour dining, mosquito nets, and friendly staff. Quiet location with city views and great value.',
    'A convenient hotel near Kigali Airport, Five To Five offers a free reliable shuttle service. It provides clean and comfortable rooms, 24-hour dining, and friendly staff. Its quiet location with city views offers great value for travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/8a/27/06/five-to-five-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.954,"lng":30.123}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-4',
    'M Hotel',
    'Rwanda',
    'Hotel',
    'Serene hotel with spacious, clean rooms and stunning views. Offers delicious food, delightful ambiance, and convenient location. Features excellent service, well-maintained amenities, and room service.',
    'M Hotel is a serene and modern hotel with spacious, clean rooms and stunning views. It offers delicious food, a delightful ambiance, and a convenient location. Guests appreciate the excellent service, well-maintained amenities, and the availability of room service.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/33/4d/bb/swimming-pool.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.947,"lng":30.063}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-5',
    'Park Inn by Radisson Kigali',
    'Rwanda',
    'Hotel',
    'Modern hotel with clean rooms, well-maintained pool and gym, and diverse dining options. Features a popular breakfast buffet, business-friendly amenities, reliable internet, and friendly, attentive staff.',
    'A modern hotel offering clean rooms, a well-maintained pool and gym, and diverse dining options. It features a popular breakfast buffet, business-friendly amenities, and reliable internet. The friendly and attentive staff ensure a comfortable and pleasant stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/c5/aa/66/park-inn-by-radisson.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.952,"lng":30.063}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-6',
    'Four Points by Sheraton Kigali',
    'Rwanda',
    'Hotel',
    'Modern, clean hotel with spacious, tastefully decorated rooms and modern amenities. Features a Brew Pub, pool bar, and outstanding dining. Convenient location, ideal for business and leisure travelers.',
    'A modern and clean hotel with spacious, tastefully decorated rooms and up-to-date amenities. It features a unique Brew Pub, a relaxing pool bar, and outstanding dining. Its convenient location makes it ideal for both business and leisure travelers looking for a high-quality stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/3f/71/19/hotel-exterior-daytime.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.947,"lng":30.062}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-7',
    'Step Town Hotel',
    'Rwanda',
    'Hotel',
    'The breakfast that was included with my room was plenty & delicious, with eggs, toast, fresh fruits, fresh coffee, & juice. They have a good menu selection so I ended up having lunch & dinner here on my first day.',
    'Guests at Step Town Hotel enjoy a delicious and plentiful breakfast, which includes eggs, toast, fresh fruits, coffee, and juice. The hotel also offers a good menu selection for lunch and dinner, making it a convenient and tasty option for meals throughout the day.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/6f/72/f3/step-town-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-1.945,"lng":30.057}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-8',
    'Onomo Hotel Kigali',
    'Rwanda',
    'Hotel',
    'Modern hotel with stylish decor and picturesque views. Spacious, clean rooms, serene ambiance, and well-equipped facilities. Professional, hospitable staff and convenient for business travelers.',
    'A modern hotel with stylish decor and picturesque views. It offers spacious, clean rooms, a serene ambiance, and well-equipped facilities. The professional and hospitable staff make it a convenient and comfortable choice for business travelers.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/16/5e/94/pool-deck.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.944,"lng":30.058}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-9',
    '2000 Hotel',
    'Rwanda',
    'Hotel',
    'Breakfast buffet is rich, everything is available. It is right in the center, so you can easily walk to some of the museums, the German restaurant, cheap massage place, etc. I liked it here, good and safe base.',
    'This hotel offers a rich breakfast buffet with a wide selection. Its central location allows easy walking access to museums, restaurants, and other services. It provides a good and safe base for exploring Kigali on foot.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/79/6b/b6/2000-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.946,"lng":30.059}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-10',
    'The Manor Hotel',
    'Rwanda',
    'Hotel',
    'Elegant hotel with stunning Kigali views, spacious rooms, pool, sauna, restaurant, and bar. Quiet location near the airport and city center. Diverse menu with Indian and Italian cuisine.',
    'An elegant hotel offering stunning views of Kigali. It features spacious rooms, a pool, sauna, restaurant, and bar. Its quiet location is convenient to both the airport and the city center, and the diverse menu includes popular Indian and Italian cuisine.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/c4/ad/84/hotel-grounds.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.94,"lng":30.09}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-11',
    'Lake Kivu Serena Hotel',
    'Rwanda',
    'Hotel',
    'Lakeside retreat with lush grounds, large pool, and serene atmosphere. Features exceptional dining, a well-stocked gift shop, and attentive service. Ideal for relaxation, families, or business stays.',
    'A beautiful lakeside retreat with lush grounds, a large pool, and a serene atmosphere. It features exceptional dining, a well-stocked gift shop, and attentive service, making it an ideal choice for relaxation, family holidays, or business stays on the shores of Lake Kivu.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/4a/2b/c7/jet-skiing-on-lake-kivu.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-2.483,"lng":28.893}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-12',
    'Gloria Hotel',
    'Rwanda',
    'Hotel',
    'Excellent reception conditions, with very comfortable, clean rooms with excellent views. The staff is very friendly and professional, always available to make your stay as pleasant as possible.',
    'Gloria Hotel provides excellent reception conditions, with very comfortable, clean rooms offering excellent views. The staff is consistently described as friendly and professional, always available to make every guest''s stay as pleasant as possible.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/b5/3a/66/restaurant-area-also.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-1.946,"lng":30.061}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-13',
    'Nyungwe Top View Hotel',
    'Rwanda',
    'Hotel',
    'Hilltop hotel with stunning views of Lake Kivu and Nyungwe Forest. Spacious cottages with fireplaces, dining with a scenic terrace, and access to Nyungwe National Park''s canopy walks and chimpanzee trekking.',
    'This hilltop hotel offers stunning views of Lake Kivu and Nyungwe Forest. It features spacious cottages with fireplaces, dining with a scenic terrace, and provides easy access to Nyungwe National Park''s activities like the canopy walk and chimpanzee trekking.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/06/45/27/the-main-lodge-building.jpg?w=700&h=-1&s=1',
    NULL,
    4.2,
    '{"lat":-2.467,"lng":29.083}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-14',
    'Musanto Hotel',
    'Rwanda',
    'Hotel',
    'A comfortable hotel with a convenient location and friendly staff.',
    'A comfortable hotel with a convenient location and friendly staff. It provides a good base for exploring the surrounding area, with clean rooms and essential amenities for a pleasant stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/42/5f/99/vue-depuis-le-portail.jpg?w=700&h=-1&s=1',
    NULL,
    4.1,
    '{"lat":-1.713,"lng":29.563}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-15',
    'Nobilis Hotel & Apartments',
    'Rwanda',
    'Hotel',
    'Nobilis apartment was A haven in Kigali during our stay.The staff i repeat was quite helpful and maintained a happy smile everytime. Ambient rooms, quite some pretty outdoors though I had trouble with the water...',
    'Nobilis Hotel & Apartments provides a haven in Kigali with ambient rooms and pretty outdoor spaces. The staff are consistently praised for being helpful and maintaining a happy demeanor, contributing to a pleasant stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/8e/a6/2a/caption.jpg?w=700&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-1.942,"lng":30.063}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-16',
    'Mythos Boutique Hotel',
    'Rwanda',
    'Hotel',
    'Boutique hotel with spacious rooms, balconies, city views, serene pool, fitness center, and rooftop dining. Stunning decor blends modern and traditional styles. Known for great food and attentive service.',
    'This boutique hotel features spacious rooms with balconies and city views. It has a serene pool, fitness center, and rooftop dining. The stunning decor blends modern and traditional styles, and the hotel is known for its great food and attentive service.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/97/60/6e/mythos-boutique-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.956,"lng":30.06}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-17',
    'Nature Kigali',
    'Rwanda',
    'Hotel',
    'This is a great place to relax, have some tasty food while the kids play. Esper did a great job attending to us and following up on our requests.',
    'Nature Kigali is a great place for families to relax, offering tasty food and a play area for children. The attentive staff ensure a pleasant experience, making it a comfortable and enjoyable spot for a meal or a stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/36/04/e7/nature-kigali.jpg?w=700&h=-1&s=1',
    NULL,
    4.5,
    '{"lat":-1.954,"lng":30.096}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-18',
    'The Nest',
    'Rwanda',
    'Hotel',
    'The outdoor seating areas was really nice. There was fast, reliable wifi and staff were very friendly and helpful. Breakfast was included in the price of the hotel, I really enjoyed the fresh fruits and pancakes.',
    'The Nest offers nice outdoor seating areas, fast and reliable WiFi, and very friendly and helpful staff. The included breakfast, with fresh fruits and pancakes, is a highlight for many guests, providing a cozy and welcoming stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/30/7b/77/30/caption.jpg?w=700&h=-1&s=1',
    NULL,
    4.6,
    '{"lat":-1.957,"lng":30.061}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-19',
    'INZU Lodge',
    'Rwanda',
    'Hotel',
    'Calm atmosphere except for some music from neighbouring bars at the weekend. You will find everything you need at Inzu Lodge for a relaxing stay: great food, excellent cocktails and a beautiful souvenir shop.',
    'INZU Lodge offers a calm atmosphere for a relaxing stay, with great food, excellent cocktails, and a beautiful souvenir shop. While there can be some music from neighboring bars on weekends, it provides everything needed for a comfortable and enjoyable visit.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/3b/9a/e6/inzu-lodge-restaurant.jpg?w=700&h=-1&s=1',
    NULL,
    4.4,
    '{"lat":-2.483,"lng":28.894}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-20',
    'Gorillas Lake Kivu Hotel',
    'Rwanda',
    'Hotel',
    'A serene hotel on the shores of Lake Kivu, offering beautiful views and a relaxing atmosphere.',
    'A serene hotel on the shores of Lake Kivu, offering beautiful views and a relaxing atmosphere. With comfortable rooms and access to water-based activities, it''s a great base for exploring the Lake Kivu area.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/4a/7c/3a/gorillas-lake-kivu-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.3,
    '{"lat":-2.484,"lng":28.892}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-21',
    'Nyungwe Nziza Ecolodge',
    'Rwanda',
    'Hotel',
    'The relative lack of accommodation options near Nyungwe is a blessing and a curse. A blessing since the area is not overrun with tourists, but a curse since there are only a few accommodation options, and if you.',
    'As one of the few accommodation options near Nyungwe National Park, this ecolodge offers a unique experience. While options are limited, this means the area is not overrun with tourists, allowing for a more authentic and peaceful stay close to nature.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/31/b0/22/outdoor-leisure-world.jpg?w=700&h=-1&s=1',
    NULL,
    4,
    '{"lat":-2.483,"lng":29.183}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-22',
    'Palast Rock Hotel',
    'Rwanda',
    'Hotel',
    'A hotel offering basic amenities and a convenient location for travelers.',
    'A hotel offering basic amenities and a convenient location for travelers. It serves as a functional base for exploring the local area, with a focus on providing essential comforts.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/1e/e8/b4/palast-rock-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    3.8,
    '{"lat":-1.493,"lng":29.584}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-23',
    'Virunga Hotel',
    'Rwanda',
    'Hotel',
    'I was quite pleased with my stay here for a number of reasons. The hotel is set in the central business area so it was rather easy to go out for a walk and to do some shopping. A few shops near by sell the...',
    'Set in the central business area, Virunga Hotel allows for easy exploration on foot, with shopping and local amenities nearby. It offers a convenient and pleasant base for both business and leisure travelers in Musanze.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/36/92/c3/virunga-hotel.jpg?w=700&h=-1&s=1',
    NULL,
    4.2,
    '{"lat":-1.5,"lng":29.593}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-25',
    'Grazia Apartments',
    'Rwanda',
    'Hotel',
    'There is also a pool with a cafe which makes for a great common area for meetings.',
    'Grazia Apartments offers comfortable lodging with the added benefit of a pool and an on-site cafe. This creates a great common area for relaxing or holding informal meetings, adding value to the stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/f2/44/fd/such-a-lovely-place-to.jpg?w=700&h=-1&s=1',
    NULL,
    4,
    '{"lat":-1.948,"lng":30.088}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-28',
    'Radisson Blu Hotel & Convention Centre, Kigali',
    'Rwanda',
    'Hotel',
    'Sophisticated hotel offering comfort for both business and leisure travelers. Features a business lounge with excellent food and beverage selection. Standout service throughout, including a highly praised dining experience. Modern decor, comfortable seating areas, and lounge bar with extraordinary service. On-site restaurant and bar highly recommended for food quality and variety.',
    'A sophisticated hotel that offers comfort for both business and leisure travelers. It features a business lounge with an excellent food and beverage selection, modern decor, and comfortable seating. The standout service, including extraordinary service at the lounge bar, and high-quality dining make it a top choice in Kigali.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/bf/0e/3d/radisson-blu-hotel-convention.jpg?w=700&h=400&s=1',
    NULL,
    4.8,
    '{"lat":-1.954,"lng":30.091}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-29',
    'Kigali Marriott Hotel',
    'Rwanda',
    'Hotel',
    'Modern hotel in a central location with spacious, clean rooms and excellent dining options. Features an inviting pool, well-equipped gym, Executive Lounge, and relaxing ambiance. Ideal for business or leisure.',
    'This modern hotel in a central Kigali location offers spacious, clean rooms and excellent dining options. It features an inviting pool, a well-equipped gym, and an Executive Lounge. The relaxing ambiance makes it an ideal choice for both business and leisure travelers seeking comfort and convenience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/16/09/65/hotel-exterior.jpg?w=700&h=-1&s=1',
    NULL,
    4.8,
    '{"lat":-1.95,"lng":30.061}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-30',
    'Virunga Inn Resort & Spa',
    'Rwanda',
    'Hotel',
    'Luxurious lodge near Volcanoes National Park, ideal for gorilla trekking. Offers modern amenities, stunning volcano views, colorful gardens, spa services, fireplaces, outdoor showers, and exceptional service.',
    'A luxurious lodge near Volcanoes National Park, this resort is ideal for gorilla trekkers. It offers modern amenities, stunning volcano views from its colorful gardens, spa services, and rooms with fireplaces and outdoor showers. The exceptional service ensures a comfortable and memorable stay.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1e/17/b0/be/newest-modern-elegant.jpg?w=700&h=-1&s=1',
    NULL,
    4.9,
    '{"lat":-1.492,"lng":29.583}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;

INSERT INTO places (id, name, country, type, description, long_description, image, price_range, rating, coordinates) VALUES (
    'rw-hotel-31',
    'Da Vinci Gorilla Lodge',
    'Rwanda',
    'Hotel',
    'Rustic lodge near Volcanoes National Park, ideal for gorilla trekking. Cozy rooms with fireplaces, delicious food, and friendly staff. Unique touches include boot cleaning, foot massages, and visits from wildlife.',
    'A rustic lodge near Volcanoes National Park, Da Vinci is ideal for gorilla trekkers. It offers cozy rooms with fireplaces, delicious food, and friendly staff. Unique touches like complimentary boot cleaning and foot massages, along with visits from local wildlife, make for a special and authentic experience.',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/66/1b/4a/da-vinci-lodge.jpg?w=700&h=-1&s=1',
    NULL,
    4.7,
    '{"lat":-1.488,"lng":29.57}'
  ) ON CONFLICT (id) DO UPDATE SET
    name = EXCLUDED.name,
    country = EXCLUDED.country,
    type = EXCLUDED.type,
    description = EXCLUDED.description,
    long_description = EXCLUDED.long_description,
    image = EXCLUDED.image,
    price_range = EXCLUDED.price_range,
    rating = EXCLUDED.rating,
    coordinates = EXCLUDED.coordinates;


-- Destinations
INSERT INTO destinations (name, image) VALUES ('Uganda', 'https://images.unsplash.com/photo-1511210352317-062e10741634?q=80&w=2070&auto=format&fit=crop') ON CONFLICT (name) DO UPDATE SET image = EXCLUDED.image;
INSERT INTO destinations (name, image) VALUES ('Kenya', 'https://images.unsplash.com/photo-1516426122078-c23e76319801?q=80&w=2068&auto=format&fit=crop') ON CONFLICT (name) DO UPDATE SET image = EXCLUDED.image;
INSERT INTO destinations (name, image) VALUES ('Tanzania', 'https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?q=80&w=1974&auto=format&fit=crop') ON CONFLICT (name) DO UPDATE SET image = EXCLUDED.image;
INSERT INTO destinations (name, image) VALUES ('Zanzibar', 'https://images.unsplash.com/photo-1586861635167-e5223aadc9fe?q=80&w=1974&auto=format&fit=crop') ON CONFLICT (name) DO UPDATE SET image = EXCLUDED.image;
INSERT INTO destinations (name, image) VALUES ('Rwanda', 'https://images.unsplash.com/photo-1547407139-3c921a66005c?q=80&w=1974&auto=format&fit=crop') ON CONFLICT (name) DO UPDATE SET image = EXCLUDED.image;

-- Itineraries
INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'uganda-gorillas-savannah',
        'Uganda: Gorillas and Savannah Adventure',
        ARRAY['Uganda'],
        '10 Days / 9 Nights',
        'Experience the best of Uganda, from tracking majestic mountain gorillas in Bwindi Impenetrable Forest to thrilling game drives across the savannahs of Murchison Falls and Queen Elizabeth National Park.',
        'https://images.unsplash.com/photo-1594555249959-8c072a2772e6?q=80&w=2070&auto=format&fit=crop',
        '[{"day":1,"title":"Arrival in Entebbe","description":"Arrive at Entebbe International Airport, transfer to your hotel. Relax and recover from your journey. Optional visit to the Entebbe Botanical Gardens if time permits."},{"day":2,"title":"Murchison Falls National Park","description":"Drive to Murchison Falls National Park. In the afternoon, take a boat cruise on the Nile River to the base of the falls, spotting hippos, crocodiles, and diverse birdlife."},{"day":3,"title":"Game Drive and Top of the Falls","description":"Morning game drive in the northern sector of the park to see elephants, giraffes, lions, and more. In the afternoon, hike to the top of Murchison Falls for spectacular views."},{"day":4,"title":"Transfer to Kibale Forest","description":"A long drive south to the primate capital of the world, Kibale Forest National Park. Settle into your lodge and enjoy the sounds of the forest."},{"day":5,"title":"Chimpanzee Tracking in Kibale","description":"Morning chimpanzee tracking expedition in Kibale Forest. In the afternoon, a guided walk through the Bigodi Wetlands Sanctuary to see more primates and birds."},{"day":6,"title":"Queen Elizabeth National Park","description":"Transfer to Queen Elizabeth National Park. Enjoy a game drive en route. In the evening, relax at your lodge overlooking the savannah."},{"day":7,"title":"Kazinga Channel Boat Cruise","description":"Morning game drive in the Kasenyi plains. In the afternoon, take a famous boat cruise on the Kazinga Channel, known for its high concentration of hippos."},{"day":8,"title":"Journey to Bwindi","description":"Drive to Bwindi Impenetrable National Park through the scenic Ishasha sector, famous for its tree-climbing lions. Settle in and prepare for your gorilla trek."},{"day":9,"title":"Mountain Gorilla Tracking","description":"A once-in-a-lifetime experience tracking a family of mountain gorillas in the dense forest. Spend an hour observing them in their natural habitat. Return to the lodge for a well-earned rest."},{"day":10,"title":"Departure","description":"After breakfast, drive back to Entebbe or Kigali (Rwanda) for your departure flight, filled with memories of your Ugandan adventure."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'kenya-classic-safari',
        'Classic Kenya Safari',
        ARRAY['Kenya'],
        '8 Days / 7 Nights',
        'A classic safari through Kenya''s most famous parks. Witness the iconic landscapes of Amboseli with views of Kilimanjaro, the unique wildlife of Samburu, and the legendary plains of the Maasai Mara.',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/4e/5d/93/kenya.jpg?w=900&h=500&s=1',
        '[{"day":1,"title":"Arrival in Nairobi","description":"Arrive at Jomo Kenyatta International Airport. Transfer to your hotel. Depending on your arrival time, visit the Giraffe Centre or the Sheldrick Wildlife Trust."},{"day":2,"title":"Amboseli National Park","description":"Drive south to Amboseli National Park, known for its large elephant herds and stunning views of Mount Kilimanjaro. Afternoon game drive."},{"day":3,"title":"Full Day in Amboseli","description":"Morning and afternoon game drives in Amboseli. Explore the swamps, plains, and Observation Hill for panoramic views and incredible wildlife sightings."},{"day":4,"title":"Lake Naivasha","description":"Drive to Lake Naivasha in the Great Rift Valley. Enjoy a boat trip on the lake to see hippos and birdlife, followed by a walking safari on Crescent Island."},{"day":5,"title":"Maasai Mara National Reserve","description":"Journey to the world-renowned Maasai Mara National Reserve, home of the Great Migration. Afternoon game drive in search of the Big Five."},{"day":6,"title":"Exploring the Maasai Mara","description":"Full day dedicated to game viewing in the Maasai Mara. Follow the herds, watch predators in action, and soak in the vastness of the savannah. Optional hot air balloon safari at dawn."},{"day":7,"title":"Maasai Culture and Return to Nairobi","description":"Morning game drive. Visit a traditional Maasai village to learn about their culture and way of life. In the afternoon, drive back to Nairobi."},{"day":8,"title":"Departure","description":"Enjoy a final breakfast in Nairobi. Depending on your flight schedule, you can do some last-minute souvenir shopping before being transferred to the airport for your departure."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'tanzania-northern-circuit',
        'Tanzania Northern Circuit Expedition',
        ARRAY['Tanzania'],
        '9 Days / 8 Nights',
        'Discover the icons of northern Tanzania. This itinerary takes you through the elephant-filled Tarangire, the vast plains of the Serengeti, and the unique ecosystem of the Ngorongoro Crater.',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/a1/50/14/tanzania-safari.jpg?w=900&h=500&s=1',
        '[{"day":1,"title":"Arrival in Arusha","description":"Arrive at Kilimanjaro International Airport (JRO). Transfer to your lodge in Arusha to relax and prepare for your safari."},{"day":2,"title":"Tarangire National Park","description":"Drive to Tarangire National Park, famous for its large elephant herds and baobab trees. Enjoy an afternoon game drive along the Tarangire River."},{"day":3,"title":"Journey to the Serengeti","description":"Drive to the legendary Serengeti National Park. Game drive en route to your camp in the central Seronera region, a prime area for wildlife viewing."},{"day":4,"title":"Full Day in Central Serengeti","description":"Spend the entire day exploring the central Serengeti. This area is rich in wildlife year-round, with resident lion prides, leopards, and cheetahs."},{"day":5,"title":"Northern Serengeti (Seasonal)","description":"Depending on the time of year, you may head to the northern Serengeti to witness the Great Migration river crossings (July-October) or stay in the central area."},{"day":6,"title":"Ngorongoro Conservation Area","description":"After a morning game drive in the Serengeti, drive to the Ngorongoro Conservation Area. Check into a lodge perched on the crater rim with stunning views."},{"day":7,"title":"Ngorongoro Crater Floor","description":"Descend into the Ngorongoro Crater for a full day of game viewing. The crater floor is a microcosm of East African wildlife, including the rare black rhino."},{"day":8,"title":"Lake Manyara National Park","description":"Drive to Lake Manyara National Park. Known for its tree-climbing lions and flamingo-flocked lake. Enjoy a final game drive before heading back to Arusha."},{"day":9,"title":"Departure from Arusha","description":"Enjoy a leisurely breakfast in Arusha. Transfer to Kilimanjaro International Airport for your flight home."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'zanzibar-spice-island-getaway',
        'Zanzibar Spice Island Getaway',
        ARRAY['Zanzibar'],
        '7 Days / 6 Nights',
        'Relax and unwind on the idyllic beaches of Zanzibar. Explore the historic alleyways of Stone Town, visit a fragrant spice farm, and snorkel in the crystal-clear waters of the Indian Ocean.',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/ff/64/zanzibar-island.jpg?w=900&h=500&s=1',
        '[{"day":1,"title":"Arrival in Stone Town","description":"Arrive at Abeid Amani Karume International Airport. Transfer to your hotel in the heart of Stone Town, a UNESCO World Heritage site."},{"day":2,"title":"Historical Stone Town Tour","description":"Take a guided walking tour of Stone Town. Visit the House of Wonders, the Old Fort, Darajani Market, and the former Slave Market site."},{"day":3,"title":"Spice Farm and Jozani Forest","description":"Visit a local spice farm to see, smell, and taste tropical fruits and spices. In the afternoon, head to Jozani Forest to see the endemic Red Colobus monkeys."},{"day":4,"title":"Beach Relaxation in Nungwi","description":"Transfer to the northern tip of the island, Nungwi. Check into your beach resort and spend the day relaxing on the pristine white sands."},{"day":5,"title":"Ocean Adventures","description":"Enjoy a day of water activities. Go snorkeling or diving at the Mnemba Atoll, or take a traditional dhow boat for a sunset cruise."},{"day":6,"title":"South Coast Exploration","description":"Take a day trip to the south coast. Visit the famous The Rock Restaurant for lunch and explore the beautiful beaches of Paje or Jambiani."},{"day":7,"title":"Departure","description":"Enjoy a final swim or some last-minute souvenir shopping before transferring to the airport for your flight home."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'rwanda-land-of-a-thousand-hills',
        'Rwanda: Land of a Thousand Hills',
        ARRAY['Rwanda'],
        '8 Days / 7 Nights',
        'Discover the beauty and resilience of Rwanda. This journey takes you from the vibrant capital of Kigali to the misty rainforests of Nyungwe and the gorilla-inhabited volcanoes of the north.',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/97/00/5f/rwanda.jpg?w=900&h=500&s=1',
        '[{"day":1,"title":"Arrival in Kigali","description":"Arrive at Kigali International Airport. Transfer to your hotel and, if time allows, take a short tour of this clean and vibrant city."},{"day":2,"title":"Kigali City and Genocide Memorial","description":"Visit the Kigali Genocide Memorial for a poignant look into Rwanda''s history. Explore local markets like Kimironko and visit the Inema Art Center."},{"day":3,"title":"Nyungwe National Park","description":"Drive to Nyungwe National Park, a vast tract of ancient montane rainforest. Check into your lodge and enjoy the serene forest environment."},{"day":4,"title":"Chimpanzee Tracking and Canopy Walk","description":"Embark on an early morning chimpanzee tracking adventure. In the afternoon, experience the forest from above on the Nyungwe Canopy Walkway."},{"day":5,"title":"Journey to Volcanoes National Park","description":"Drive along the scenic shores of Lake Kivu towards Volcanoes National Park, home of the mountain gorillas. The journey offers stunning views of the \"thousand hills\"."},{"day":6,"title":"Gorilla Tracking in Volcanoes NP","description":"The highlight of your trip: trek through the bamboo forest to spend an unforgettable hour with a mountain gorilla family."},{"day":7,"title":"Golden Monkey Tracking or Dian Fossey Hike","description":"Choose between tracking the playful golden monkeys or hiking to the Dian Fossey Gorilla Fund Research Center and her gravesite. Return to Kigali in the afternoon."},{"day":8,"title":"Departure from Kigali","description":"Enjoy a final Rwandan coffee. Depending on your flight, do some last-minute shopping for local crafts before heading to the airport for your departure."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'kenya-big-five-safari',
        'Kenya: The Big Five Safari',
        ARRAY['Kenya'],
        '7 Days / 6 Nights',
        'A focused adventure to spot the legendary "Big Five" (Lion, Leopard, Elephant, Rhino, and Buffalo) in some of Kenya''s most prestigious wildlife reserves, including the Maasai Mara and Lake Nakuru.',
        'https://images.unsplash.com/photo-1557053503-391ce1245029?q=80&w=2070&auto=format&fit=crop',
        '[{"day":1,"title":"Arrival in Nairobi & Transfer to Ol Pejeta","description":"Arrive in Nairobi, meet your guide, and drive to Ol Pejeta Conservancy, a prime location for rhinos. Afternoon game drive and visit to the chimpanzee sanctuary."},{"day":2,"title":"Full Day in Ol Pejeta","description":"Spend the day exploring Ol Pejeta. With a high rhino population and other members of the Big Five, it''s an excellent start to your quest. Visit the Northern White Rhino enclosure."},{"day":3,"title":"Lake Nakuru National Park","description":"Drive to Lake Nakuru National Park, a rhino sanctuary famous for its flamingoes. Afternoon game drive to spot both black and white rhinos, as well as leopards."},{"day":4,"title":"Journey to the Maasai Mara","description":"After a morning game drive, travel to the iconic Maasai Mara National Reserve. Settle into your camp and enjoy the sounds of the African bush."},{"day":5,"title":"In Search of the Big Cats","description":"Full day of game drives in the Maasai Mara, focusing on finding the large lion prides and elusive leopards that inhabit the reserve."},{"day":6,"title":"Mara River and Buffalo Herds","description":"Explore the Mara River area, looking for large herds of buffalo and elephants. Enjoy a picnic lunch in the wild. Evening relaxation at the lodge."},{"day":7,"title":"Final Game Drive & Departure","description":"One last morning game drive to tick off any remaining Big Five sightings. After breakfast, drive back to Nairobi for your departure flight."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'uganda-primates-wildlife',
        'Uganda: Primates and Wildlife',
        ARRAY['Uganda'],
        '12 Days / 11 Nights',
        'An in-depth journey focusing on Uganda''s incredible primate diversity, including gorilla and chimp tracking, complemented by classic savannah safaris to see lions, elephants, and more.',
        'https://images.unsplash.com/photo-1648510398515-c4a7bda2d544?q=80&w=2070&auto=format&fit=crop',
        '[{"day":1,"title":"Arrival in Entebbe","description":"Welcome to Uganda! Arrive at Entebbe International Airport and transfer to your hotel. Relax by Lake Victoria."},{"day":2,"title":"To Murchison Falls NP","description":"Drive north to Murchison Falls National Park. Stop at the Ziwa Rhino Sanctuary en route to track white rhinos on foot."},{"day":3,"title":"Murchison Falls Game & Boat Safari","description":"Morning game drive to see savannah wildlife. Afternoon boat cruise on the Nile to the base of the powerful Murchison Falls."},{"day":4,"title":"Drive to Kibale Forest","description":"A scenic drive to Kibale Forest National Park, the primate capital of the world. Settle into your lodge nestled in the forest."},{"day":5,"title":"Chimpanzee Tracking in Kibale","description":"An exciting morning tracking chimpanzees. Afternoon visit to the Bigodi Wetland Sanctuary for more primate and bird watching."},{"day":6,"title":"Queen Elizabeth National Park","description":"Transfer to Queen Elizabeth National Park. Enjoy an evening game drive with views of the Rwenzori Mountains."},{"day":7,"title":"Kazinga Channel & Game Drive","description":"Morning game drive in search of lions and leopards. Afternoon boat safari on the Kazinga Channel, home to thousands of hippos and birds."},{"day":8,"title":"Ishasha''s Tree-Climbing Lions","description":"Drive south to the Ishasha sector of Queen Elizabeth NP, renowned for its tree-climbing lions. Game drive to find them lounging in fig trees."},{"day":9,"title":"To Bwindi Impenetrable Forest","description":"Journey to the misty hills of Bwindi Impenetrable National Park. Relax and prepare for the ultimate primate encounter."},{"day":10,"title":"Mountain Gorilla Tracking","description":"The highlight of your trip! A guided trek into the forest to spend an awe-inspiring hour with a mountain gorilla family."},{"day":11,"title":"Lake Bunyonyi Relaxation","description":"Drive to the stunning Lake Bunyonyi, the \"place of little birds.\" Relax, swim, or take a canoe trip on this beautiful, tranquil lake."},{"day":12,"title":"Departure","description":"After a final breakfast overlooking the lake, drive back to Entebbe or Kigali for your international flight."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;

INSERT INTO itineraries (id, title, countries, duration, description, image, daily_breakdown) VALUES (
        'kenya-tanzania-migration-spectacular',
        'Kenya & Tanzania: The Migration Spectacular',
        ARRAY['Kenya', 'Tanzania'],
        '14 Days / 13 Nights',
        'The ultimate East African safari, combining the best of Kenya and Tanzania. Follow the Great Migration from the Maasai Mara to the Serengeti and explore the magnificent Ngorongoro Crater.',
        'https://images.unsplash.com/photo-1534577482862-4f87453de298?q=80&w=1974&auto=format&fit=crop',
        '[{"day":1,"title":"Arrival in Nairobi, Kenya","description":"Arrive at Jomo Kenyatta Airport, Nairobi. Transfer to your hotel for an overnight stay."},{"day":2,"title":"Amboseli National Park","description":"Drive to Amboseli National Park, famous for its elephant herds against the backdrop of Mt. Kilimanjaro. Afternoon game drive."},{"day":3,"title":"To Tanzania - Arusha","description":"Morning game drive, then cross the border into Tanzania at Namanga. Drive to Arusha to relax before your Tanzanian safari leg."},{"day":4,"title":"Tarangire National Park","description":"Drive to Tarangire National Park for a full day of game viewing. Known for its baobab trees and large elephant population."},{"day":5,"title":"Into the Serengeti","description":"Journey to the vast plains of Serengeti National Park. Game drive en route to your camp in the central Seronera area."},{"day":6,"title":"Central Serengeti Exploration","description":"Full day exploring the Seronera Valley, a wildlife hotspot with a high density of big cats and resident game."},{"day":7,"title":"Following the Migration North","description":"Travel towards the northern Serengeti, tracking the Great Wildebeest Migration herds. This area is famous for dramatic Mara River crossings (seasonal)."},{"day":8,"title":"Ngorongoro Crater Rim","description":"After a final morning game drive in the Serengeti, drive to the rim of the Ngorongoro Crater, a UNESCO World Heritage Site."},{"day":9,"title":"Ngorongoro Crater Floor","description":"Descend 600m into the crater for a spectacular day of game viewing. The crater is a natural enclosure for a dense population of wildlife."},{"day":10,"title":"Back to Kenya - The Maasai Mara","description":"Drive back to Arusha for a short flight to the Maasai Mara in Kenya, landing you right in the heart of the action."},{"day":11,"title":"Full Day in Maasai Mara","description":"Explore the Maasai Mara, the Kenyan side of the Serengeti ecosystem. Enjoy full-day game drives in search of the Big Five and migration action."},{"day":12,"title":"Mara River & Maasai Culture","description":"Another day exploring the Mara, focusing on the Mara River. In the evening, visit a local Maasai village to learn about their traditional lifestyle."},{"day":13,"title":"Return to Nairobi","description":"Enjoy a final game drive before flying from the Mara back to Nairobi. Enjoy a farewell dinner at a famous city restaurant."},{"day":14,"title":"Departure","description":"Transfer to Jomo Kenyatta International Airport for your flight home, carrying memories of an epic East African adventure."}]'
    ) ON CONFLICT (id) DO UPDATE SET
        title = EXCLUDED.title,
        countries = EXCLUDED.countries,
        duration = EXCLUDED.duration,
        description = EXCLUDED.description,
        image = EXCLUDED.image,
        daily_breakdown = EXCLUDED.daily_breakdown;
