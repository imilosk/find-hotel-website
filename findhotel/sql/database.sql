DROP TABLE Reservation;
DROP TABLE Rooms;
DROP TABLE Hotels;
DROP TABLE Countries;

CREATE TABLE [Countries] (
  [id] int  NOT NULL,
  PRIMARY KEY ([id]),
  [name] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [Hotels] (
  [id] int NOT NULL,
  PRIMARY KEY ([id]),
  [name] nvarchar(max) NOT NULL,
  [address] nvarchar(max) NOT NULL,
  [rating] int NOT NULL,
  [description] text NOT NULL,
  [wifi] int NOT NULL,
  [parking] int NOT NULL,
  [pet_allowed] int NOT NULL,
  [fitness] int NOT NULL,
  [food] int NOT NULL,
  [countryID] int NOT NULL,
  [price] int NOT NULL,
  [img1] nvarchar(max) NOT NULL,
  [img2] nvarchar(max) NOT NULL,
  FOREIGN KEY ([countryID]) REFERENCES Countries ([id])
)
GO

CREATE TABLE [Rooms] (
  [id] int NOT NULL,
  PRIMARY KEY ([id]),
  [name] nvarchar(max) NOT NULL,
  [description] text NOT NULL,
  [price] int NOT NULL,
  [img] nvarchar(max) NOT NULL,
  [hotelID] int NOT NULL,
  FOREIGN KEY ([hotelID]) REFERENCES Hotels ([id])
)
GO

CREATE TABLE [Reservation] (
  [id] int NOT NULL,
  PRIMARY KEY ([id]),
  [name] nvarchar(max) NOT NULL,
  [surname] nvarchar(max) NOT NULL,
  [email] nvarchar(max) NOT NULL,
  [dateFrom] date NOT NULL,
  [dateTo] date NOT NULL,
  [roomID] int NOT NULL,
  FOREIGN KEY ([roomID]) REFERENCES Rooms ([id])
)
GO

INSERT INTO [Countries] ([id], [name]) VALUES
(1, 'Slovenia'),
(2, 'Italy')
GO

INSERT INTO [Hotels] ([id], [name], [address], [rating], [description], [wifi], [parking], [pet_allowed], [fitness], [food], [countryID], [price], [img1], [img2]) VALUES
(1, 'Slon', 'Slovenska Cesta 34, Ljubljana', 4, 'Set in the heart of Ljubljana, the Best Western Premier Hotel Slon offers bright and colourful rooms, a spa area, an elegant restaurant and a well-known pastry shop. An extensive buffet breakfast with Italian Espresso Coffee is served in the stylish breakfast room. The 4-star superior rooms feature lavishly decorated interiors and luxurious bed linen. Each room is air conditioned and fitted with modern amenities. The hotel Spa & Fitness features a state-of-the-art fitness centre open 24/7, equipped with Technogym machines providing all the latest cardiovascular and weight training facilities, as well as relaxing saunas with tropical rain showers. A choice of 9 different Thai massage treatments at the hotel Thai Massage & Spa offers a chance to unwind and relax. The stylishly appointed Slon 1552 Restaurant with large windows overlooking the busy pedestrian part of the old town is a popular meeting place for both locals and hotel guests. It serves Slovene, Mediterranean and international cuisine accompanied by fine wines. Seasonal menus feature unusual and locally grown ingredients fresh from the marketplace. Daily menus featuring special 3-course lunches are offered as well, including vegetarian and vegan dishes. Wines and cocktails are served into the late hours. Hotel Slon Convention Centre comprises 5 multifunctional conference rooms, all well-lit by natural daylight and air conditioned. They are also partitionable and therefore suitable for various meetings and events. In just a few steps you can reach the famous Three Bridges and other centrally located tourist attractions, business locations and major government offices in Ljubljana. This is our guests favourite part of Ljubljana, according to independent reviews. This property also has one of the best-rated locations in Ljubljana! Guests are happier about it compared to other properties in the area. Couples particularly like the location - they rated it 9.6 for a two-person trip. We speak your language!', 1, 1, 1, 0, 1, 1, 110, 'slon1.jpg', 'slon2.jpg'),
(2, 'Lev', 'Vosnjakova 1, Ljubljana', 4, 'The elegant Hotel Lev is in the heart of Ljubljana. It includes tastefully decorated and comfortable rooms, with views of Tivoli Park or the center of the city. The property is a 5-minute walk from the many interesting sites in the historic quarter, close to the attractive historic center and the business district. Hotel Lev provides 10 meeting and conference rooms on the 13th floor, with beautiful views around the city. On the ground floor, there is a conference and event hall which can host up to 400 participants. In this hall, working breakfasts, business lunches, gala dinners, receptions and parties can be organized. Savor modern cuisine with a Mediterranean touch in the exclusive a la carte restaurant Pri Levu or relax and enjoy casual conversation in the lobby bar. There is a shuttle bus service to and from the airport which can be reached in a 25-minute drive, for an additional fee. This is our guests favorite part of Ljubljana, according to independent reviews. Couples in particular like the location - they rated it 8.9 for a two-person trip. We speak your language!', 1, 1, 1, 1, 1, 1, 90, 'lev1.jpg', 'lev2.jpg'),
(3, 'Perla', 'Kidriceva Ulica 7, Nova Gorica', 4, 'Featuring free WiFi and a fitness center, Perla Casino & Hotel offers accommodations in Nova Gorica. There is a casino on site and guests can enjoy the on-site restaurant. Free private parking is available on site. Certain rooms have a private bathroom with a spa tub, and others have bathrobes and free toiletries. Certain accommodations include a sitting area where you can relax. A flat-screen TV is available. You will find a 24-hour front desk, gift shop, and shops at the property. The hotel also provides bike rental. Trieste is 35.4 km from Perla Casino & Hotel, and Portorož is 49.9 km away. The nearest airport is Brnik Airport, 69.2 km from the property. Couples in particular like the location - they rated it 8.5 for a two-person trip. We speak your language!', 1, 1, 0, 1, 1, 1, 150, 'perla1.jpg', 'perla2.jpg'),
(4, 'Corte Contarina', 'Castello 1931, Via Garibaldi, Castello, Venice', 3, 'Hotel Corte Contarina offers pet-friendly accommodations in Venice. Guests can enjoy the on-site bar. Some accommodations feature a private bathroom with a spa tub, and others have free toiletries and a hairdryer. A terrace or balcony are featured in certain rooms. A flat-screen TV is featured. You will find a 24-hour front desk at the property. St. Mark Basilica is 1.1 km from Hotel Corte Contarina, and Teatro La Fenice is one kilometer away. The nearest airport is Marco Polo Airport, 8 km from Hotel Corte Contarina. Castello is a great choice for travelers interested in museums, culture and old-town exploration. This is our guests favorite part of Venice, according to independent reviews. Couples in particular like the location - they rated it 8.0 for a two-person trip. We speak your language!', 1, 0, 1, 0, 1, 2, 55, 'corte1.jpg', 'corte2.jpg');
GO

INSERT INTO [Rooms] ([id], [name], [description], [price], [img], [hotelID]) VALUES
(1, 'Executive Queen Room', 'Personal bathroom. Room Size 18 m². This double room features a minibar, air conditioning and bathrobe. Room Facilities: Minibar, Bathtub, Safe, Telephone, Air conditioning, Hairdryer, Suit press, Bathrobe, Radio, Desk, Free toiletries, Toilet, Bathroom, Extra long beds (> 6.5 ft), Heating Slippers, Cable channels, Carpeted, Flat-screen TV, Soundproof, View, Wake-up service, Wardrobe/Closet, Towels, Linens, Free WiFi!', 110, 'lev_room1.jpg', 2),
(2, 'Classic Single Room', ' Personal bathroom. Room Size 18 m². The single rooms are 194 ft² in size and feature a queen bed of 47 x 79 inches and city views. Room Facilities: Minibar, Shower, Bathtub, Safe, Telephone, Air conditioning, Hairdryer, Bathrobe, Radio, Desk, Free toiletries, Toilet, Bathroom, Heating, Slippers, Cable channels, Carpeted, Flat-screen TV, Wake-up service, Wardrobe/Closet, Towels, Linens, Free WiFi!', 85, 'lev_room2.jpg', 2),
(3, 'Comfort Double Room', 'Personal bathroom. Room size 23 m². This double room features a cable TV, bathrobe and soundproofing. Room facilities: Minibar, Bath, Safety Deposit Box, TV, Telephone, Air conditioning, Hairdryer, Bathrobe, Desk, Seating Area, Free toiletries, Toilet, Bathroom, Heating, Slippers, Cable Channels, Bath or Shower, Carpeted, Laptop safe, Flat-screen TV, Soundproofing, Hardwood/Parquet floors, Electric kettle, Wardrobe/Closet, Towels, Linen, Upper floors accessible by lift, Toilet paper, Bottle of water, Trash cans, Wine glasses, Shampoo, Body soap, Shower cap, Free WiFi!', 115, 'slon_room1.jpg', 1),
(4, 'Corner Suite with Balcony', 'Personal bathroom. Room size 55 m². Slon Corner Suites feature balconies and offer beautiful views of the Jakopic Promenade towards Tivoli Park and Tivoli Mansion. The suites have a living area separate from the bedroom. Luxurious Occitane bathroom amenities, a lavender pillow mist and a turn-down service are offered. There is an additional direct telephone in the bathroom. The bed is 200 x 200 cm, with 400-thread count silky cotton bed linen with duck down and feather duvet, mattress topper and anti-allergic soft or hard pillows. Room facilities: Tea/Coffee Maker, Minibar, Shower, Bath, Safety Deposit Box, TV, Telephone, Air conditioning, Hairdryer, Wake Up Service/Alarm Clock, Iron, Balcony, Bathrobe, Desk, Ironing Facilities, Seating Area, Free toiletries, Toilet, Bathroom, Heating, Slippers, Cable Channels, Laptop safe, Flat-screen TV, Sofa, Soundproofing, Hardwood/Parquet floors, Electric kettle, Wardrobe/Closet, Landmark view, Coffee machine, City view, Towels, Linen, Upper floors accessible by lift, Toilet paper, Bottle of water, Trash cans, Wine glasses, Shampoo, Body soap, Shower cap, Free WiFi!', 155, 'slon_room2.jpg', 1),
(5, 'Classic Twin Room', 'Personal bathroom. Room size 22 m². This air-conditioned room features a flat-screen satellite TV, a minibar and a desk. A private bathroom comes with a shower, a hairdryer and free toiletries. Room facilities: View, Telephone, Cable Channels, Flat-screen TV, Safety Deposit Box, Air conditioning, Desk, Seating Area, Heating, Carpeted, Wardrobe/Closet, Shower, Bath, Hairdryer, Bathrobe, Free toiletries, Toilet, Bathroom, Minibar, Wake Up Service/Alarm Clock, Towels, Linen, Upper floors accessible by lift, Free WiFi!', 115, 'perla_room1.jpg', 3),
(6, 'Superior Double Room', 'Personal bathroom. Room size 32 m². Bigger than most in Nova Gorica. This spacious air-conditioned room features a flat-screen satellite TV, a minibar and a desk. A private bathroom comes with a bathtub, a hairdryer and free toiletries. Room facilities: View, Telephone, Cable Channels, Flat-screen TV, Safety Deposit Box, Air conditioning, Desk, Seating Area, Heating, Carpeted, Wardrobe/Closet, Shower, Bath, Hairdryer, Bathrobe, Free toiletries, Toilet, Bathroom, Minibar, Wake Up Service/Alarm Clock, Towels, Linen, Upper floors accessible by lift, Free WiFi!', 150, 'perla_room2.jpg', 3),
(7, 'One-Bedroom Apartment', 'Personal bathroom. Apartment size: 48 m². Bigger than most in Venice. Apartment facilities: Balcony, City view, Flat-screen TV, Air conditioning, Desk, Ironing Facilities, Seating Area, Washing Machine, Private entrance, Sofa, Hardwood/Parquet floors, Wardrobe/Closet, Cleaning products, Clothes rack, Drying rack for clothing, Sofa bed, Bath, Hairdryer, Free toiletries, Toilet, Bathroom, Bidet, Toilet paper, Tea/Coffee Maker, Kitchenette, Microwave, Kitchen, Dining area, Kitchenware, Dining table, Towels, Linen, Upper floors accessible by stairs only, Private flat in building, Free WiFi!', 117, 'corte_room1.jpg', 4)
GO

INSERT INTO [Reservation] ([id], [name], [surname], [email], [dateFrom], [dateTo], [roomID]) VALUES
(1, 'Luka', 'Breza', 'ulica.una@gmail.com', '2017-12-30', '2017-12-31', 1)
GO