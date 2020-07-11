// groovy code for armstrong number
int c=0,a,temp;  
    int n=153;//It is the number to check armstrong  
    temp=n;  
    while(n>0)  
    {  
    a=n%10;  
    n=n/10;  
    c=c+a*a*a;  
    }  
    if(temp==c)  
    println "armstrong number";   
    else  
        println "Not armstrong number";   
