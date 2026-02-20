import type { Place } from './types';
export interface Itinerary {
    id: string;
    title: string;
    countries: Place['country'][];
    duration: string;
    description: string;
    image: string;
    dailyBreakdown: {
        day: number;
        title: string;
        description: string;
    }[];
}
export const itineraries: Itinerary[] = [
    {
        id: 'uganda-gorillas-savannah',
        title: 'Uganda: Gorillas and Savannah Adventure',
        countries: ['Uganda'],
        duration: '10 Days / 9 Nights',
        image: 'https://images.unsplash.com/photo-1594555249959-8c072a2772e6?q=80&w=2070&auto=format&fit=crop',
        description: 'Experience the best of Uganda, from tracking majestic mountain gorillas in Bwindi Impenetrable Forest to thrilling game drives across the savannahs of Murchison Falls and Queen Elizabeth National Park.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Entebbe', description: 'Arrive at Entebbe International Airport, transfer to your hotel. Relax and recover from your journey. Optional visit to the Entebbe Botanical Gardens if time permits.' },
            { day: 2, title: 'Murchison Falls National Park', description: 'Drive to Murchison Falls National Park. In the afternoon, take a boat cruise on the Nile River to the base of the falls, spotting hippos, crocodiles, and diverse birdlife.' },
            { day: 3, title: 'Game Drive and Top of the Falls', description: 'Morning game drive in the northern sector of the park to see elephants, giraffes, lions, and more. In the afternoon, hike to the top of Murchison Falls for spectacular views.' },
            { day: 4, title: 'Transfer to Kibale Forest', description: 'A long drive south to the primate capital of the world, Kibale Forest National Park. Settle into your lodge and enjoy the sounds of the forest.' },
            { day: 5, title: 'Chimpanzee Tracking in Kibale', description: 'Morning chimpanzee tracking expedition in Kibale Forest. In the afternoon, a guided walk through the Bigodi Wetlands Sanctuary to see more primates and birds.' },
            { day: 6, title: 'Queen Elizabeth National Park', description: 'Transfer to Queen Elizabeth National Park. Enjoy a game drive en route. In the evening, relax at your lodge overlooking the savannah.' },
            { day: 7, title: 'Kazinga Channel Boat Cruise', description: 'Morning game drive in the Kasenyi plains. In the afternoon, take a famous boat cruise on the Kazinga Channel, known for its high concentration of hippos.' },
            { day: 8, title: 'Journey to Bwindi', description: 'Drive to Bwindi Impenetrable National Park through the scenic Ishasha sector, famous for its tree-climbing lions. Settle in and prepare for your gorilla trek.' },
            { day: 9, title: 'Mountain Gorilla Tracking', description: 'A once-in-a-lifetime experience tracking a family of mountain gorillas in the dense forest. Spend an hour observing them in their natural habitat. Return to the lodge for a well-earned rest.' },
            { day: 10, title: 'Departure', description: 'After breakfast, drive back to Entebbe or Kigali (Rwanda) for your departure flight, filled with memories of your Ugandan adventure.' }
        ]
    },
    {
        id: 'kenya-classic-safari',
        title: 'Classic Kenya Safari',
        countries: ['Kenya'],
        duration: '8 Days / 7 Nights',
        image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/4e/5d/93/kenya.jpg?w=900&h=500&s=1',
        description: 'A classic safari through Kenya\'s most famous parks. Witness the iconic landscapes of Amboseli with views of Kilimanjaro, the unique wildlife of Samburu, and the legendary plains of the Maasai Mara.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Nairobi', description: 'Arrive at Jomo Kenyatta International Airport. Transfer to your hotel. Depending on your arrival time, visit the Giraffe Centre or the Sheldrick Wildlife Trust.' },
            { day: 2, title: 'Amboseli National Park', description: 'Drive south to Amboseli National Park, known for its large elephant herds and stunning views of Mount Kilimanjaro. Afternoon game drive.' },
            { day: 3, title: 'Full Day in Amboseli', description: 'Morning and afternoon game drives in Amboseli. Explore the swamps, plains, and Observation Hill for panoramic views and incredible wildlife sightings.' },
            { day: 4, title: 'Lake Naivasha', description: 'Drive to Lake Naivasha in the Great Rift Valley. Enjoy a boat trip on the lake to see hippos and birdlife, followed by a walking safari on Crescent Island.' },
            { day: 5, title: 'Maasai Mara National Reserve', description: 'Journey to the world-renowned Maasai Mara National Reserve, home of the Great Migration. Afternoon game drive in search of the Big Five.' },
            { day: 6, title: 'Exploring the Maasai Mara', description: 'Full day dedicated to game viewing in the Maasai Mara. Follow the herds, watch predators in action, and soak in the vastness of the savannah. Optional hot air balloon safari at dawn.' },
            { day: 7, title: 'Maasai Culture and Return to Nairobi', description: 'Morning game drive. Visit a traditional Maasai village to learn about their culture and way of life. In the afternoon, drive back to Nairobi.' },
            { day: 8, title: 'Departure', description: 'Enjoy a final breakfast in Nairobi. Depending on your flight schedule, you can do some last-minute souvenir shopping before being transferred to the airport for your departure.' }
        ]
    },
    {
        id: 'tanzania-northern-circuit',
        title: 'Tanzania Northern Circuit Expedition',
        countries: ['Tanzania'],
        duration: '9 Days / 8 Nights',
        image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/a1/50/14/tanzania-safari.jpg?w=900&h=500&s=1',
        description: 'Discover the icons of northern Tanzania. This itinerary takes you through the elephant-filled Tarangire, the vast plains of the Serengeti, and the unique ecosystem of the Ngorongoro Crater.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Arusha', description: 'Arrive at Kilimanjaro International Airport (JRO). Transfer to your lodge in Arusha to relax and prepare for your safari.' },
            { day: 2, title: 'Tarangire National Park', description: 'Drive to Tarangire National Park, famous for its large elephant herds and baobab trees. Enjoy an afternoon game drive along the Tarangire River.' },
            { day: 3, title: 'Journey to the Serengeti', description: 'Drive to the legendary Serengeti National Park. Game drive en route to your camp in the central Seronera region, a prime area for wildlife viewing.' },
            { day: 4, title: 'Full Day in Central Serengeti', description: 'Spend the entire day exploring the central Serengeti. This area is rich in wildlife year-round, with resident lion prides, leopards, and cheetahs.' },
            { day: 5, title: 'Northern Serengeti (Seasonal)', description: 'Depending on the time of year, you may head to the northern Serengeti to witness the Great Migration river crossings (July-October) or stay in the central area.' },
            { day: 6, title: 'Ngorongoro Conservation Area', description: 'After a morning game drive in the Serengeti, drive to the Ngorongoro Conservation Area. Check into a lodge perched on the crater rim with stunning views.' },
            { day: 7, title: 'Ngorongoro Crater Floor', description: 'Descend into the Ngorongoro Crater for a full day of game viewing. The crater floor is a microcosm of East African wildlife, including the rare black rhino.' },
            { day: 8, title: 'Lake Manyara National Park', description: 'Drive to Lake Manyara National Park. Known for its tree-climbing lions and flamingo-flocked lake. Enjoy a final game drive before heading back to Arusha.' },
            { day: 9, title: 'Departure from Arusha', description: 'Enjoy a leisurely breakfast in Arusha. Transfer to Kilimanjaro International Airport for your flight home.' }
        ]
    },
    {
        id: 'zanzibar-spice-island-getaway',
        title: 'Zanzibar Spice Island Getaway',
        countries: ['Zanzibar'],
        duration: '7 Days / 6 Nights',
        image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/ff/64/zanzibar-island.jpg?w=900&h=500&s=1',
        description: 'Relax and unwind on the idyllic beaches of Zanzibar. Explore the historic alleyways of Stone Town, visit a fragrant spice farm, and snorkel in the crystal-clear waters of the Indian Ocean.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Stone Town', description: 'Arrive at Abeid Amani Karume International Airport. Transfer to your hotel in the heart of Stone Town, a UNESCO World Heritage site.' },
            { day: 2, title: 'Historical Stone Town Tour', description: 'Take a guided walking tour of Stone Town. Visit the House of Wonders, the Old Fort, Darajani Market, and the former Slave Market site.' },
            { day: 3, title: 'Spice Farm and Jozani Forest', description: 'Visit a local spice farm to see, smell, and taste tropical fruits and spices. In the afternoon, head to Jozani Forest to see the endemic Red Colobus monkeys.' },
            { day: 4, title: 'Beach Relaxation in Nungwi', description: 'Transfer to the northern tip of the island, Nungwi. Check into your beach resort and spend the day relaxing on the pristine white sands.' },
            { day: 5, title: 'Ocean Adventures', description: 'Enjoy a day of water activities. Go snorkeling or diving at the Mnemba Atoll, or take a traditional dhow boat for a sunset cruise.' },
            { day: 6, title: 'South Coast Exploration', description: 'Take a day trip to the south coast. Visit the famous The Rock Restaurant for lunch and explore the beautiful beaches of Paje or Jambiani.' },
            { day: 7, title: 'Departure', description: 'Enjoy a final swim or some last-minute souvenir shopping before transferring to the airport for your flight home.' }
        ]
    },
    {
        id: 'rwanda-land-of-a-thousand-hills',
        title: 'Rwanda: Land of a Thousand Hills',
        countries: ['Rwanda'],
        duration: '8 Days / 7 Nights',
        image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/97/00/5f/rwanda.jpg?w=900&h=500&s=1',
        description: 'Discover the beauty and resilience of Rwanda. This journey takes you from the vibrant capital of Kigali to the misty rainforests of Nyungwe and the gorilla-inhabited volcanoes of the north.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Kigali', description: 'Arrive at Kigali International Airport. Transfer to your hotel and, if time allows, take a short tour of this clean and vibrant city.' },
            { day: 2, title: 'Kigali City and Genocide Memorial', description: 'Visit the Kigali Genocide Memorial for a poignant look into Rwanda\'s history. Explore local markets like Kimironko and visit the Inema Art Center.' },
            { day: 3, title: 'Nyungwe National Park', description: 'Drive to Nyungwe National Park, a vast tract of ancient montane rainforest. Check into your lodge and enjoy the serene forest environment.' },
            { day: 4, title: 'Chimpanzee Tracking and Canopy Walk', description: 'Embark on an early morning chimpanzee tracking adventure. In the afternoon, experience the forest from above on the Nyungwe Canopy Walkway.' },
            { day: 5, title: 'Journey to Volcanoes National Park', description: 'Drive along the scenic shores of Lake Kivu towards Volcanoes National Park, home of the mountain gorillas. The journey offers stunning views of the "thousand hills".' },
            { day: 6, title: 'Gorilla Tracking in Volcanoes NP', description: 'The highlight of your trip: trek through the bamboo forest to spend an unforgettable hour with a mountain gorilla family.' },
            { day: 7, title: 'Golden Monkey Tracking or Dian Fossey Hike', description: 'Choose between tracking the playful golden monkeys or hiking to the Dian Fossey Gorilla Fund Research Center and her gravesite. Return to Kigali in the afternoon.' },
            { day: 8, title: 'Departure from Kigali', description: 'Enjoy a final Rwandan coffee. Depending on your flight, do some last-minute shopping for local crafts before heading to the airport for your departure.' }
        ]
    },
    {
        id: 'kenya-big-five-safari',
        title: 'Kenya: The Big Five Safari',
        countries: ['Kenya'],
        duration: '7 Days / 6 Nights',
        image: 'https://images.unsplash.com/photo-1557053503-391ce1245029?q=80&w=2070&auto=format&fit=crop',
        description: 'A focused adventure to spot the legendary "Big Five" (Lion, Leopard, Elephant, Rhino, and Buffalo) in some of Kenya\'s most prestigious wildlife reserves, including the Maasai Mara and Lake Nakuru.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Nairobi & Transfer to Ol Pejeta', description: 'Arrive in Nairobi, meet your guide, and drive to Ol Pejeta Conservancy, a prime location for rhinos. Afternoon game drive and visit to the chimpanzee sanctuary.' },
            { day: 2, title: 'Full Day in Ol Pejeta', description: 'Spend the day exploring Ol Pejeta. With a high rhino population and other members of the Big Five, it\'s an excellent start to your quest. Visit the Northern White Rhino enclosure.' },
            { day: 3, title: 'Lake Nakuru National Park', description: 'Drive to Lake Nakuru National Park, a rhino sanctuary famous for its flamingoes. Afternoon game drive to spot both black and white rhinos, as well as leopards.' },
            { day: 4, title: 'Journey to the Maasai Mara', description: 'After a morning game drive, travel to the iconic Maasai Mara National Reserve. Settle into your camp and enjoy the sounds of the African bush.' },
            { day: 5, title: 'In Search of the Big Cats', description: 'Full day of game drives in the Maasai Mara, focusing on finding the large lion prides and elusive leopards that inhabit the reserve.' },
            { day: 6, title: 'Mara River and Buffalo Herds', description: 'Explore the Mara River area, looking for large herds of buffalo and elephants. Enjoy a picnic lunch in the wild. Evening relaxation at the lodge.' },
            { day: 7, title: 'Final Game Drive & Departure', description: 'One last morning game drive to tick off any remaining Big Five sightings. After breakfast, drive back to Nairobi for your departure flight.' }
        ]
    },
    {
        id: 'uganda-primates-wildlife',
        title: 'Uganda: Primates and Wildlife',
        countries: ['Uganda'],
        duration: '12 Days / 11 Nights',
        image: 'https://images.unsplash.com/photo-1648510398515-c4a7bda2d544?q=80&w=2070&auto=format&fit=crop',
        description: 'An in-depth journey focusing on Uganda\'s incredible primate diversity, including gorilla and chimp tracking, complemented by classic savannah safaris to see lions, elephants, and more.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Entebbe', description: 'Welcome to Uganda! Arrive at Entebbe International Airport and transfer to your hotel. Relax by Lake Victoria.' },
            { day: 2, title: 'To Murchison Falls NP', description: 'Drive north to Murchison Falls National Park. Stop at the Ziwa Rhino Sanctuary en route to track white rhinos on foot.' },
            { day: 3, title: 'Murchison Falls Game & Boat Safari', description: 'Morning game drive to see savannah wildlife. Afternoon boat cruise on the Nile to the base of the powerful Murchison Falls.' },
            { day: 4, title: 'Drive to Kibale Forest', description: 'A scenic drive to Kibale Forest National Park, the primate capital of the world. Settle into your lodge nestled in the forest.' },
            { day: 5, title: 'Chimpanzee Tracking in Kibale', description: 'An exciting morning tracking chimpanzees. Afternoon visit to the Bigodi Wetland Sanctuary for more primate and bird watching.' },
            { day: 6, title: 'Queen Elizabeth National Park', description: 'Transfer to Queen Elizabeth National Park. Enjoy an evening game drive with views of the Rwenzori Mountains.' },
            { day: 7, title: 'Kazinga Channel & Game Drive', description: 'Morning game drive in search of lions and leopards. Afternoon boat safari on the Kazinga Channel, home to thousands of hippos and birds.' },
            { day: 8, title: 'Ishasha\'s Tree-Climbing Lions', description: 'Drive south to the Ishasha sector of Queen Elizabeth NP, renowned for its tree-climbing lions. Game drive to find them lounging in fig trees.' },
            { day: 9, title: 'To Bwindi Impenetrable Forest', description: 'Journey to the misty hills of Bwindi Impenetrable National Park. Relax and prepare for the ultimate primate encounter.' },
            { day: 10, title: 'Mountain Gorilla Tracking', description: 'The highlight of your trip! A guided trek into the forest to spend an awe-inspiring hour with a mountain gorilla family.' },
            { day: 11, title: 'Lake Bunyonyi Relaxation', description: 'Drive to the stunning Lake Bunyonyi, the "place of little birds." Relax, swim, or take a canoe trip on this beautiful, tranquil lake.' },
            { day: 12, title: 'Departure', description: 'After a final breakfast overlooking the lake, drive back to Entebbe or Kigali for your international flight.' }
        ]
    },
    {
        id: 'kenya-tanzania-migration-spectacular',
        title: 'Kenya & Tanzania: The Migration Spectacular',
        countries: ['Kenya', 'Tanzania'],
        duration: '14 Days / 13 Nights',
        image: 'https://images.unsplash.com/photo-1534577482862-4f87453de298?q=80&w=1974&auto=format&fit=crop',
        description: 'The ultimate East African safari, combining the best of Kenya and Tanzania. Follow the Great Migration from the Maasai Mara to the Serengeti and explore the magnificent Ngorongoro Crater.',
        dailyBreakdown: [
            { day: 1, title: 'Arrival in Nairobi, Kenya', description: 'Arrive at Jomo Kenyatta Airport, Nairobi. Transfer to your hotel for an overnight stay.' },
            { day: 2, title: 'Amboseli National Park', description: 'Drive to Amboseli National Park, famous for its elephant herds against the backdrop of Mt. Kilimanjaro. Afternoon game drive.' },
            { day: 3, title: 'To Tanzania - Arusha', description: 'Morning game drive, then cross the border into Tanzania at Namanga. Drive to Arusha to relax before your Tanzanian safari leg.' },
            { day: 4, title: 'Tarangire National Park', description: 'Drive to Tarangire National Park for a full day of game viewing. Known for its baobab trees and large elephant population.' },
            { day: 5, title: 'Into the Serengeti', description: 'Journey to the vast plains of Serengeti National Park. Game drive en route to your camp in the central Seronera area.' },
            { day: 6, title: 'Central Serengeti Exploration', description: 'Full day exploring the Seronera Valley, a wildlife hotspot with a high density of big cats and resident game.' },
            { day: 7, title: 'Following the Migration North', description: 'Travel towards the northern Serengeti, tracking the Great Wildebeest Migration herds. This area is famous for dramatic Mara River crossings (seasonal).' },
            { day: 8, title: 'Ngorongoro Crater Rim', description: 'After a final morning game drive in the Serengeti, drive to the rim of the Ngorongoro Crater, a UNESCO World Heritage Site.' },
            { day: 9, title: 'Ngorongoro Crater Floor', description: 'Descend 600m into the crater for a spectacular day of game viewing. The crater is a natural enclosure for a dense population of wildlife.' },
            { day: 10, title: 'Back to Kenya - The Maasai Mara', description: 'Drive back to Arusha for a short flight to the Maasai Mara in Kenya, landing you right in the heart of the action.' },
            { day: 11, title: 'Full Day in Maasai Mara', description: 'Explore the Maasai Mara, the Kenyan side of the Serengeti ecosystem. Enjoy full-day game drives in search of the Big Five and migration action.' },
            { day: 12, title: 'Mara River & Maasai Culture', description: 'Another day exploring the Mara, focusing on the Mara River. In the evening, visit a local Maasai village to learn about their traditional lifestyle.' },
            { day: 13, title: 'Return to Nairobi', description: 'Enjoy a final game drive before flying from the Mara back to Nairobi. Enjoy a farewell dinner at a famous city restaurant.' },
            { day: 14, title: 'Departure', description: 'Transfer to Jomo Kenyatta International Airport for your flight home, carrying memories of an epic East African adventure.' }
        ]
    }
];
