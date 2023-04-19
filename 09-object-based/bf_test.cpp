#include <iostream>
#include <boost/bind.hpp>
#include <boost/function.hpp>

using namespace std;

class Foo{
public:
    void memberFunc(double i, int j, int k){
        cout << i << endl;
        cout << j << endl;
        cout << k << endl;
    }
};

int main(){
    Foo foo;
    boost::function<void (int)> fp = boost::bind(&Foo::memberFunc, &foo, 0.5, _1, 10);
    function<void (int)> fp2 = bind(&Foo::memberFunc, &foo, 0.5, _1, 10);
    fp(100);
    fp2(50);
    return 0;
}