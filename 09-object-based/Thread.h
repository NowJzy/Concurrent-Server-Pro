#ifndef _THREAD_H_
#define _THREAD_H_

#include <pthread.h>
#include <boost/function.hpp>

class Thread{
public:
    typedef boost::function<void ()> ThreadFunc;
    explicit Thread(const ThreadFunc& func);    // explicit 阻止隐式转换

    void Start();
    void Join();
    void SetAutoDelete(bool autoDelete);

private:
    pthread_t threadId_;
    bool autoDelete_;
    static void* ThreadRoutine(void* arg);
    void Run();
    ThreadFunc func_;
};


#endif // _THREAD_H_