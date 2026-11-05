# XPath Exercise 4

1. //cbml:panel/@characters => distinct-values()

2. //cbml:panel/@characters ! tokenize(.) 
2b. distinct-values(//cbml:panel/@characters ! tokenize(.))  

3a. //cbml:panel[contains(@characters, "drkelly")] (listed 5 items)
3b. //cbml:panel[ends-with(@characters, "drkelly")] (listed 4 items) 

4a. max(//cbml:balloon ! string-length(.)) (listed 215) 
4b. //cbml:balloon[string-length(.) = max(//cbml:balloon ! string-length(.))] (listed DOCTOR KELLY ME ESCRIBIO) 
4c. //cbml:balloon[string-length(.) = min(//cbml:balloon ! string-length(.))] (listed TAXI.) 

5a. //cbml:panel[.//note[contains(., 'skull')]] 
5b. //div[//cbml:balloon[contains(., 'NO')]] 
    //div[.//cbml:balloon[contains(., 'NO')]]

(The first expression contains speech balloons containing NO inside a div)
(The second expression returns the divs that contain a balloon with NO)

