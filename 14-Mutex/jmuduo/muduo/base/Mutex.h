// Use of this source code is governed by a BSD-style license
// that can be found in the License file.
//
// Author: Shuo Chen (chenshuo at chenshuo dot com)

#ifndef MUDUO_BASE_MUTEX_H
#define MUDUO_BASE_MUTEX_H

#include <muduo/base/CurrentThread.h>
#include <boost/noncopyable.hpp>
#include <assert.h>
#include <pthread.h>

namespace muduo
{

class MutexLock : boost::noncopyable
{
 public:
  MutexLock()
    : holder_(0)  // 表示没有被任何线程占用锁
  {
    int ret = pthread_mutex_init(&mutex_, NULL);
    assert(ret == 0); (void) ret;
  }

  ~MutexLock()
  {
    assert(holder_ == 0);   // 析构时先断言没有任何线程占用锁才能销毁锁
    int ret = pthread_mutex_destroy(&mutex_);
    assert(ret == 0); (void) ret;
  }

  // 判断当前线程是否拥有锁
  bool isLockedByThisThread()
  {
    return holder_ == CurrentThread::tid();
  }

  // 断言当前线程拥有锁
  void assertLocked()
  {
    assert(isLockedByThisThread());
  }

  // internal usage

  void lock()
  {
    pthread_mutex_lock(&mutex_);
    holder_ = CurrentThread::tid();
  }

  void unlock()
  {
    holder_ = 0;
    pthread_mutex_unlock(&mutex_);
  }

  pthread_mutex_t* getPthreadMutex() /* non-const */
  {
    return &mutex_;
  }

 private:

  pthread_mutex_t mutex_;
  pid_t holder_;
};

//  使用 RAII 技法封装，构造函数加锁，析构函数解锁
//  MutexLockGuard 和 MutexLock 类只是 关联关系，MutexLockGuard 仅仅是使用了 MutexLock 类中的方法，不存在整体与局部的关系
//  如果存在整体与局部的关系，那就是 聚合关系
//  如果不仅仅存在整体与局部的关系，而且还负责 MutexLock 对象的销毁，那就是组合关系
class MutexLockGuard : boost::noncopyable
{
 public:
  explicit MutexLockGuard(MutexLock& mutex)
    : mutex_(mutex)
  {
    mutex_.lock();
  }

  ~MutexLockGuard()
  {
    mutex_.unlock();
  }

 private:

  MutexLock& mutex_;    // 使用引用，表示 MutexLockGuard 并不管理 MutexLock 对象的生存期
};

}

// Prevent misuse like:
// MutexLockGuard(mutex_);
// A tempory object doesn't hold the lock for long!
#define MutexLockGuard(x) error "Missing guard object name"
// 避免创建临时对象

#endif  // MUDUO_BASE_MUTEX_H
