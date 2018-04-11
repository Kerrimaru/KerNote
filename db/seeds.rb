# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
note = Note.create!(title: "Dogs",
content: "The domestic dog (Canis lupus familiaris or Canis familiaris) is a member of the genus Canis (canines), which forms part of the wolf-like canids, and is the most widely abundant terrestrial carnivore. The dog and the extant gray wolf are sister taxa as modern wolves are not closely related to the wolves that were first domesticated,[12][13] which implies that the direct ancestor of the dog is extinct.[14] The dog was the first species to be domesticated[13][15] and has been selectively bred over millennia for various behaviors, sensory capabilities, and physical attributes.
    Their long association with humans has led dogs to be uniquely attuned to human behavior and they are able to thrive on a starch-rich diet that would be inadequate for other canid species. New research seems to show that dogs have mutations to equivalent genetic regions in humans where changes are known to trigger high sociability and somewhat reduced intelligence. Dogs vary widely in shape, size and colors.[21] Dogs perform many roles for people, such as hunting, herding, pulling loads, protection, assisting police and military, companionship and, more recently, aiding handicapped individuals and therapeutic roles. This influence on human society has given them the sobriquet man's best friend.",
  tags: 'dogs, ears, tails, paws'
  )

note2 = Note.create!(title: "Catss",
  content: "Meow meow meow meow meow meow Meow meow meow meow meow meow Meow meow meow meow meow meow",
  tags: 'cats, claws, fangs'
  )

Note.create!(title: "Birds",
  content: 'Birds (Aves) are a group of endothermic vertebrates, characterised by feathers, toothless beaked jaws, the laying of hard-shelled eggs, a high metabolic rate, a four-chambered heart, and a strong yet lightweight skeleton. Birds live worldwide and range in size from the 5 cm (2 in) bee hummingbird to the 2.75 m (9 ft) ostrich. They rank as the world’s most numerically-successful class of tetrapods, with approximately ten thousand living species, more than half of these being passerines, sometimes known as perching birds. Birds have wings which are more or less developed depending on the species; the only known groups without wings are the extinct moa and elephant birds. Wings, which evolved from forelimbs, gave birds the ability to fly, although further evolution has led to the loss of flight in flightless birds, including ratites, penguins, and diverse endemic island species of birds. The digestive and respiratory systems of birds are also uniquely adapted for flight. Some bird species of aquatic environments, particularly seabirds and some waterbirds, have further evolved for swimming.',
  tags: 'flying, squawking, poop, iridescent, wings')

Note.create!(title: "Giraffes",
  content: "The giraffe (Giraffa) is a genus of African even-toed ungulate mammals, the tallest living terrestrial animals and the largest ruminants. The genus currently consists of one species, Giraffa camelopardalis, the type species. Seven other species are extinct, prehistoric species known from fossils. Taxonomic classifications of one to eight extant giraffe species have been described, based upon research into the mitochondrial and nuclear DNA, as well as morphological measurements of Giraffa, but the IUCN currently recognises only one species with nine subspecies.",
  tags: 'tall, spots, tongue, horns')

Note.create!(title: "Armadillo",
  content: 'Armadillos are New World placental mammals in the order Cingulata with a leathery armour shell. The Chlamyphoridae and Dasypodidae are the only surviving families in the order, which is part of the superorder Xenarthra, along with the anteaters and sloths. The word armadillo means "little armoured one" in Spanish. The Aztecs called them āyōtōchtli [aːjoːˈtoːt͡ʃt͡ɬi], Nahuatl for "turtle-rabbit": āyōtl [ˈaːjoːt͡ɬ] (turtle) and tōchtli [ˈtoːt͡ʃt͡ɬi] (rabbit).[1] The Portuguese word for "armadillo" is tatu which derives from the Tupi language.[2] Similar names are also found in other, especially European, languages.',
  tags: 'armour, toes, ball, snout')

Note.create!(title: "Pangolin",
  content: 'Pangolins or scaly anteaters[1] are mammals of the order Pholidota (from the Greek word φολῐ́ς, "horny scale"). The one extant family, Manidae, has three genera: Manis, which comprises four species living in Asia; Phataginus, which comprises two species living in Africa; and Smutsia, which comprises two species also living in Africa.[2] These species range in size from 30 to 100 cm (12 to 39 in). A number of extinct pangolin species are also known.',
  tags: 'horned, murdered, armoured')




   