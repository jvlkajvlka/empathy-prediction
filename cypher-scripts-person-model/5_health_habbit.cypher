LOAD CSV FROM 'file:///responses.csv' AS rec
MERGE (p:Person{node_name:'Person', person_id: rec[0]})
MERGE (m:Health_habit{node_name:'Habit'})
MERGE (m1:Smoking{node_name:'Smoking'})
MERGE (m2:Alcohol{node_name:'Alcohol'})
MERGE (m3:Healthy_eating{node_name:'Healthy eating'})

CREATE  (p)-[r:HAS]->(m)
CREATE  (p)-[r1:LIKES {value: rec[74]}]->(m1)
CREATE  (p)-[r2:LIKES {value: rec[75]}]->(m2)
CREATE  (p)-[r3:LIKES {Level: rec[76]}]->(m3)
