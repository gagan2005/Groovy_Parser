/* an example of multiline comment in groovy
there are many statements contained in groovy some examples are below
*/

// comment in groovy
import groovy.xml.MarkupBuilder;
import groovy.xml.StreamingMarkupBuilder;
import groovy.xml.*;
import static Calendar.getInstance as now;

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

int[] array = [1,2,3,4]; 
//for in loop in groovy		
    for( i in array) { 
        println(i); 
      } 
//for loop in groovy
       for(int i = 0;i<5;i++) {
         println(i);
      }

