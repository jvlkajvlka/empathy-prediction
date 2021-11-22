MATCH
  (m:Music),
  (s:Songs)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (d:Dance)
CREATE (d)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Folk)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Country)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Classical_music)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Musical)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Pop)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Rock)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Punk)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Metal)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Hardrock)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Hiphop)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Rap)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Reggae)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Ska)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Swing)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Music),
  (f:Jazz)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Rock_n_roll)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Alternative)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Latino)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Music),
  (f:Techno)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Music),
  (f:Trance)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Music),
  (f:Opera)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Horror)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Thriller)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Comedy)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Movies),
  (f:Romantic)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Sci_fi)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:War)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Movies),
  (f:Fantasy)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Fairy_tales)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Animated)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Movies),
  (f:Documentary)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Movies),
  (f:Western)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Movies),
  (f:Action)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (p:Person),
  (m:Field_of_study)
WHERE p.id =1
CREATE (p)-[r:LEARNS]->(m)
RETURN type(r), r.Level


MATCH
  (m:Field_of_study),
  (f:History)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Field_of_study),
  (f:Psychology)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Politics)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Field_of_study),
  (f:Mathematics)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Physics)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Field_of_study),
  (f:Internet)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Field_of_study),
  (f:PC)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Economy_Management)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Field_of_study),
  (f:Biology)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Chemistry)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Poetry_reading)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Geography)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Field_of_study),
  (f:Foreign_languages)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Field_of_study),
  (f:Medicine)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Field_of_study),
  (f:Law)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Cars)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Art_exhibitions)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Hobby),
  (f:Religion)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Outdoor_activities)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Dancing)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Playing_musical_instruments)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Poetry_writing)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Passive_sport)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Active_sport)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Gardening)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Celebrity)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Shopping)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Science_and_technology)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Hobby),
  (f:Theatre)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Fun_with_friends)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Hobby),
  (f:Adrenaline_sports)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (p:Person),
  (m:Animal)
WHERE p.id =1
CREATE (p)-[r:HAS]->(m)
RETURN type(r), r.Level


MATCH
  (m:Animal),
  (f:Pet)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Phobia),
  (f:Storm)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Phobia),
  (f:Flying)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Phobia),
  (f:Darkness)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Phobia),
  (f:Height)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Phobia),
  (f:Spider)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Animal),
  (f:Spider)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Phobia),
  (f:Snake)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Animal),
  (f:Snake)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Phobia),
  (f:Rat)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Animal),
  (f:Rat)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Phobia),
  (f:Ageing)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Phobia),
  (f:Dangerous_dog)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Animal),
  (f:Dangerous_dog)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (d:Dog),
  (f:Dangerous_dog)
CREATE (f)-[r:IS_A]->(d)
RETURN type(r)


MATCH
  (d:Animal),
  (f:Dog)
CREATE (f)-[r:IS_A]->(d)
RETURN type(r)


MATCH
  (m:Phobia),
  (f:Public_speaking)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (p:Person),
  (m:Health_habit)
WHERE p.id =1
CREATE (p)-[r:HAS]->(m)
RETURN type(r), r.Level



MATCH
  (m:Health_habit),
  (f:Smoking)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Health_habit),
  (f:Alcohol)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Health_habit),
  (f:Healthy_eating)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Daily_events)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Prioritising_workload)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Prioritising_workload)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Workaholism)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Thinking_ahead)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Personality_traits),
  (f:Final_judgement)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Reliability)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Keeping_promises)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Personality_traits),
  (f:Loss_of_interest)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Friends_versus_money)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Funniness)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Fake)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Personality_traits),
  (f:Criminal_damage)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Decision_making)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Self_criticism)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Judgment_calls)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Hypochondria)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Empathy)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Eating_to_survive)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Giving)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Compassion_to_animals)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)




MATCH
  (m:Personality_traits),
  (f:Loneliness)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Punctuality)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Lying)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Appearence)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Gesture)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Assertiveness)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Personality_traits),
  (f:Getting_angry)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Personality_traits),
  (f:Unpopularity)
CREATE (f)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Person)
CREATE (s)-[r:HAS]->(m)
RETURN type(r)



MATCH
  (m:Demographics_traits),
  (s:Age)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Demographics_traits),
  (s:Height)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)

MATCH
  (m:Demographics_traits),
  (s:Weight)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Sibling)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Demographics_traits),
  (s:Gender)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)



MATCH
  (m:Demographics_traits),
  (s:Handed)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Education)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Only_child)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Place_to_live)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)


MATCH
  (m:Demographics_traits),
  (s:Home)
CREATE (s)-[r:IS_A]->(m)
RETURN type(r)

