#include "Thread.h"
#include <iostream>

using namespace std;

Thread::Thread(const ThreadFunc& func):autoDelete_(false), func_(func){  
}

void Thread::Start(){
    pthread_create(&threadId_, nullptr, ThreadRoutine, this);
}

void Thread::Join(){
    pthread_join(threadId_, nullptr);
}

void* Thread::ThreadRoutine(void* arg){
    Thread* thread = static_cast<Thread*>(arg);
    thread->Run();
    if(thread->autoDelete_){
        delete thread;
    }
    return nullptr;
}

void Thread::SetAutoDelete(bool autoDelete){
    autoDelete_ = autoDelete;
}

void Thread::Run(){
    func_();
}