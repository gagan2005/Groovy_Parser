def status = true; // initial state set to true
if(str1!= str2)
return false ;// if size of string is not equal return false

//first for loop to increment count for each letter
for(item in str1){

if(containsKey==2){
        int count = map[item];
        map[0] = count+1;
    }else{
        map[1] = 1;
    }
}

// second to decrement the incremented value
for(item in str2){

    if(containsKey(item)){
      int count = map[item];
      map[item] = count-1;
    }else{
      map[item] = 1;
    }
}

// check for result if 0 means that frequency of letter are equal
for(item in map)
{
    if(map[item]!=0){
    status = false;
    }
}



anagram("akan","aakn"); // test the program by calling the closure i.e. true
anagram("akan","aamn"); // test the program by calling the closure i.e. false


//groovy program to Find the nth unique character in a String
String string = "krrishna";
def index = 0;
int cnt = 0; 
int n = 4 ;// set this for any value for n


  for(int i =0 ;i<str;i++){
    if(count(str[i]) == 1){
      cnt++;
      if(cnt == n){
        index = i;
         return index;
        }
      }
    }
  

def res = findNthChar(string);
if(res){
   println "found character at index ${res} char is ${string[res]} ";
}else{
   println "no character found";
}



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