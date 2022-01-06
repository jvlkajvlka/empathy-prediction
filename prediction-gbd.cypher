
MATCH (p:Person)
SET p.person_id =toInteger(p.person_id)

MATCH (n:Person)
WHERE n.person_id >777
REMOVE n:Person
SET n:UnknownPerson

MATCH (p:Person)
SET p.person_id =toString(p.person_id)

MATCH (p:UnknownPerson)
SET p.person_id =toString(p.person_id)

LOAD CSV FROM "file:///Person.csv" AS csvLine
MERGE (n:Person {person_id:csvLine[0]})
ON MATCH SET
n.Latino	            =toInteger(csvLine[1] ) ,
n.Romantic	            =toInteger(csvLine[2] ) ,      
n.Fantasy               =toInteger(csvLine[3] ) ,
n.Psychology	        =toInteger(csvLine[4] ) , 
n.Reading	            =toInteger(csvLine[5] ),
n.Cars	                =toInteger(csvLine[6] ) ,  
n.Dancing	            =toInteger(csvLine[7] ) , 
n.Theatre	            =toInteger(csvLine[8] ) ,   
n.Writing_notes	        =toInteger(csvLine[9] ) , 
n.Friends_versus_money	=toInteger(csvLine[10]) ,        
n.Fake	                =toInteger(csvLine[11]) ,        
n.Judgment_calls	    =toInteger(csvLine[12]) ,        
n.Empathy	            =toInteger(csvLine[13]) ,               
n.Giving	            =toInteger(csvLine[14]) ,        
n.Compassion_to_animals	=toInteger(csvLine[15]) ,                  
n.Borrowed_stuff	    =toInteger(csvLine[16]) ,                      
n.Achievements	        =toInteger(csvLine[17]) ,              
n.Children	            =toInteger(csvLine[18]) ,          
n.Life_struggles	    =toInteger(csvLine[19]) ,                  
n.Weight	            =toInteger(csvLine[20]) ,    
n.Gender                =csvLine[21]     

LOAD CSV FROM "file:///UnknownPerson.csv" AS csvLine
MERGE (n:UnknownPerson {person_id:csvLine[0]})
ON MATCH SET 
n.Latino	            =toInteger(csvLine[1] ) ,
n.Romantic	            =toInteger(csvLine[2] ) ,      
n.Fantasy               =toInteger(csvLine[3] ) ,
n.Psychology	        =toInteger(csvLine[4] ) , 
n.Reading	            =toInteger(csvLine[5] ),
n.Cars	                =toInteger(csvLine[6] ) ,  
n.Dancing	            =toInteger(csvLine[7] ) , 
n.Theatre	            =toInteger(csvLine[8] ) ,   
n.Writing_notes	        =toInteger(csvLine[9] ) , 
n.Friends_versus_money	=toInteger(csvLine[10]) ,        
n.Fake	                =toInteger(csvLine[11]) ,        
n.Judgment_calls	    =toInteger(csvLine[12]) ,            
n.Giving	            =toInteger(csvLine[14]) ,        
n.Compassion_to_animals	=toInteger(csvLine[15]) ,                  
n.Borrowed_stuff	    =toInteger(csvLine[16]) ,                      
n.Achievements	        =toInteger(csvLine[17]) ,              
n.Children	            =toInteger(csvLine[18]) ,          
n.Life_struggles	    =toInteger(csvLine[19]) ,                  
n.Weight	            =toInteger(csvLine[20]) ,    
n.Gender                =csvLine[21]  


CALL gds.graph.create('myGraph', {
    Person: { 
        properties:{
            Latino:{property:'Latino', defaultValue:0},
            Romantic:{property:'Romantic', defaultValue:0},
            Fantasy:{property:'Fantasy', defaultValue:0},
            Psychology:{property:'Psychology', defaultValue:0},
            Reading:{property:'Reading', defaultValue:0},
            Cars:{property:'Cars', defaultValue:0},
            Dancing:{property:'Dancing', defaultValue:0},
            Theatre:{property:'Theatre', defaultValue:0},
            Writing_notes:{property:'Writing_notes', defaultValue:0},
            Friends_versus_money:{property:'Friends_versus_money', defaultValue:0},
            Fake:{property:'Fake', defaultValue:0},
            Judgment_calls:{property:'Judgment_calls', defaultValue:0},
            Empathy:{property:'Empathy', defaultValue:0},
            Giving:{property:'Giving' , defaultValue:0}, 
            Compassion_to_animals:{property:'Compassion_to_animals', defaultValue:0},
            Borrowed_stuff:{property:'Borrowed_stuff', defaultValue:0},
            Achievements:{property:'Achievements', defaultValue:0},
            Children:{property:'Children', defaultValue:0},
            Life_struggles:{property:'Life_struggles', defaultValue:0},
            Weight:{property:'Weight', defaultValue:0},
            Gender:{property:'Gender',  defaultValue:0}
        }
    },
    UnknownPerson: { 
        properties:{
            Latino:{property:'Latino', defaultValue:0},
            Romantic:{property:'Romantic', defaultValue:0},
            Fantasy:{property:'Fantasy', defaultValue:0},
            Psychology:{property:'Psychology', defaultValue:0},
            Reading:{property:'Reading', defaultValue:0},
            Cars:{property:'Cars', defaultValue:0},
            Dancing:{property:'Dancing', defaultValue:0},
            Theatre:{property:'Theatre', defaultValue:0},
            Writing_notes:{property:'Writing_notes', defaultValue:0},
            Friends_versus_money:{property:'Friends_versus_money', defaultValue:0},
            Fake:{property:'Fake', defaultValue:0},
            Judgment_calls:{property:'Judgment_calls', defaultValue:0},
            Giving:{property:'Giving',  defaultValue:0}, 
            Compassion_to_animals:{property:'Compassion_to_animals', defaultValue:0},
            Borrowed_stuff:{property:'Borrowed_stuff', defaultValue:0},
            Achievements:{property:'Achievements', defaultValue:0},
            Children:{property:'Children', defaultValue:0},
            Life_struggles:{property:'Life_struggles', defaultValue:0},
            Weight:{property:'Weight', defaultValue:0},
            Gender:{property:'Gender', defaultValue:0}
        }
    }
  },
  '*'
)

CALL gds.alpha.ml.nodeClassification.train.estimate('myGraph', {
  nodeLabels: ['Person'],
  modelName: 'nc-model',
  featureProperties: ['Latino','Romantic', 'Fantasy', 'Psychology', 'Reading', 'Cars', 'Dancing', 'Theatre', 'Writing_notes', 'Friends_versus_money','Fake', 'Judgment_calls', 'Giving', 'Compassion_to_animals', 'Borrowed_stuff', 'Achievements', 'Children', 'Life_struggles', 'Weight','Gender'],
  targetProperty: 'Empathy',
  randomSeed: 2,
  holdoutFraction: 0.2,
  validationFolds: 5,
  metrics: [ 'F1_WEIGHTED' ],
  params: [
    {penalty: 0.0625},
    {penalty: 0.5},
    {penalty: 1.0},
    {penalty: 4.0}
  ]
})
YIELD bytesMin, bytesMax, requiredMemory

CALL gds.alpha.ml.nodeClassification.train('myGraph', {
  nodeLabels: ['Person'],
  modelName: 'nc-model',
  featureProperties: ['Latino','Romantic', 'Fantasy', 'Psychology', 'Reading', 'Cars', 'Dancing', 'Theatre', 'Writing_notes', 'Friends_versus_money','Fake', 'Judgment_calls', 'Giving', 'Compassion_to_animals', 'Borrowed_stuff', 'Achievements', 'Children', 'Life_struggles', 'Weight','Gender'],
  targetProperty: 'Empathy',
  randomSeed: 2,
  holdoutFraction: 0.2,
  validationFolds: 5,
  metrics: [ 'F1_WEIGHTED' ],
  params: [
    {penalty: 0.0625},
    {penalty: 0.5},
    {penalty: 1.0},
    {penalty: 4.0}
  ]
}) YIELD modelInfo
RETURN
  {penalty: modelInfo.bestParameters.penalty} AS winningModel,
  modelInfo.metrics.F1_WEIGHTED.outerTrain AS trainGraphScore,
  modelInfo.metrics.F1_WEIGHTED.test AS testGraphScore

CALL gds.alpha.ml.nodeClassification.predict.stream('myGraph', {
  nodeLabels: ['Person', 'UnknownPerson'],
  modelName: 'nc-model',
  includePredictedProbabilities: true
}) YIELD nodeId, predictedClass, predictedProbabilities
WITH gds.util.asNode(nodeId) AS personNode, predictedClass, predictedProbabilities
WHERE personNode:UnknownPerson
RETURN
  personNode.person_id AS classifiedPerson,
  predictedClass,
  floor(predictedProbabilities[predictedClass] * 100) AS confidence
  ORDER BY classifiedPerson

  ==============================
  CALL gds.alpha.ml.nodeClassification.predict.write('myGraph', {
  nodeLabels: ['Person', 'UnknownPerson'],
  modelName: 'nc-model',
  writeProperty: 'predictedClass',
  predictedProbabilityProperty: 'predictedProbabilities'
}) YIELD nodePropertiesWritten

CALL gds.alpha.ml.nodeClassification.predict.mutate('myGraph', {
  nodeLabels:['Person', 'UnknownPerson'],
  modelName: 'nc-model',
  mutateProperty: 'predictedClass',
  predictedProbabilityProperty: 'predictedProbabilities'
}) YIELD nodePropertiesWritten

CALL gds.graph.streamNodeProperties(
  'myGraph', ['predictedProbabilities', 'predictedClass'], ['UnknownPerson']
) YIELD nodeId, nodeProperty, propertyValue
RETURN gds.util.asNode(nodeId).person_id AS classifiedEmpathy, nodeProperty, propertyValue
  ORDER BY classifiedEmpathy, nodeProperty


  match (n:Person)-[r]-(m) where m.node_name in ['Latino','Romantic', 'Fantasy', 'Psychology', 'Poetry Reading', 'Cars', 'Dancing', 'Theatre', 'Writing notes', 'Friends versus money','Fake', 'Judgment calls', 'Giving', 'Compassion to animals', 'Borrowed stuff', 'Achievements', 'Children', 'Life struggle', 'Weight','Gender'] return distinct m.node_name

match (n:Person)-[r]-(m) where m.node_name ='Latino' 
set n.Latino = r.Value 