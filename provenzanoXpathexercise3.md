# Xpath exercise 3 

1. //div/count(*) (this seems to be counting sortkeys)
   //div/*/count(*) (I think this is counting every person listed) 
   
2. //div/*/count(*) => max() (listed 1112) 
   //div/*/count(*) => min() (listed 3) 
   
3. //div[/*/count(*) => max()] (I dont understand what you are asking me but it gives a list of the Past_Editors. Im not sure if I did this right.)

4a. distinct-values(//occupation/@type) 
4b. count(distinct-values(//occupation/@type)) 

5a. //occupation[@type="artist"] 
5b. //person[occupation[@type="artist"]] 
5c. //person[@sex="f"][occupation[@type="artist"]] 
5d. //person[occupation[@subtype="engraver"]] 
5e. //person[occupation[@subtype="engraver"]][birth[@when="1787"]] (Finden_Wm) 
5f. //person[occupation[@subtype="engraver"]]/birth
5g. sort(//person[occupation[@subtype="engraver"]]/birth/@when ! string(.)) => min() (1667-01-12)

6a. //*/name() 
6b. count(distinct-values(//*/name())) (78 different names)
