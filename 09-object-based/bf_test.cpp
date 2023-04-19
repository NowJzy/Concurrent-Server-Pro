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
    // boost::funtion 使得一种函数接口编程另一种函数接口
    boost::function<void (int)> fp = boost::bind(&Foo::memberFunc, &foo, 0.5, _1, 10);
    boost::function<void (int, int)> fp2 = boost::bind(&Foo::memberFunc, &foo, 0.5, _1, _2);
    boost::function<void (int, int)> fp3 = boost::bind(&Foo::memberFunc, boost::ref(foo), 0.5, _1, _2);     // boost::ref(foo) -> 传引用
    // function<void (int)> fp3 = bind(&Foo::memberFunc, &foo, 0.5, _1, 10);        // c++ 11
    fp(100);
    fp2(100, 200);
    fp3(100, 300);
    return 0;
}