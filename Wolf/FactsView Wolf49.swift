

import SwiftUI

struct FactsViewWolf49: View {
    @State var timer: Timer?
    @State var selectedFact: FactWolf49? = factsWolf49.randomElement()!
    @State var showSheet = false
    
     var itemPrice: Double = 149.99
    var userPoints: Int = 350
    var isActiveUser: Bool = false
    var taskList: [String] = ["Finish homework", "Buy groceries", "Go for a run"]

    func applyDiscount(to price: Double, discount: Double) -> Double {
        return price - (price * discount / 100)
    }

    typealias cwefcwrfe = Int
    private struct Lewrfcw {}
    private class Mjiwdx {}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFontWolf49(size: 20, weight: .regular, color: .hex("A5FFFE"))
                                .padding(.top, 16)
                                .padding(.horizontal)
                            Spacer()
                            Text(fact.content)
                                .withFontWolf49(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFontWolf49(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = factsWolf49.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFontWolf49(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetViewWolf49
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetViewWolf49: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFontWolf49(size: 22, weight: .regular, color: .hex("A5FFFE"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFontWolf49(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("A5FFFE"))
                    
                    Rectangle()
                        .foregroundColor(.hex("402E43"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFontWolf49(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("402E43")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewWolf49(showLoadingWolf49: false, selectedTabWolf49: .facts)
}


struct FactWolf49 {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let factsWolf49: [FactWolf49] = [
    FactWolf49(
        title: "The Immensity of the Universe",
        content: "The universe is incomprehensibly vast. It is estimated to be about 93 billion light years in diameter, and it continues to expand. Within this vast expanse, there are approximately 100 billion galaxies, each containing millions or even billions of stars. This scale of size and distance is difficult for the human mind to grasp. The observable universe is just a fraction of the entire cosmos, leaving much still unknown."
    ),
    FactWolf49(
        title: "The Origin of Earth’s Water",
        content: "Earth's water may have originated from comets, asteroids, or ice-rich bodies in the early solar system. It is believed that during the planet's formation, volcanic activity and impacts from celestial bodies brought water to Earth’s surface. This process, called planetary accretion, played a key role in creating the conditions necessary for life to flourish. The presence of liquid water is one of the critical factors that distinguishes Earth from other planets."
    ),
    FactWolf49(
        title: "The Grand Canyon’s Geological History",
        content: "The Grand Canyon is one of the most iconic natural wonders in the world. It was carved by the Colorado River over millions of years, but its history goes far deeper. The rock formations that make up the canyon are over 2 billion years old, and they reveal a layered history of Earth’s geologic past. Some layers of the canyon hold fossils of ancient life, while others tell the story of tectonic activity that shaped the landscape we see today."
    ),
    FactWolf49(
        title: "The Mystery of Black Holes",
        content: "Black holes are one of the most fascinating and mysterious phenomena in space. They are regions where gravity is so strong that not even light can escape from them. Black holes are formed when massive stars collapse under their own gravity at the end of their life cycle. The event horizon of a black hole is the boundary beyond which nothing, not even light, can return. Despite their mysterious nature, scientists are studying black holes to understand their effect on the fabric of space-time and their role in the evolution of galaxies."
    ),
    FactWolf49(
        title: "The Great Barrier Reef: An Underwater Paradise",
        content: "The Great Barrier Reef, located off the coast of Queensland, Australia, is the largest living structure on Earth. Stretching over 2,300 kilometers, it is home to a diverse ecosystem that includes over 1,500 species of fish, 411 types of hard coral, and various marine mammals, birds, and reptiles. It is so vast that it can even be seen from space. The reef is a critical part of Earth’s biodiversity, providing shelter and food to countless marine species. However, it is currently under threat from climate change, pollution, and overfishing."
    ),
    FactWolf49(
        title: "The Human Brain: The Ultimate Computer",
        content: "The human brain is one of the most complex organs in the body and the most sophisticated biological computer in existence. It consists of approximately 86 billion neurons, each capable of forming thousands of connections with other neurons, creating an incredibly intricate network. The brain is responsible for everything from basic functions like breathing and heartbeat regulation to advanced processes such as reasoning, emotions, and memory. The brain’s plasticity allows it to adapt and reorganize, learning from experiences throughout life."
    ),
    FactWolf49(
        title: "The Mystery of Dark Matter and Dark Energy",
        content: "Around 85% of the mass of the universe is composed of dark matter and dark energy, two mysterious substances that we cannot see or directly detect. Dark matter doesn’t emit or absorb light, making it invisible to telescopes, but it has mass and exerts a gravitational pull on visible matter. Dark energy, on the other hand, is believed to be responsible for the accelerated expansion of the universe. While we don’t yet fully understand these phenomena, their existence is crucial to explaining the behavior and structure of the universe."
    ),
    FactWolf49(
        title: "The Speed of Light: A Universal Constant",
        content: "The speed of light in a vacuum is approximately 299,792 kilometers per second (186,282 miles per second), and it is considered one of the fundamental constants of nature. Nothing can travel faster than the speed of light, and it serves as a cosmic speed limit. This speed is not just an important aspect of physics, but it also plays a crucial role in our understanding of space and time. According to Einstein’s theory of relativity, as objects move closer to the speed of light, time slows down for them relative to observers at rest."
    ),
    FactWolf49(
        title: "The Evolution of Dinosaurs: From Terrifying Giants to Birds",
        content: "Dinosaurs once dominated Earth, and their evolution spans millions of years. They were diverse in size and form, ranging from the massive, ferocious Tyrannosaurus rex to the small, herbivorous Stegosaurus. However, the age of dinosaurs ended around 65 million years ago in a mass extinction event, likely caused by an asteroid impact. Interestingly, not all dinosaurs went extinct; modern birds are considered their descendants. Paleontologists continue to discover new fossil evidence, shedding light on the incredible evolutionary journey of these ancient creatures."
    ),
    FactWolf49(
        title: "The Solar System’s Largest Planet: Jupiter",
        content: "Jupiter is the largest planet in our solar system, with a diameter of about 143,000 kilometers. It is a gas giant, composed mainly of hydrogen and helium, with no solid surface. Jupiter’s massive size has a strong gravitational pull, which influences the orbits of nearby objects, including asteroids and comets. It has 79 known moons, with the four largest, known as the Galilean moons, being Io, Europa, Ganymede, and Callisto. Jupiter’s Great Red Spot, a massive storm, has been raging for over 350 years."
    ),
    FactWolf49(
        title: "The Importance of Rainforests in the Global Ecosystem",
        content: "Rainforests are vital to life on Earth. They cover less than 2% of the planet’s surface but are home to around 50% of the world’s species of plants, animals, and insects. Rainforests play a crucial role in regulating the global climate by absorbing large amounts of carbon dioxide and producing oxygen. They are also vital to the water cycle, influencing rainfall patterns around the world. However, rainforests are under threat from deforestation, and their loss could have disastrous consequences for both biodiversity and climate stability."
    ),
    FactWolf49(
        title: "The Mystery of Volcanoes",
        content: "Volcanoes are fascinating natural phenomena that occur when molten rock, ash, and gases from beneath the Earth's crust escape to the surface. They can form mountains or islands and are often associated with tectonic plate boundaries. The largest volcano on Earth is the Mauna Loa in Hawaii, which is also one of the most active. While volcanoes can be destructive, they are also essential for replenishing the Earth’s soil with rich minerals, supporting ecosystems, and creating new landforms."
    ),
    FactWolf49(
        title: "The Process of Photosynthesis",
        content: "Photosynthesis is a process through which plants, algae, and some bacteria convert light energy into chemical energy, allowing them to produce food from sunlight. This process primarily occurs in the chloroplasts of plant cells, using carbon dioxide, water, and light to produce glucose and oxygen. Photosynthesis is the foundation of most food chains and is critical to life on Earth, as it is responsible for generating oxygen and sustaining plant life, which in turn supports herbivores and carnivores."
    ),
    FactWolf49(
        title: "The Power of Tides: Ocean’s Natural Forces",
        content: "Tides are the periodic rise and fall of ocean water levels, caused by the gravitational pull of the moon and the sun. The strongest tides occur when the Earth, moon, and sun are aligned, creating either a spring tide (higher than normal tides) or a neap tide (lower than normal tides). Tides are an essential factor in coastal ecosystems, influencing feeding and breeding habits of marine organisms. They also impact human activities, such as shipping, fishing, and the use of tidal energy as a renewable resource."
    ),
    FactWolf49(
        title: "The Power of Hurricanes",
        content: "Hurricanes are powerful tropical storms that can cause widespread devastation. They form over warm ocean waters when moist air rises and creates a low-pressure area. As the air continues to rise, it spirals and creates strong winds and heavy rains. Hurricanes can cause flooding, storm surges, and wind damage when they make landfall. The strongest hurricanes are classified as Category 5, with winds exceeding 157 mph (252 km/h). These storms are among the most destructive forces in nature and can have long-lasting effects on affected regions."
    ),
    FactWolf49(
        title: "The Complex System of Human Circulation",
        content: "The human circulatory system, also known as the cardiovascular system, is a complex network that transports blood, oxygen, nutrients, and waste products throughout the body. It consists of the heart, blood vessels (arteries, veins, and capillaries), and blood. The heart pumps blood through this system, with the right side of the heart pumping deoxygenated blood to the lungs for oxygenation and the left side pumping oxygen-rich blood to the rest of the body. The circulatory system is essential for maintaining the body's homeostasis and supporting cellular function."
    ),
    FactWolf49(
        title: "The Role of Oceans in Earth’s Climate",
        content: "Oceans play a crucial role in regulating Earth's climate. They absorb large amounts of heat from the sun, helping to moderate temperatures by distributing warm and cold water around the globe. Ocean currents, such as the Gulf Stream, transport heat from the equator to the poles and vice versa, influencing weather patterns. Oceans also act as a major carbon sink, absorbing carbon dioxide from the atmosphere, which helps mitigate the effects of global warming. The health of our oceans is closely tied to the overall health of the planet."
    ),
    FactWolf49(
        title: "The Wonders of Human Memory",
        content: "Human memory is a remarkable system that allows us to encode, store, and retrieve information. It is divided into several types, including sensory memory (short-term), short-term memory (working memory), and long-term memory. Long-term memory, which can store vast amounts of information for extended periods, is further divided into explicit memory (conscious recall of facts and events) and implicit memory (unconscious recall of skills and experiences). The brain’s ability to form new memories is essential for learning and adapting to new environments."
    ),
    FactWolf49(
        title: "The Life Cycle of Stars",
        content: "Stars are born from clouds of gas and dust in space, known as nebulae. When a nebula collapses under gravity, it forms a protostar, which heats up and begins nuclear fusion. The process of fusion produces energy, causing the star to shine. Stars spend the majority of their lives in a stable phase, fusing hydrogen into helium. As stars age, they eventually exhaust their hydrogen fuel and begin fusing heavier elements. The end of a star's life can result in different outcomes, such as becoming a white dwarf, neutron star, or collapsing into a black hole, depending on the star’s mass."
    ),
    FactWolf49(
        title: "The Diversity of Life on Earth",
        content: "Earth is home to an estimated 8.7 million species of plants, animals, fungi, and microorganisms. The diversity of life on Earth is staggering, with species adapted to virtually every environment, from the deep ocean trenches to the highest mountain peaks. Biodiversity is essential for ecosystem health and resilience, providing ecosystem services such as pollination, water purification, and disease regulation. Human activities, however, are rapidly reducing biodiversity, and conservation efforts are critical to preserving the delicate balance of life on Earth."
    ),
    FactWolf49(
        title: "The Development of Modern Transportation",
        content: "Modern transportation systems have dramatically transformed human civilization, enabling global trade, travel, and communication. The development of the wheel, trains, automobiles, and airplanes has reduced travel times and facilitated the exchange of goods and culture. Today, technological innovations like electric vehicles, high-speed trains, and autonomous vehicles are shaping the future of transportation, making it more sustainable and efficient. Transportation infrastructure, such as roads, bridges, and airports, remains a key element in connecting the world and driving economic growth."
    ),
    FactWolf49(
        title: "The Origin of Life on Earth",
        content: "The origin of life on Earth remains one of the greatest mysteries in science. The most widely accepted theory is that life began around 3.5 to 4 billion years ago in the primordial soup of Earth’s oceans. Simple molecules formed more complex compounds, eventually leading to self-replicating molecules capable of evolving. Over time, these early life forms evolved into the vast diversity of species we see today. Scientists continue to explore the origins of life, studying ancient rocks, fossils, and extreme environments where life may still exist in forms similar to early Earth organisms."
    ),
    FactWolf49(
        title: "The Importance of Bees in Ecosystems",
        content: "Bees are essential pollinators that play a key role in the reproduction of many plants, including a vast number of crops that humans rely on for food. They transfer pollen from one flower to another, aiding in the fertilization process and helping to produce fruits, seeds, and plants. Without bees and other pollinators, many of the foods we take for granted, such as fruits, vegetables, and nuts, would become much less abundant. The decline in bee populations due to factors like pesticide use, habitat loss, and climate change has raised alarms about the future of food security."
    ),
    FactWolf49(
        title: "The Formation of the Grand Canyon",
        content: "The Grand Canyon, one of the most iconic natural landmarks in the world, was formed over millions of years by the erosive forces of the Colorado River. This vast canyon stretches over 277 miles (446 kilometers) and reaches depths of over 6,000 feet (1,800 meters). The process of erosion, combined with geological activity, exposed layers of rock that reveal Earth's history dating back over 2 billion years. Today, the Grand Canyon continues to be a site of scientific study and a major tourist attraction, showcasing the power of natural forces and time."
    ),
    FactWolf49(
        title: "The Immensity of the Universe",
        content: "The universe is incomprehensibly vast, with billions of galaxies, each containing millions or even billions of stars. Our own galaxy, the Milky Way, spans over 100,000 light-years in diameter, and it is just one of many in the observable universe. Light travels at a speed of approximately 186,000 miles per second (300,000 kilometers per second), yet it takes over 8 minutes for sunlight to reach Earth. Astronomers estimate that there are over 100 billion galaxies in the observable universe, and this number continues to grow as our observational tools become more advanced."
    ),
    FactWolf49(
        title: "The Mysteries of the Deep Ocean",
        content: "The deep ocean remains one of the least explored areas of our planet. It covers about 70% of Earth's surface and is home to countless undiscovered species, many of which possess unique adaptations to survive in extreme conditions, such as total darkness, high pressure, and near-freezing temperatures. The deepest part of the ocean, the Mariana Trench, plunges to about 36,000 feet (11,000 meters), deeper than Mount Everest is tall. Despite the challenges, scientists are increasingly exploring the deep ocean to better understand its ecosystems and the life forms that thrive there."
    ),
    FactWolf49(
        title: "The Evolution of the Human Brain",
        content: "The human brain is an incredibly complex organ, responsible for governing cognition, behavior, and all bodily functions. It weighs approximately 3 pounds (1.4 kilograms) and is made up of about 86 billion neurons. Over the course of evolution, the human brain has grown significantly in size and complexity compared to other species, with the neocortex, the part of the brain responsible for higher functions like thinking, decision-making, and language, being especially developed. The human brain continues to be a focal point for scientific research, as we strive to understand consciousness, memory, and the nature of intelligence."
    ),
    FactWolf49(
        title: "The Concept of Time",
        content: "Time is one of the most fundamental aspects of our universe, but it is also one of the most mysterious. Time, as we understand it, is a continuous progression from the past, through the present, and into the future. Albert Einstein's theory of relativity revolutionized our understanding of time, showing that it is not a constant, but can be affected by gravity and motion. In certain conditions, such as near massive objects like black holes, time can appear to slow down. While time is measured in seconds, minutes, and hours, its true nature remains an ongoing subject of philosophical and scientific inquiry."
    ),
    FactWolf49(
        title: "The Process of Plate Tectonics",
        content: "Plate tectonics is a scientific theory that explains the movement of Earth's lithosphere, which is broken into large plates that float on the semi-fluid asthenosphere beneath them. These plates move over time, causing earthquakes, volcanic eruptions, and the formation of mountains. Plate tectonics is responsible for shaping the Earth’s surface, with plate boundaries either colliding, separating, or sliding past each other. The movement of tectonic plates is driven by heat from the Earth's core, and understanding this process is crucial for studying natural disasters and the evolution of the planet's geography."
    ),
    FactWolf49(
        title: "The Wonders of the Great Barrier Reef",
        content: "The Great Barrier Reef, located off the coast of Australia, is the largest coral reef system in the world. Spanning over 1,400 miles (2,300 kilometers) and home to a vast array of marine life, the reef is a UNESCO World Heritage Site and one of the Seven Natural Wonders of the World. It is made up of over 2,900 individual reefs and 900 islands, and it provides habitat for thousands of species, including many that are endangered. However, the reef is under threat from climate change, pollution, and overfishing, making its preservation a global priority."
    ),
    FactWolf49(
        title: "The Impact of Light Pollution on Nature",
        content: "Light pollution, caused by excessive or misdirected artificial lighting, has a significant impact on both human health and the environment. It disrupts natural ecosystems, interfering with the migration patterns of birds, the reproductive cycles of insects like fireflies, and the feeding habits of nocturnal animals. Light pollution also affects human sleep patterns and can contribute to stress and other health issues. Efforts to reduce light pollution include using more energy-efficient lighting, shielding lights to reduce skyglow, and promoting awareness of the effects of artificial light on nature and human well-being."
    ),
    FactWolf49(
        title: "The Evolution of Technology: The Computer Age",
        content: "The development of computers has transformed nearly every aspect of modern life. The first computers were massive, room-sized machines, but as technology advanced, computers became smaller, more powerful, and accessible to the general public. The advent of the personal computer in the 1970s and 1980s marked a significant milestone in the Information Age, and today, computers are integral to everything from communication to business, entertainment, and scientific research. The rise of the internet, smartphones, and artificial intelligence is reshaping the way we interact with the world, and the future promises even more advancements."
    ),
    FactWolf49(
        title: "The Role of Gut Microbes in Human Health",
        content: "The human gut is home to trillions of microorganisms, including bacteria, fungi, viruses, and other microbes, collectively known as the gut microbiota. These microbes play a crucial role in digestion, immune system function, and even mental health. The balance of gut microbes can influence a person’s susceptibility to diseases like obesity, diabetes, and autoimmune disorders. Recent research suggests that gut microbes also affect mood and cognition, and an imbalance in these microbes has been linked to conditions such as depression and anxiety. Maintaining a healthy gut microbiome through diet, probiotics, and other factors is essential for overall health."
    ),
    FactWolf49(
        title: "The Diversity of Languages on Earth",
        content: "There are over 7,000 languages spoken around the world today, with some languages spoken by billions of people and others by only a few hundred. Languages are constantly evolving, and many are in danger of becoming extinct as younger generations switch to more widely spoken languages. Linguists study language families and historical relationships between languages to understand how they have developed over time. The diversity of languages reflects the richness of human culture and history, and preserving endangered languages is seen as a key aspect of protecting cultural heritage."
    ),
    FactWolf49(
        title: "The Power of the Sun",
        content: "The Sun, our closest star, is the primary source of energy for Earth. It produces energy through nuclear fusion, where hydrogen atoms fuse together to form helium, releasing an enormous amount of energy in the process. This energy travels to Earth in the form of sunlight, which powers everything from photosynthesis in plants to weather patterns. The Sun's gravitational pull also keeps our planet in orbit. However, the Sun is not eternal; in about 5 billion years, it will exhaust its fuel and expand into a red giant, eventually shedding its outer layers and transforming into a white dwarf."
    ),
    FactWolf49(
        title: "The Concept of Dark Matter",
        content: "Dark matter is one of the most intriguing mysteries in astrophysics. It is believed to make up about 85% of the mass of the universe, but it cannot be observed directly because it does not emit, absorb, or reflect light. Scientists infer its existence by observing its gravitational effects on visible matter, such as stars and galaxies. Dark matter is thought to play a critical role in the formation of galaxies and the structure of the universe. Despite numerous efforts to detect dark matter, it remains elusive, and its nature continues to be one of the biggest unsolved questions in modern physics."
    ),
    FactWolf49(
        title: "The Earth's Magnetic Field",
        content: "Earth's magnetic field is generated by the motion of molten iron and nickel in the outer core of the planet. This magnetic field acts as a protective shield, deflecting harmful solar radiation and cosmic rays from reaching the surface of the Earth. The field is not static; it fluctuates and even reverses over long periods of time. These reversals, known as geomagnetic reversals, have occurred many times throughout Earth's history. The magnetic field also plays a crucial role in navigation, as compasses rely on it to point north. Without Earth's magnetic field, life on Earth would be far more vulnerable to the effects of space weather."
    ),
    FactWolf49(
        title: "The Largest Living Organism on Earth",
        content: "The largest living organism on Earth is a fungus in Oregon's Malheur National Forest. Known as the 'Armillaria ostoyae' or honey fungus, this organism spans an area of over 2,385 acres (965 hectares), making it the largest known organism by area. The honey fungus lives primarily underground, where its network of mycelial threads spreads out to infect trees and other plants. Despite its size, the organism is not visible unless you come across its fruiting bodies, which are the mushrooms that emerge above ground. The honey fungus has been growing for thousands of years, making it not only the largest but also one of the oldest living organisms."
    ),
    FactWolf49(
        title: "The Phenomenon of Bioluminescence",
        content: "Bioluminescence is the ability of certain organisms to produce and emit light. This natural phenomenon occurs in a variety of creatures, including fireflies, certain fungi, deep-sea fish, and some types of plankton. The light is produced through a chemical reaction that involves the enzyme luciferase and the substrate luciferin. Bioluminescence serves various purposes, including attracting mates, deterring predators, and luring prey. In the deep ocean, where sunlight does not reach, bioluminescent creatures create a stunning, glowing environment. On land, fireflies use bioluminescence to communicate and attract mates, creating a beautiful spectacle on warm summer evenings."
    ),
    FactWolf49(
        title: "The Power of the Internet",
        content: "The internet has revolutionized the way humans communicate, work, and access information. What began as a military project in the late 1960s has evolved into a global network connecting billions of people. The internet allows for instant communication, information sharing, and access to entertainment, education, and commerce. As of today, over 4.9 billion people use the internet, which represents about 63% of the world's population. The internet has made it possible for individuals and businesses to collaborate across borders, but it has also raised concerns about privacy, security, and the spread of misinformation. The internet continues to evolve, with emerging technologies like artificial intelligence, virtual reality, and the Internet of Things shaping the future of our digital world."
    ),
    FactWolf49(
        title: "The History of Space Exploration",
        content: "Space exploration has been one of humanity's most ambitious endeavors. Starting with the launch of Sputnik 1 by the Soviet Union in 1957, the race to explore space began in earnest. The United States' Apollo program, culminating in the moon landing of Apollo 11 in 1969, marked a major milestone in space exploration. Since then, numerous spacecraft, rovers, and satellites have been sent to study planets, moons, and distant stars. Notable missions include the Voyager probes, which have now traveled beyond the solar system, and the Mars rovers, which continue to explore the Red Planet. Space exploration has expanded our understanding of the universe, but many mysteries remain, such as the existence of extraterrestrial life and the nature of dark matter."
    ),
    FactWolf49(
        title: "The Evolution of Flight",
        content: "The evolution of flight is a remarkable story of human ingenuity. The dream of flight dates back to ancient times, with early inventors and mythologies imagining machines that could soar through the air. However, it wasn't until the Wright brothers, Orville and Wilbur, successfully flew the first powered, controlled, and sustained flight on December 17, 1903, in Kitty Hawk, North Carolina, that human flight became a reality. Since then, aviation has advanced dramatically, with the development of commercial airliners, supersonic jets, and space exploration technologies. The progress of flight has transformed the world, making it more connected and accessible, and continues to evolve with the development of electric planes, drones, and potential future travel to other planets."
    ),
    FactWolf49(
        title: "The Mystery of the Bermuda Triangle",
        content: "The Bermuda Triangle, also known as the Devil's Triangle, is a region in the western part of the North Atlantic Ocean, where a number of aircraft and ships have disappeared under mysterious circumstances. The area is bounded by Miami, Bermuda, and Puerto Rico, and it has become the subject of numerous theories and legends, ranging from natural explanations such as violent storms or methane gas eruptions to more fantastical ideas involving extraterrestrial activity or time warps. While many of the disappearances can be explained by human error or environmental factors, the Bermuda Triangle remains an enduring mystery, captivating the imagination of people around the world."
    ),
    FactWolf49(
        title: "The Importance of Bees in Ecosystems",
        content: "Bees play a crucial role in pollinating flowers, which is essential for the production of fruits, vegetables, and nuts. It is estimated that one-third of the food we consume relies on pollination by bees and other pollinators. Beyond food production, bees contribute to the biodiversity of ecosystems by aiding in the reproduction of various plants and flowers. However, bee populations are under threat due to factors such as pesticide use, habitat loss, climate change, and diseases. The decline of bees would have a devastating impact on both agriculture and the natural environment, making their conservation a priority for maintaining the health of ecosystems."
    ),
    FactWolf49(
        title: "The Age of the Universe",
        content: "The universe is approximately 13.8 billion years old. This age is estimated based on observations of the cosmic microwave background radiation, the afterglow of the Big Bang, as well as the expansion rate of the universe. The discovery of the expansion of the universe was made in 1929 by astronomer Edwin Hubble, who observed that galaxies are moving away from us, indicating that the universe is still expanding. Over billions of years, the universe has undergone significant changes, from the formation of galaxies and stars to the creation of planets and the emergence of life on Earth."
    ),
    FactWolf49(
        title: "The Dead Sea's Unique Properties",
        content: "The Dead Sea, located between Jordan and Israel, is one of the saltiest bodies of water on Earth. The salt concentration is about 30%, which is about ten times saltier than the ocean. The high salinity prevents most marine life from surviving in the water, which is why it's called the Dead Sea. The high salt content also makes the water dense, allowing people to float effortlessly. The mud from the Dead Sea is rich in minerals and is often used in cosmetics and skin treatments. Additionally, the Dead Sea's low elevation, at about 430 meters below sea level, makes it the Earth's lowest point on land."
    ),
    FactWolf49(
        title: "The Formation of Diamonds",
        content: "Diamonds are formed under extreme conditions deep within the Earth. They are made of carbon atoms arranged in a crystalline structure, and this process occurs over millions to billions of years. The conditions needed to form diamonds require intense heat (about 1,300 to 2,000 degrees Celsius) and pressure (around 725,000 pounds per square inch). These conditions exist about 90 to 120 miles below the Earth's surface. While diamonds are often associated with luxury and beauty, their creation process is incredibly harsh and involves intense geological forces. Most diamonds found on the Earth's surface were brought up by volcanic eruptions in ancient times."
    ),
    FactWolf49(
        title: "The Role of the Amazon Rainforest",
        content: "The Amazon Rainforest is often referred to as the 'lungs of the Earth' because it produces approximately 20% of the world's oxygen. Spanning over 5.5 million square kilometers across South America, it is home to an incredibly diverse range of plant and animal species. The rainforest absorbs large amounts of carbon dioxide, helping to mitigate climate change. However, the Amazon faces significant threats from deforestation, illegal logging, and agriculture. These activities reduce the forest's ability to sequester carbon and threaten biodiversity. Efforts are ongoing to protect this vital ecosystem, which plays a crucial role in regulating the Earth's climate."
    ),
    FactWolf49(
        title: "The Importance of the Ocean's Currents",
        content: "Ocean currents play a crucial role in regulating the Earth's climate. These large-scale flows of seawater transport heat from the equator to the poles, helping to maintain global temperature balance. Currents such as the Gulf Stream, which flows from the Gulf of Mexico towards Europe, bring warm water to northern latitudes, which impacts weather patterns and the climate of coastal regions. Without ocean currents, regions like northwestern Europe would be much colder. Additionally, ocean currents help to regulate the carbon cycle and support marine life by distributing nutrients across the world's oceans. However, these currents are being affected by climate change, which can alter weather patterns and disrupt marine ecosystems."
    ),
    FactWolf49(
        title: "The Incredible Durability of Tardigrades",
        content: "Tardigrades, also known as water bears, are microscopic creatures that can survive extreme conditions that would be deadly for most other forms of life. They are capable of surviving extreme temperatures, both hot and cold, intense radiation, and even the vacuum of space. This resilience is due to their ability to enter a state called cryptobiosis, where they lose almost all their water content and essentially shut down their metabolism. In this state, tardigrades can endure harsh conditions for years, only to revive when they come into contact with water. Tardigrades are considered one of the toughest organisms on Earth and have been found in some of the most extreme environments, from deep-sea trenches to the peaks of mountains."
    ),
    FactWolf49(
        title: "The Complexity of the Human Brain",
        content: "The human brain is the most complex organ in the body and one of the most complex structures known to science. It contains approximately 86 billion neurons, each capable of forming thousands of synaptic connections. These neurons work together to process information, control bodily functions, and enable cognition, memory, and emotion. Despite significant advances in neuroscience, much of how the brain works remains a mystery. For instance, scientists are still uncovering the intricate networks and processes that underlie consciousness, memory formation, and decision-making. The brain's plasticity also allows it to reorganize itself in response to experiences, making it capable of learning and adapting throughout a person's life."
    ),
    FactWolf49(
        title: "The Invention of the Printing Press",
        content: "The printing press, invented by Johannes Gutenberg in the mid-15th century, revolutionized the way information was shared and made a profound impact on society. Before the printing press, books were copied by hand, a laborious process that made written works expensive and rare. Gutenberg's press allowed for the mass production of books, making knowledge more accessible to a broader audience. One of the first books printed was the Gutenberg Bible, which became a symbol of the new era of printing. The invention of the printing press played a key role in the spread of the Renaissance, the Reformation, and the Scientific Revolution, significantly altering the course of history."
    ),
    FactWolf49(
        title: "The Mysteries of the Great Pyramids of Giza",
        content: "The Great Pyramids of Giza, built over 4,500 years ago during Egypt's Old Kingdom, are among the most iconic and mysterious structures in the world. The largest pyramid, the Great Pyramid of Khufu, was originally 481 feet (146 meters) tall and is made of an estimated 2.3 million limestone blocks, each weighing several tons. The methods used to construct the pyramids remain a subject of debate. Some theories suggest that the Egyptians used ramps, levers, and pulleys to move the massive stones, while others propose more complex engineering techniques. The purpose of the pyramids was to serve as tombs for the pharaohs and their belongings, ensuring a successful journey into the afterlife. Despite centuries of study, many aspects of their construction and the technology used remain enigmatic."
    ),
    FactWolf49(
        title: "The Evolution of the Internet",
        content: "The internet has undergone a remarkable transformation since its inception in the late 20th century. Initially developed as a military and research tool, the internet grew rapidly in the 1990s as businesses and individuals began to connect online. Early websites were simple, with basic text and images, but advances in technology have enabled the development of rich, interactive content. The rise of social media platforms, online shopping, streaming services, and cloud computing has fundamentally changed the way people communicate, shop, work, and entertain themselves. Today, the internet is an integral part of modern life, with billions of users and new technologies like 5G, artificial intelligence, and the Internet of Things (IoT) continuing to drive its evolution."
    ),
    FactWolf49(
        title: "The Water Cycle",
        content: "The water cycle, also known as the hydrological cycle, is a continuous process through which water circulates between the Earth's atmosphere, surface, and underground. It includes several stages: evaporation, condensation, precipitation, and infiltration. Water from oceans, lakes, and rivers evaporates into the atmosphere, forms clouds through condensation, and falls back to Earth as precipitation in the form of rain, snow, or hail. Some of this water is absorbed by the ground, replenishing groundwater supplies, while the rest flows into rivers and streams, continuing the cycle. This process is crucial for maintaining Earth's ecosystems and regulating climate patterns."
    ),
    FactWolf49(
        title: "The Big Bang Theory",
        content: "The Big Bang Theory is the leading explanation for the origin of the universe. It suggests that the universe began as an incredibly dense and hot point roughly 13.8 billion years ago and has been expanding ever since. The expansion of space itself caused galaxies to move away from each other, a phenomenon that was first observed by astronomer Edwin Hubble in the 1920s. Evidence supporting the Big Bang includes the cosmic microwave background radiation, which is the afterglow of the initial explosion, and the observed redshift of distant galaxies. Over billions of years, the universe has cooled, allowing matter to form stars, galaxies, and eventually, planets."
    ),
    FactWolf49(
        title: "The Concept of Artificial Intelligence",
        content: "Artificial intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think, learn, and problem-solve. AI systems are designed to analyze large amounts of data, recognize patterns, and make decisions with minimal human intervention. Machine learning, a subset of AI, involves training algorithms to recognize patterns and improve their performance over time. AI has a broad range of applications, from virtual assistants like Siri and Alexa to autonomous vehicles, healthcare diagnostics, and even creative fields like music and art. Despite its rapid advancements, AI still faces challenges related to ethics, bias, and the potential for unintended consequences in decision-making processes."
    ),
    FactWolf49(
        title: "The Impact of Global Warming on Polar Ice Caps",
        content: "Global warming, driven by the increase in greenhouse gas emissions, is causing significant melting of the polar ice caps. The Arctic and Antarctic regions are warming at a rate much faster than the global average, leading to a reduction in ice sheets and glaciers. This melting contributes to rising sea levels, which can cause coastal flooding and the displacement of millions of people. Additionally, the loss of ice affects local ecosystems, as polar bears, penguins, and other species that depend on ice-covered habitats face the threat of extinction. The melting ice also disrupts the global climate system, as ice reflects sunlight, helping to regulate the Earth's temperature. As the ice melts, more dark ocean and land are exposed, absorbing more heat and accelerating the process."
    ),
    FactWolf49(
        title: "The Human Immune System's Complexity",
        content: "The human immune system is a highly complex network of cells, tissues, and organs that work together to protect the body from harmful invaders like bacteria, viruses, and fungi. Key components of the immune system include white blood cells (leukocytes), antibodies, the spleen, lymph nodes, and the thymus. When a pathogen enters the body, the immune system recognizes it as foreign and activates various defense mechanisms, including the release of antibodies that target and neutralize the invader. The immune system also has the ability to 'remember' previous encounters with pathogens, providing long-term immunity. However, factors like age, genetics, stress, and diet can affect the immune system's efficiency, making it crucial to maintain a healthy lifestyle."
    ),
    FactWolf49(
        title: "The Mystery of Black Holes",
        content: "Black holes are regions of space where gravity is so strong that nothing, not even light, can escape their pull. They are formed when massive stars collapse under their own gravity at the end of their life cycle. The point of no return around a black hole is called the event horizon, beyond which not even light can escape. Despite their name, black holes can be detected by observing their effect on nearby matter. For example, when a black hole pulls in gas from a companion star, the gas heats up and emits X-rays, which can be detected by telescopes. The largest known black holes are located at the centers of galaxies and are referred to as supermassive black holes. Scientists are still studying black holes to understand their properties and their role in the evolution of galaxies."
    ),
    FactWolf49(
        title: "The Role of DNA in Inheritance",
        content: "DNA, or deoxyribonucleic acid, is the molecule that carries genetic information in living organisms. It is made up of two long chains of nucleotides twisted into a double helix structure. Each nucleotide contains a sugar, a phosphate group, and a nitrogenous base, with four possible bases: adenine (A), cytosine (C), guanine (G), and thymine (T). The sequence of these bases determines the genetic code, which is responsible for the development and functioning of all living organisms. During reproduction, DNA is passed down from parents to offspring, with each parent contributing half of the genetic material. This process of inheritance is responsible for the traits and characteristics of offspring, such as eye color, height, and susceptibility to certain diseases."
    ),
    FactWolf49(
        title: "The Theory of Evolution by Natural Selection",
        content: "The theory of evolution by natural selection, proposed by Charles Darwin in the 19th century, is the process by which organisms change over time as a result of inherited traits that are advantageous for survival and reproduction. According to this theory, individuals with traits that make them better suited to their environment are more likely to survive and reproduce, passing those beneficial traits on to future generations. Over long periods of time, this process can lead to the development of new species. Natural selection is one of the primary mechanisms driving the diversity of life on Earth. The theory of evolution has been supported by extensive evidence from fields such as genetics, paleontology, and comparative anatomy, and is considered one of the cornerstones of modern biology."
    ),
    FactWolf49(
        title: "The Wonders of Coral Reefs",
        content: "Coral reefs are some of the most biodiverse ecosystems on Earth. They are formed by colonies of tiny marine organisms called coral polyps, which secrete calcium carbonate to build hard skeletons that form the structure of the reef. Coral reefs provide habitats for thousands of species of fish, invertebrates, and other marine life. They also protect coastal areas by reducing the impact of waves and storms. However, coral reefs are under threat from climate change, pollution, and overfishing. Rising ocean temperatures cause coral bleaching, where corals expel the algae that live inside them, turning them white and weakening the reef. Efforts are being made to protect and restore coral reefs through conservation programs and sustainable practices."
    ),
    FactWolf49(
        title: "The Process of Photosynthesis",
        content: "Photosynthesis is the process by which plants, algae, and some bacteria convert light energy into chemical energy stored in glucose. This process is essential for life on Earth, as it is the primary source of energy for nearly all living organisms. During photosynthesis, plants take in carbon dioxide from the atmosphere and water from the soil. Using the energy from sunlight, they convert these into glucose and oxygen. The oxygen is released into the atmosphere, while the glucose is used by the plant for growth and energy. Photosynthesis takes place in specialized cell structures called chloroplasts, which contain the pigment chlorophyll. This pigment absorbs light energy, making photosynthesis possible. Without photosynthesis, life on Earth as we know it would not be sustainable."
    )
]
