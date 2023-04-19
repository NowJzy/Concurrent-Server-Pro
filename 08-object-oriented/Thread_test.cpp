#include "Thread.h"
#include <unistd.h>
#include <iostream>

using namespace std;

class ThreadTest : public Thread{
public:
    ThreadTest(int count):count_(count){
        cout << "ThreadTest..." << endl;
    }

    ~ThreadTest(){
        cout << "~ThreadTest..." << endl;
    }

    void Run(){
        while (count_--)
        {
            cout << "this is a test ..." << endl;
            sleep(1);
        }
        
    }

    int count_;
};

int main(){
    // ThreadTest t(5);  // 线程对象的销毁是程序结束时
    // t.Start();
    // t.Join();

    ThreadTest* t2 = new ThreadTest(5);
    t2->SetAutoDelete(true);    // 实现线程的自动销毁
    t2->Start();
    t2->Join();

    for(;;){
        pause();
    }

    return 0;
}