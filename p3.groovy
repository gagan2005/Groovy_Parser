//fibonacci program in groovy
def fib(int n) {
  if (n<2) return 1;
  else return fib(n-1) + fib(n-2);
}


int a=fib(30); // 1346269 (23.587 seconds)
println a;


//switch case program
int i = 0; 
      int j = 1; 
		
      // First evaluating the value of variable i 
      switch(i) { 
         case 0: 
            // Next evaluating the value of variable j 
            switch(j) { 
               case 0: 
                  println("i is 0, j is 0"); 
                  break; 
               case 1: 
                  println("i is 0, j is 1"); 
                  break; 
               
               // The default condition for the inner switch statement 
               default: 
               println("nested default case!!"); 
            } 
         break; 
			
         // The default condition for the outer switch statement 
         default: 
            println("No matching case found!!"); 
      }