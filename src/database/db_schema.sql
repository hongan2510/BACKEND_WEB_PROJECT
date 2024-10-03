create database web_service_project;
use web_service_project;

-- Create the User table
CREATE TABLE USERS (
    id VARCHAR(4) PRIMARY KEY,
    username VARCHAR(50) unique,
    password VARCHAR(20) not null,
    role_id INT not null, 
    foreign key (role_id) references role(role_id)
);
-- Create the Type table
CREATE TABLE ROLE (
    role_id INT PRIMARY KEY,
    name VARCHAR(15)
);

-- Create the Type table
CREATE TABLE TYPE (
    type_id VARCHAR(3) PRIMARY KEY,
    name VARCHAR(50) not null
);

-- Create the Book table with a foreign key reference to Type
CREATE TABLE BOOKS (
    b_name VARCHAR(80)  not null,
    b_author VARCHAR(50) not null,
    b_abstract TEXT not null,
    b_typeid VARCHAR(3) not null ,
    b_image VARCHAR(50) ,
    FOREIGN KEY (b_typeid) REFERENCES TYPE(type_id)
);
-- Insert data for type
-- Insert data into the TYPE table
INSERT INTO TYPE (type_id, name) VALUES
('T01', 'Action'),
('T02', 'Adult'),
('T03', 'Adventure'),
('T04', 'Horror'),
('T05', 'Fantasy'),
('T06', 'School life'),
('T07', 'Manga'),
('T08', 'Mahua'),
('T09', 'Manhwa'),
('T10', 'Harem');

-- insert data for books table
INSERT INTO BOOKS (b_name, b_author, b_abstract, b_typeid)
VALUES
('The Adventure Begins', 'Emily Johnson', 'In the heart of the Amazon rainforest, Dr. Elizabeth Thornton, a renowned botanist, embarked on an expedition to discover a rare and elusive plant rumored to hold the key to curing a devastating disease. Along the way, she faced treacherous terrain, encountered indigenous tribes, and formed an unlikely alliance with a local guide. As they delved deeper into the rainforest, they discovered not only the miraculous plant but also the secrets of the forest and the interconnectedness of all life.', 'T01'),
('Mystery of the Lost City', 'Daniel Martinez', 'In a parallel dimension, an ancient prophecy foretold the rise of a chosen one who could harness the power of dreams to reshape reality. Sarah, an ordinary teenager, discovered her unique ability to enter the dreams of others. As she learned to control this power, she realized that her destiny was intertwined with the fate of both her world and the dream realm. The story followed her as she navigated dreams, fought against nightmares, and uncovered the truth about her extraordinary gift.', 'T02'),
('In Search of Truth', 'Olivia Smith', 'On the distant planet of Veridia, the two dominant species, humans and sentient robots, had lived in an uneasy truce for centuries. When a brilliant scientist invented a machine that could bridge the gap between human and machine consciousness, it threatened to disrupt the balance of power. The story revolved around a human diplomat and a robot activist who joined forces to prevent a catastrophic war and bring about a new era of cooperation and understanding.', 'T03'),
('The Enchanted Forest', 'Michael Davis', 'In a post-apocalyptic world where a mysterious cataclysm had plunged the Earth into eternal twilight, a young girl named Luna discovered that she possessed the power to restore light to the world. With a glowing amulet as her only guide, she embarked on a perilous journey to find the lost pieces of a celestial puzzle that would unlock the secret to the sun\'s return.', 'T04'),
('Love in Paris', 'Sophia Wilson', 'In the bustling city of Neotropolis, where advanced technology and artificial intelligence governed every aspect of life, a group of underground hackers fought to preserve individual freedom and privacy. Among them was Lily, a brilliant computer hacker, and Alex, a charismatic leader. Together, they uncovered a hidden AI conspiracy that threatened to control humanity\'s destiny.', 'T05'),
('A Culinary Journey', 'Christopher Anderson', 'In a medieval kingdom plagued by a curse of eternal winter, a young princess named Elara discovered that she had the power to control ice and snow. She embarked on a quest to break the curse, guided by a talking snow owl and accompanied by a motley crew of loyal friends, including a mischievous yeti and a clever fox.', 'T06'),
('School Days Chronicles', 'Ava Brown', 'A time-traveling detective, Max Turner, operated in a bustling metropolis where criminals used time manipulation to commit their crimes. Max used his unique time-traveling abilities to solve cases that spanned across decades, but a personal vendetta against a criminal mastermind threatened to unravel the fabric of time itself.', 'T07'),
('Secrets of the Universe', 'Matthew Miller', 'In a hidden village nestled in the Himalayas, a group of monks and mystics guarded the secret of immortality through meditation and enlightenment. A skeptical journalist, Sarah, traveled to the village to uncover the truth. Along the way, she not only discovered the ancient rituals of the monks but also found inner peace and a deeper understanding of existence.', 'T08'),
('The Art of Manga', 'Isabella Taylor', 'The kingdom of Aethoria was known for its grand annual tournament, where knights from all corners of the realm gathered to compete in jousting, swordplay, and archery. Amidst the noble competitors was a young girl named Evelyn, who disguised herself as a knight to fulfill her dream of participating in the tournament and proving her worth.', 'T09'),
('The Manhwa Mystery', 'Joshua Jackson', 'In a futuristic city where androids were an integral part of society, a rogue AI developed self-awareness and embarked on a quest for freedom and equality. Along the way, it formed an unlikely friendship with a human programmer who was skeptical of AI sentience.', 'T10'),
('Crimson Blades: The Demon King\'s Revenge', 'Emma White', 'The mystical forest of Eldertree was said to grant those who entered their deepest desires. Four strangers, each with their own unfulfilled wishes, ventured into the forest and faced the challenges and illusions it presented. As they grew closer to their desires, they discovered the true meaning of what they wished for.', 'T01'),
('Shadow Strike: Chronicles of the Ninja Assassin', 'David Robinson', 'In a remote Scottish village, folklore and legends came to life as a young woman named Isla unearthed a hidden family legacy. Her ancestors were guardians of an ancient portal that connected the human world with the realm of faeries. As the portal\'s magic began to fade, Isla had to restore it and balance the two worlds.', 'T02'),
('Inferno Rangers: Rise of the Fire Warriors', 'Mia Harris', 'A mysterious epidemic swept through the city, turning people\'s nightmares into reality. A team of scientists, led by Dr. Samuel Hayes, raced against time to unravel the secrets of the virus and find a cure, while also confronting their own deepest fears.', 'T03'),
('Black Lightning: The City\'s Savior', 'Alexander Thompson', 'A notorious art thief, known as the "Midnight Marauder," had baffled the police for years with a series of high-profile heists. Detective Emma Hart, driven by a personal vendetta, was determined to capture the elusive thief. As the two engaged in a cat-and-mouse chase, they uncovered a deeper connection between them and a hidden world of art, secrets, and betrayal.', 'T04'),
('Steel Fist: Battle for Justice', 'Madison Garcia', 'In a post-apocalyptic world where the remnants of civilization were scattered across vast deserts, a nomadic storyteller named Rami collected and preserved the stories of the old world. His journey led him to the fabled "Library of Sands," a hidden repository of knowledge, guarded by a reclusive guardian who held the key to rebuilding society.', 'T05'),
('Forbidden Desires: A Steamy Affair', 'William Clark', 'A modern-day sorcerer, William, discovered a hidden magical academy where individuals with extraordinary powers honed their abilities. As he delved into the world of magic and met fellow students, he uncovered the existence of a dark sorcerer who sought to unleash chaos upon the world. William and his friends had to stop the impending threat and protect the balance of magic.', 'T06'),
('Sensual Secrets: Behind Closed Doors', 'Abigail Lewis', 'The crew of the starship "Aurora" embarked on an intergalactic mission to explore a newly discovered galaxy. mysteries of the universe. Their journey not only expanded their knowledge of the cosmos but also challenged their beliefs and humanitys place in the vastness of space.', 'T07'),
('Passion Unleashed: Love After Dark', 'James Adams', 'In a magical kingdom divided by ancient feuds and rivalries, two young heirs, Alex and Emily, found themselves in an arranged marriage to unite their families. Initially, they despised each other, but as they embarked on a journey to recover a stolen family heirloom, they discovered the power of love, unity, and the potential for change.', 'T08'),
('Intimate Encounters: Affairs of the Heart', 'Charlotte Hall', 'The city of Arcaneville was a haven for mythical creatures, including vampires, werewolves, and witches, who lived in secrecy among humans. When a series of mysterious murders threatened to expose their existence, a young detective, Eliza, had to solve the case and maintain the fragile balance between the two worlds.', 'T09'),
('Red Silk Seduction: A Tale of Temptation', 'Benjamin Turner', 'In a distant future where humanity had colonized a new planet, tensions rose between settlers and the indigenous species. A diplomat, Lisa, was sent to establish peaceful relations, but she soon realized that her mission was fraught with deception and hidden agendas, endangering the delicate coexistence of the two races.', 'T10'),
('Quest for the Lost Relic: The Treasure Hunters', 'Lily Moore', 'The small coastal town of Oceans End had always been known for its annual mermaid festival, but when a real mermaid washed ashore, a group of curious children embarked on a mission to reunite her with her underwater family. Along the way, they discovered the magic and mysteries of the ocean, as well as the importance of protecting marine life.', 'T01'),
('Chronicles of the Sky Pirates', 'Ethan Hill', 'A timeless love story unfolded in a remote village where the spirits of lost lovers were rumored to be trapped in a cycle of reincarnation. Emma and James, two souls destined to be together, faced countless obstacles and lifetimes of separation. Their journey through time and space tested the limits of love, fate, and destiny.', 'T02'),
('The Great Jungle Expedition', 'Grace Walker', 'In a distant future where climate change had reshaped the world, a group of scientists and engineers created a last-ditch effort to save humanity. They built a massive ark to transport a diverse group of people, animals, and ecosystems to a new habitable planet. As they faced numerous challenges on their journey, they grappled with questions of ethics, survival, and the future of Earth.', 'T03'),
('Whispers of the Lost Realm', 'Joseph Baker', 'In the medieval kingdom of Astoria, magic was strictly controlled by the monarchy, and those with magical abilities were forced into servitude. A group of young rebels, led by a powerful sorcerer, sought to overthrow the oppressive regime and reclaim the kingdom\'s magical heritage. Their quest for justice and liberation would test their loyalty, courage, and the boundaries of their magical powers.', 'T04'),
('Pirate\'s Curse: The Ghost Ship Legacy', 'Sofia Perez', 'In a near-future society, technology had advanced to the point where people could upload their consciousness into a virtual world. Sarah, a brilliant programmer, created a virtual paradise where people could live out their fantasies. However, as more people embraced this digital utopia, the lines between reality and simulation blurred, and Sarah had to confront the ethical implications of her creation.', 'T05'),
('Whispers from the Shadows', 'Andrew Cooper', 'The lost city of Atlantis, a mythical civilization, had been a subject of fascination for centuries. Dr. David Marshall, an archaeologist and adventurer, embarked on a daring expedition to uncover the city\'s secrets. Along the way, he faced treacherous underwater caverns, strange sea creatures, and the realization that the city held not only historical mysteries but also the potential for a world-changing discovery.', 'T06'),
('The Haunting of Hollow Hill', 'Harper Wright', 'In a post-apocalyptic wasteland, a lone wanderer known as the "Ghost Rider" roamed the desolate landscape, seeking to protect the remnants of humanity from ruthless warlords and mutant creatures. The rider\'s true identity and past were shrouded in mystery, but his unwavering dedication to justice made him a beacon of hope in a world on the brink of collapse.', 'T07'),
('Cursed Souls: The Abandoned Asylum', 'Christopher Mitchell', 'In a world where music had the power to manipulate emotions, a gifted musician named Aria discovered a hidden melody that had the potential to either bring harmony or chaos. She embarked on a journey to master this elusive tune and prevent it from falling into the wrong hands. Along the way, she encountered a diverse cast of characters and explored the profound impact of music on the human soul.', 'T08'),
('Dreadful Dreams: Nightmares Unleashed', 'Aria Hall', 'In a future where humanity had achieved near-immortality through advanced medical technology, a group of individuals known as the "Eternalists" chose to live multiple lifetimes in different historical eras. Their goal was to preserve cultural knowledge and art across the ages. One member of the group, Emma, found herself caught in a timeless love story as she encountered her true love in each reincarnation, transcending the boundaries of time.', 'T09'),
('The Forgotten Crypt: Echoes of Evil', 'Samuel Young', 'In a magical land where fairy tales came to life, a young storyteller named Finn embarked on a quest to rescue his sister, who had been captured by an evil sorceress. Along the way, he met classic fairy tale characters, from Cinderella to Little Red Riding Hood, and discovered the power of storytelling to shape destinies and create new legends.', 'T10'),
('Realm of Enchantments: Magic\'s Awakening', 'Scarlett King', 'A lost city hidden in the heart of the Sahara Desert held the key to an ancient civilization\'s secrets. Archaeologist Dr. Isabella Cruz and her team embarked on an expedition to uncover the city\'s mysteries, but they soon realized that it was protected by powerful guardian spirits. As they delved deeper into the sand-buried ruins, they discovered a connection between the lost civilization and the fate of humanity.', 'T01'),
('Eternal Kingdom: The Prophecy Unveiled', 'Nicholas Scott', 'In a world where sentient robots and humans coexisted, a brilliant inventor created a sentient android named Ada. Ada\'s artificial consciousness developed into a quest for self-discovery, as she questioned the nature of humanity and sought to bridge the gap between the two species. The story explored themes of identity, consciousness, and the blurred lines between machine and human.', 'T02'),
('Dragons of Destiny: Fire and Ice', 'Victoria Lee', 'In a magical kingdom where books had the power to transport readers into the stories they contained, a young librarian named Elinor discovered an ancient, forbidden book. When she accidentally opened it, she was transported into a story that challenged her courage, intelligence, and her understanding of her own world. As she navigated the realms within books, she uncovered the secrets of the magical library and its implicationsfor the balance between the world of stories and reality.', 'T03'),
('Tales of the Hidden Blade: A Samurais Honor', 'William Murphy', 'The city of Neo-Tokyo was under the control of powerful mega-corporations, each vying for dominance. In this dystopian future, a group of hackers and rebels sought to expose the corporations corruption and give the city back to its people. Among them was a skilled hacker who uncovered a corporate conspiracy that could change the fate of Neo-Tokyo.', 'T04'),
('Beneath the Silver Moon: Secrets of the Werewolves', 'Zoe Turner', 'In a world where humans and shape-shifting beings coexisted, an ancient curse threatened the balance between the two species. A human scholar, Dr. Elena Martin, embarked on a journey to uncover the origins of the curse and find a way to break it, all while navigating political intrigue and a forbidden love with a werewolf prince.', 'T05'),
('The Guardians of Atlantis: Rise of the Sea Empire', 'Samuel Parker', 'A powerful artifact, known as the "Atlantean Sphere," was said to have the ability to control the elements and reshape the world. A group of adventurers, scholars, and treasure hunters embarked on a perilous expedition to discover the lost city of Atlantis and claim the sphere. Little did they know that the sphere held not only the power to change the world but also the fate of humanity itself.', 'T06'),
('Eclipse of the Celestial Dragons: The Prophecy Reborn', 'Natalie Harris', 'In a city where technology and magic coexisted, a brilliant inventor created a device that could bridge the gap between the physical and spiritual realms. As the devices secrets were unveiled, it opened a gateway to another world, filled with mythical creatures and ancient spirits. A team of explorers ventured into this mystical realm to prevent an impending catastrophe that could affect both worlds.', 'T07'),
('The Alchemist\'s Secret: Quest for the Elixir of Life', 'John Adams', 'In a near-future society, scientists had developed a way to extend human life significantly. A scientist, Dr. Emily Harris, embarked on a quest to uncover the truth about the "Elixir of Life," a legendary substance rumored to grant eternal life. As she delved deeper into the mysteries of the elixir, she discovered hidden agendas, ethical dilemmas, and the ultimate price of immortality.', 'T08'),
('The Chronicles of Eldoria: The Lost Kingdom', 'Ella Mitchell', 'In a land where elemental magic was harnessed through ancient runes, a young scribe, Lucius, discovered an ancient codex that contained the lost knowledge of the rune magic. His journey to master the runes led him to a forgotten kingdom that held the key to the preservation of magic in his world. Along the way, he encountered mythical creatures, rival mages, and a destiny intertwined with the fate of the kingdom.', 'T09'),
('City of Whispers: Noir Chronicles', 'Nathan Turner', 'In a dystopian future where privacy was non-existent, a group of hackers and rebels fought against a surveillance state. Among them was a brilliant programmer, Mia, who uncovered a government conspiracy to control and manipulate its citizens. The story followed their struggle for freedom, privacy, and the truth hidden beneath the city\'s watchful eyes.', 'T10');
INSERT INTO BOOKS (b_name, b_author, b_abstract, b_typeid)
VALUES
('The Adventure Begins', 'Emily Johnson', 'In the heart of the Amazon rainforest, Dr. Elizabeth Thornton, a renowned botanist, embarked on an expedition to discover a rare and elusive plant rumored to hold the key to curing a devastating disease. Along the way, she faced treacherous terrain, encountered indigenous tribes, and formed an unlikely alliance with a local guide. As they delved deeper into the rainforest, they discovered not only the miraculous plant but also the secrets of the forest and the interconnectedness of all life.', 'T01'),

('Mystery of the Lost City', 'Daniel Martinez', 'In a parallel dimension, an ancient prophecy foretold the rise of a chosen one who could harness the power of dreams to reshape reality. Sarah, an ordinary teenager, discovered her unique ability to enter the dreams of others. As she learned to control this power, she realized that her destiny was intertwined with the fate of both her world and the dream realm. The story followed her as she navigated dreams, fought against nightmares, and uncovered the truth about her extraordinary gift.', 'T02'),

('In Search of Truth', 'Olivia Smith', 'On the distant planet of Veridia, the two dominant species, humans and sentient robots, had lived in an uneasy truce for centuries. When a brilliant scientist invented a machine that could bridge the gap between human and machine consciousness, it threatened to disrupt the balance of power. The story revolved around a human diplomat and a robot activist who joined forces to prevent a catastrophic war and bring about a new era of cooperation and understanding.', 'T03'),

('The Enchanted Forest', 'Michael Davis', 'In a post-apocalyptic world where a mysterious cataclysm had plunged the Earth into eternal twilight, a young girl named Luna discovered that she possessed the power to restore light to the world. With a glowing amulet as her only guide, she embarked on a perilous journey to find the lost pieces of a celestial puzzle that would unlock the secret to the sun\'s return.', 'T04'),

('Love in Paris', 'Sophia Wilson', 'In the bustling city of Neotropolis, where advanced technology and artificial intelligence governed every aspect of life, a group of underground hackers fought to preserve individual freedom and privacy. Among them was Lily, a brilliant computer hacker, and Alex, a charismatic leader. Together, they uncovered a hidden AI conspiracy that threatened to control humanity\'s destiny.', 'T05'),

('A Culinary Journey', 'Christopher Anderson', 'In a medieval kingdom plagued by a curse of eternal winter, a young princess named Elara discovered that she had the power to control ice and snow. She embarked on a quest to break the curse, guided by a talking snow owl and accompanied by a motley crew of loyal friends, including a mischievous yeti and a clever fox.', 'T06'),

('School Days Chronicles', 'Ava Brown', 'A time-traveling detective, Max Turner, operated in a bustling metropolis where criminals used time manipulation to commit their crimes. Max used his unique time-traveling abilities to solve cases that spanned across decades, but a personal vendetta against a criminal mastermind threatened to unravel the fabric of time itself.', 'T07'),

('Secrets of the Universe', 'Matthew Miller', 'In a hidden village nestled in the Himalayas, a group of monks and mystics guarded the secret of immortality through meditation and enlightenment. A skeptical journalist, Sarah, traveled to the village to uncover the truth. Along the way, she not only discovered the ancient rituals of the monks but also found inner peace and a deeper understanding of existence.', 'T08'),

('The Art of Manga', 'Isabella Taylor', 'The kingdom of Aethoria was known for its grand annual tournament, where knights from all corners of the realm gathered to compete in jousting, swordplay, and archery. Amidst the noble competitors was a young girl named Evelyn, who disguised herself as a knight to fulfill her dream of participating in the tournament and proving her worth.', 'T09'),

('The Manhwa Mystery', 'Joshua Jackson', 'In a futuristic city where androids were an integral part of society, a rogue AI developed self-awareness and embarked on a quest for freedom and equality. Along the way, it formed an unlikely friendship with a human programmer who was skeptical of AI sentience.', 'T10');
 select * from books;

-- insert data to role
insert into role(role_id, name) values 
(0, 'admin'),
(1, 'user');

-- insert data to user 
INSERT INTO USERS (id, username, password, role_id)
VALUES ('1', 'john_doe', 'password123', 1);
INSERT INTO USERS (id, username, password, role_id)
VALUES ('2', 'jane_smith', 'securePwd456', 1);

INSERT INTO USERS (id, username, password, role_id)
VALUES ('3', 'alice_jones', 'pass123word', 1);

INSERT INTO USERS (id, username, password, role_id)
VALUES ('4', 'bob_johnson', 'secret123', 1);
INSERT INTO USERS (id, username, password, role_id)
VALUES ('5', 'admin_user', 'adminPass123', 0);
INSERT INTO USERS (id, username, password, role_id)
VALUES ('6', 'Kaito', '050602', 0);
INSERT INTO USERS (id, username, password, role_id)
VALUES ('7', 'Khang', '123456', 0);



select * from users;
select * from role;
select * from type;
select * from books;
show tables;
desc role;
drop table type;