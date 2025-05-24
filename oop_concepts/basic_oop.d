/*
    *This code is about a basic implementation of classes in D programmming
    Here is a simple example of a basic class
*/

//std import
import std;

/*
    this is a simple class which is passed an integer during its creation of of object
    it is a template class which can be be used for creation of object of specified
    data type and the value can be printed repsectively
*/

class Foo(T)
{
    T a;

    /*
        "this" is a constructor in D. In C++, a constructor is same as that of the class name
        "this()" -> constructor
        "~this()" -> destructor
        here, the constructor is passed a value to be stored as int
    */

    this(T val)
    {
        this.a = val;
    }

    T print_val() 
    {
        return a;
    }

}


/*
    A class inherited from Foo
    The sytax is similar to that of C++
    super() method is to call the parent class 
    methods. In this example, the constructor
    gets an argument which is passed as argument to the super method
*/

class Bar(T) : Foo!T
{


    this(T input)
    {
        super(input);
       
    }
}

//main function

int main()
{
    auto foo = new Foo!int(20);

    writeln("Value passed for the constructor of type ", typeof(foo).stringof ," is: ", foo.print_val());

    auto foo_float = new Foo!float(24.1234);

    writeln("Value passed to this type of foo ", typeof(foo_float).stringof ," is :", foo_float.print_val());

    auto bar = new Bar!double(203_45);

    writeln("Type of object is ", typeof(bar).stringof, "  and value passed to bar object is : ", bar.print_val());
    return 0;
}