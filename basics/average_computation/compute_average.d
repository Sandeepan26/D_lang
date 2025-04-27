import std;   //std library has the functions to be used in this code

float compute_average(int[] array){
    float result = 0;
    if(array.length <= 0){
        writeln("No valid array provided");
    }
    else{
    foreach(val; array){   //foreach iterates through the array via "val". 
        result += val;    
    }
    }
    return (cast(float)(result/array.length));  //.length function returns the length of an array
}


int main(){
    writeln("Enter the length of the input array\n");
    int len = to!int(readln().chomp());  //trims the whitespaces trailing the user input on the terminal

    int [] arr = uninitializedArray!(int[])(len);  //create an array of 200 elements without initializing the values 
    
    writeln("Enter the eleements of the array\n");
    for(size_t i = 0; i < len; ++i){
        arr[i] = to!(int)(readln().chomp());
    }
    writeln("Computing the average\n");

    float res = compute_average(arr); 
    writeln("Input array:\t", arr, "\tAverage: ", res);
    return 0;
}