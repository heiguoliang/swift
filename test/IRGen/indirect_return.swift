// RUN: %swift -target x86_64-apple-macosx10.9 %s -emit-ir | FileCheck %s

// CHECK: define hidden void @_TF15indirect_return11generic_get
func generic_get<T>(p: UnsafeMutablePointer<T>) -> T {
  // CHECK: call void @_TFVSs20UnsafeMutablePointerg6memoryQ_(%swift.opaque* noalias sret %0, i8* %1, %swift.type* %T)
  return p.memory
}
