# XMLParser


Input XML File 


<person>
    <personinfo id ="1">
         <name>Senthilkumar</name>
         <position>SSE</position>
    </personinfo>
    <personinfo id ="2">
        <name>kumar</name>
        <position>SSE</position>
    </personinfo>
    <personinfo id ="3">
        <name>Ravikumar</name>
        <position>SE</position>
    </personinfo>
    <personinfo id ="4">
        <name>Nikal</name>
        <position>SSE</position>
    </personinfo>
    <personinfo id ="5">
        <name>Arun</name>
        <position>Team Lead</position>
    </personinfo>
</person>


1. The parser object when the start tag of "personinfo" is encountered.
  
2. The parser object when the end tag of  "/personinfo" is encountered.

3. The name and position tags will be parsed and the corresponding properties will be initialized.
