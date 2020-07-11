/* an example of multiline comment in groovy
there are many statements contained in groovy some examples are below
*/

// comment in groovy
import groovy.xml.MarkupBuilder
import java.lang.*
import static term1.term2
import static Calendar.getInstance as human;

//function declaration in groovy
def function(int a ,int b)
{
    return (a+b);
}


int count = 0;
//while loop in groovy		
while(count<5) {
    if(count == 1)
    	print 1;
    else if(count == 2)
    	println 2;
    else if (count == 3)
    	print 3;
    else 
    	println "not 1 2 and 3";
    count ++;
    }

float count2 = 2.4;
//do while loop in groovy
do {
	count2 -= 0.4;
//switch case in groovy
	switch (count2){
		case 2:
			println "its 2";
		case 1.6:
			println "its 1.6";
		default:
			println "less than 1.5";
    }
	}while(count2 >= 0.4);
  

int[] array = [1,2,3,4]; 
//for in loop in groovy		
    for( i in array) { 
        println(i); 
      } 
//for loop in groovy
       for(int i = 0;i<5;i++) {
         println(i);
      }

int[] intArray = [200, 300, 100];
println intArray;
//function call in groovy
sort(intArray)  ;    
println intArray;

for(item in arr){
//if else statement in groovy
  def nextItem = givenNo - item ;// substract each item from given no
  if(contains){
     set1 = item  ;
  }
  else{
     def temp = [item,nextItem]; // temp list to get max and min
     def m1 = temp ;// max of two items
     def m2 = temp ;// min of two items
      set2 = [m1,m2] ;// push list(pair) inside a set
  }  
 }
