#ifndef _THREAD_H_
#define _THREAD_H_

#include <pthread.h>

class Thread{
public:
    Thread();
    virtual ~Thread();  // 虚函数

    void Start();
    void Join();
    void SetAutoDelete(bool autoDelete);

private:
    pthread_t threadId_;
    bool autoDelete_;
    static void* ThreadRoutine(void* arg);
    virtual void Run() = 0;
};


#endif // _THREAD_H_