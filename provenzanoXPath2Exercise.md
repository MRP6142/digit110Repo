# Xpath 2 homework 

1. //body/div[@type="historical_people"] 

2a. //body/div[@type="historical_people"]/* 

2b. //body/div[@type="places"]/* 

2c. count(//body/div/*) Counted 20. 

3a. //list => count() Counted 3. 

3b. //list[@sortKey="animals"]/*[last()] Listed Wren_crested 

3c. //list[@sortKey="plants"]/*[5] listed as apple_tree 

3d. //list[@sortKey="plants"]/*[position() <= 6] 

4. //person/occupation[1] This returns the first occupation child of every person. 

   (//person/occupation)[1] The parentheses group all of the occupation elements together. 
   
5a. count(//person) Counted 1552 

5b. count(//person[@sex]) Counted 1393 

5c. count(//person[@sex]) div count(//person) * 100 Percentage was 89 percent, 90 when rounded. 

5d. count(//person[@sex="f"])   div count(//person[@sex]) 29% 

