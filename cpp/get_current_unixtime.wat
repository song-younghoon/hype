(module $get_current_unixtime.wasm
  (type $t0 (func (param i32 i32 i32) (result i32)))
  (type $t1 (func (param i32 i64 i32) (result i64)))
  (type $t2 (func (param i32 i32) (result i32)))
  (type $t3 (func (param i32 i64 i32) (result i32)))
  (type $t4 (func (param i32) (result i32)))
  (type $t5 (func (param i32 i64 i32 i32) (result i32)))
  (type $t6 (func (param i32 i32 i32 i32) (result i32)))
  (type $t7 (func (param i32)))
  (type $t8 (func))
  (type $t9 (func (result i32)))
  (type $t10 (func (param i32) (result i64)))
  (type $t11 (func (param i32 i32) (result i64)))
  (type $t12 (func (result i64)))
  (type $t13 (func (param i32 i32)))
  (type $t14 (func (param f64 i32) (result f64)))
  (type $t15 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t16 (func (param i32 i32 i32)))
  (type $t17 (func (param i32 i32 i32 i32 i32)))
  (import "wasi_snapshot_preview1" "args_get" (func $__imported_wasi_snapshot_preview1_args_get (type $t2)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $__imported_wasi_snapshot_preview1_args_sizes_get (type $t2)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $__imported_wasi_snapshot_preview1_clock_time_get (type $t3)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type $t4)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type $t5)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type $t6)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type $t7)))
  (func $__wasm_call_ctors (type $t8))
  (func $undefined_weak:main (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (unreachable))
  (func $_start (export "_start") (type $t8)
    (local $l0 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (i32.load
            (i32.add
              (global.get $GOT.data.internal.__memory_base)
              (i32.const 3652))))
        (i32.store
          (i32.add
            (global.get $GOT.data.internal.__memory_base)
            (i32.const 3652))
          (i32.const 1))
        (call $__wasm_call_ctors)
        (local.set $l0
          (call $__main_void))
        (call $__wasm_call_dtors)
        (br_if $B0
          (local.get $l0))
        (return))
      (unreachable))
    (call $__wasi_proc_exit
      (local.get $l0))
    (unreachable))
  (func $get_current_unixtime__ (export "get_current_unixtime") (type $t9) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i64) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i64) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i64) (local $l16 i32) (local $l17 i32) (local $l18 i32)
    (local.set $l0
      (global.get $__stack_pointer))
    (local.set $l1
      (i32.const 32))
    (local.set $l2
      (i32.sub
        (local.get $l0)
        (local.get $l1)))
    (global.set $__stack_pointer
      (local.get $l2))
    (local.set $l3
      (call $std::__2::chrono::system_clock::now__))
    (i64.store offset=24
      (local.get $l2)
      (local.get $l3))
    (local.set $l4
      (i32.const 24))
    (local.set $l5
      (i32.add
        (local.get $l2)
        (local.get $l4)))
    (local.set $l6
      (local.get $l5))
    (local.set $l7
      (call $std::__2::chrono::time_point<std::__2::chrono::system_clock__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>>::time_since_epoch_abi:ne200100____const
        (local.get $l6)))
    (i64.store offset=16
      (local.get $l2)
      (local.get $l7))
    (local.set $l8
      (i32.const 16))
    (local.set $l9
      (i32.add
        (local.get $l2)
        (local.get $l8)))
    (local.set $l10
      (local.get $l9))
    (local.set $l11
      (call $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>_std::__2::chrono::duration_cast_abi:ne200100_<std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>__long_long__std::__2::ratio<1ll__1000000ll>__0>_std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>_const&_
        (local.get $l10)))
    (i64.store offset=8
      (local.get $l2)
      (local.get $l11))
    (local.set $l12
      (i32.const 8))
    (local.set $l13
      (i32.add
        (local.get $l2)
        (local.get $l12)))
    (local.set $l14
      (local.get $l13))
    (local.set $l15
      (call $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>::count_abi:ne200100____const
        (local.get $l14)))
    (local.set $l16
      (i32.wrap_i64
        (local.get $l15)))
    (local.set $l17
      (i32.const 32))
    (local.set $l18
      (i32.add
        (local.get $l2)
        (local.get $l17)))
    (global.set $__stack_pointer
      (local.get $l18))
    (return
      (local.get $l16)))
  (func $std::__2::chrono::time_point<std::__2::chrono::system_clock__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>>::time_since_epoch_abi:ne200100____const (type $t10) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64) (local $l6 i64)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load offset=4
        (local.get $l3)))
    (local.set $l5
      (i64.load
        (local.get $l4)))
    (i64.store offset=8
      (local.get $l3)
      (local.get $l5))
    (local.set $l6
      (i64.load offset=8
        (local.get $l3)))
    (return
      (local.get $l6)))
  (func $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>_std::__2::chrono::duration_cast_abi:ne200100_<std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>__long_long__std::__2::ratio<1ll__1000000ll>__0>_std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>_const&_ (type $t10) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i64) (local $l9 i64) (local $l10 i32) (local $l11 i32)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (global.set $__stack_pointer
      (local.get $l3))
    (i32.store offset=4
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load offset=4
        (local.get $l3)))
    (local.set $l5
      (i32.const 3))
    (local.set $l6
      (i32.add
        (local.get $l3)
        (local.get $l5)))
    (local.set $l7
      (local.get $l6))
    (local.set $l8
      (call $std::__2::chrono::__duration_cast<std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>__std::__2::ratio<1ll__1000000ll>__true__false>::operator___abi:ne200100__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>_const&__const
        (local.get $l7)
        (local.get $l4)))
    (i64.store offset=8
      (local.get $l3)
      (local.get $l8))
    (local.set $l9
      (i64.load offset=8
        (local.get $l3)))
    (local.set $l10
      (i32.const 16))
    (local.set $l11
      (i32.add
        (local.get $l3)
        (local.get $l10)))
    (global.set $__stack_pointer
      (local.get $l11))
    (return
      (local.get $l9)))
  (func $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>::count_abi:ne200100____const (type $t10) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load offset=12
        (local.get $l3)))
    (local.set $l5
      (i64.load
        (local.get $l4)))
    (return
      (local.get $l5)))
  (func $std::__2::chrono::__duration_cast<std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>__std::__2::ratio<1ll__1000000ll>__true__false>::operator___abi:ne200100__std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>_const&__const (type $t11) (param $p0 i32) (param $p1 i32) (result i64)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i64) (local $l7 i64) (local $l8 i64) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i64) (local $l16 i32) (local $l17 i32)
    (local.set $l2
      (global.get $__stack_pointer))
    (local.set $l3
      (i32.const 32))
    (local.set $l4
      (i32.sub
        (local.get $l2)
        (local.get $l3)))
    (global.set $__stack_pointer
      (local.get $l4))
    (i32.store offset=20
      (local.get $l4)
      (local.get $p0))
    (i32.store offset=16
      (local.get $l4)
      (local.get $p1))
    (local.set $l5
      (i32.load offset=16
        (local.get $l4)))
    (local.set $l6
      (call $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>::count_abi:ne200100____const
        (local.get $l5)))
    (local.set $l7
      (i64.const 1000000))
    (local.set $l8
      (i64.div_s
        (local.get $l6)
        (local.get $l7)))
    (i64.store offset=8
      (local.get $l4)
      (local.get $l8))
    (local.set $l9
      (i32.const 24))
    (local.set $l10
      (i32.add
        (local.get $l4)
        (local.get $l9)))
    (local.set $l11
      (local.get $l10))
    (local.set $l12
      (i32.const 8))
    (local.set $l13
      (i32.add
        (local.get $l4)
        (local.get $l12)))
    (local.set $l14
      (local.get $l13))
    (drop
      (call $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>::duration_abi:ne200100_<long_long__0>_long_long_const&_
        (local.get $l11)
        (local.get $l14)))
    (local.set $l15
      (i64.load offset=24
        (local.get $l4)))
    (local.set $l16
      (i32.const 32))
    (local.set $l17
      (i32.add
        (local.get $l4)
        (local.get $l16)))
    (global.set $__stack_pointer
      (local.get $l17))
    (return
      (local.get $l15)))
  (func $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1000000ll>>::count_abi:ne200100____const (type $t10) (param $p0 i32) (result i64)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i64)
    (local.set $l1
      (global.get $__stack_pointer))
    (local.set $l2
      (i32.const 16))
    (local.set $l3
      (i32.sub
        (local.get $l1)
        (local.get $l2)))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p0))
    (local.set $l4
      (i32.load offset=12
        (local.get $l3)))
    (local.set $l5
      (i64.load
        (local.get $l4)))
    (return
      (local.get $l5)))
  (func $std::__2::chrono::duration<long_long__std::__2::ratio<1ll__1ll>>::duration_abi:ne200100_<long_long__0>_long_long_const&_ (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i64)
    (local.set $l2
      (global.get $__stack_pointer))
    (local.set $l3
      (i32.const 16))
    (local.set $l4
      (i32.sub
        (local.get $l2)
        (local.get $l3)))
    (i32.store offset=12
      (local.get $l4)
      (local.get $p0))
    (i32.store offset=8
      (local.get $l4)
      (local.get $p1))
    (local.set $l5
      (i32.load offset=12
        (local.get $l4)))
    (local.set $l6
      (i32.load offset=8
        (local.get $l4)))
    (local.set $l7
      (i64.load
        (local.get $l6)))
    (i64.store
      (local.get $l5)
      (local.get $l7))
    (return
      (local.get $l5)))
  (func $std::__2::chrono::system_clock::now__ (type $t12) (result i64)
    (local $l0 i32) (local $l1 i64) (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (br_if $B0
        (i32.eqz
          (call $__clock_gettime
            (global.get $GOT.data.internal._CLOCK_REALTIME)
            (local.get $l0))))
      (local.set $l0
        (global.get $GOT.data.internal.__memory_base))
      (call $std::__2::__throw_system_error_int__char_const*_
        (i32.load
          (global.get $GOT.data.internal.errno))
        (i32.add
          (local.get $l0)
          (i32.const 1061)))
      (unreachable))
    (local.set $l1
      (i64.load
        (local.get $l0)))
    (local.set $l2
      (i32.load offset=8
        (local.get $l0)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l0)
        (i32.const 16)))
    (i64.add
      (i64.mul
        (local.get $l1)
        (i64.const 1000000))
      (i64.extend_i32_s
        (i32.div_s
          (local.get $l2)
          (i32.const 1000)))))
  (func $std::__2::__throw_system_error_int__char_const*_ (type $t13) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=4
      (local.get $l2)
      (local.get $p1))
    (i32.store
      (local.get $l2)
      (local.get $p0))
    (call $std::__2::__libcpp_verbose_abort_char_const*__..._
      (i32.add
        (global.get $GOT.data.internal.__memory_base)
        (i32.const 1115))
      (local.get $l2))
    (unreachable))
  (func $std::__2::__libcpp_verbose_abort_char_const*__..._ (type $t13) (param $p0 i32) (param $p1 i32)
    (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l2)
      (local.get $p1))
    (drop
      (call $vfprintf
        (i32.load
          (global.get $GOT.data.internal.stderr))
        (local.get $p0)
        (local.get $p1)))
    (call $abort)
    (unreachable))
  (func $malloc (type $t4) (param $p0 i32) (result i32)
    (call $dlmalloc
      (local.get $p0)))
  (func $dlmalloc (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32)
    (global.set $__stack_pointer
      (local.tee $l1
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (br_if $B12
                                (local.tee $l2
                                  (i32.load offset=3680
                                    (i32.const 0))))
                              (block $B13
                                (br_if $B13
                                  (local.tee $l3
                                    (i32.load offset=4128
                                      (i32.const 0))))
                                (i64.store offset=4140 align=4
                                  (i32.const 0)
                                  (i64.const -1))
                                (i64.store offset=4132 align=4
                                  (i32.const 0)
                                  (i64.const 281474976776192))
                                (i32.store offset=4128
                                  (i32.const 0)
                                  (local.tee $l3
                                    (i32.xor
                                      (i32.and
                                        (i32.add
                                          (local.get $l1)
                                          (i32.const 8))
                                        (i32.const -16))
                                      (i32.const 1431655768))))
                                (i32.store offset=4148
                                  (i32.const 0)
                                  (i32.const 0))
                                (i32.store offset=4100
                                  (i32.const 0)
                                  (i32.const 0)))
                              (br_if $B11
                                (i32.lt_u
                                  (i32.const 131072)
                                  (i32.const 69744)))
                              (local.set $l2
                                (i32.const 0))
                              (br_if $B12
                                (i32.lt_u
                                  (i32.sub
                                    (i32.const 131072)
                                    (i32.const 69744))
                                  (i32.const 89)))
                              (local.set $l4
                                (i32.const 0))
                              (i32.store offset=4104
                                (i32.const 0)
                                (i32.const 69744))
                              (i32.store offset=3672
                                (i32.const 0)
                                (i32.const 69744))
                              (i32.store offset=3692
                                (i32.const 0)
                                (local.get $l3))
                              (i32.store offset=3688
                                (i32.const 0)
                                (i32.const -1))
                              (i32.store offset=4108
                                (i32.const 0)
                                (local.tee $l3
                                  (i32.sub
                                    (i32.const 131072)
                                    (i32.const 69744))))
                              (i32.store offset=4092
                                (i32.const 0)
                                (local.get $l3))
                              (i32.store offset=4088
                                (i32.const 0)
                                (local.get $l3))
                              (loop $L14
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 3716))
                                  (local.tee $l3
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 3704))))
                                (i32.store
                                  (local.get $l3)
                                  (local.tee $l5
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 3696))))
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 3708))
                                  (local.get $l5))
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 3724))
                                  (local.tee $l5
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 3712))))
                                (i32.store
                                  (local.get $l5)
                                  (local.get $l3))
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 3732))
                                  (local.tee $l3
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 3720))))
                                (i32.store
                                  (local.get $l3)
                                  (local.get $l5))
                                (i32.store
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 3728))
                                  (local.get $l3))
                                (br_if $L14
                                  (i32.ne
                                    (local.tee $l4
                                      (i32.add
                                        (local.get $l4)
                                        (i32.const 32)))
                                    (i32.const 256))))
                              (i32.store
                                (i32.add
                                  (i32.const 131072)
                                  (i32.const -52))
                                (i32.const 56))
                              (i32.store offset=3684
                                (i32.const 0)
                                (i32.load offset=4144
                                  (i32.const 0)))
                              (i32.store offset=3680
                                (i32.const 0)
                                (local.tee $l2
                                  (i32.add
                                    (i32.const 69744)
                                    (local.tee $l4
                                      (i32.and
                                        (i32.sub
                                          (i32.const -8)
                                          (i32.const 69744))
                                        (i32.const 15))))))
                              (i32.store offset=3668
                                (i32.const 0)
                                (local.tee $l4
                                  (i32.add
                                    (i32.sub
                                      (i32.sub
                                        (i32.const 131072)
                                        (i32.const 69744))
                                      (local.get $l4))
                                    (i32.const -56))))
                              (i32.store offset=4
                                (local.get $l2)
                                (i32.or
                                  (local.get $l4)
                                  (i32.const 1))))
                            (block $B15
                              (block $B16
                                (br_if $B16
                                  (i32.gt_u
                                    (local.get $p0)
                                    (i32.const 236)))
                                (block $B17
                                  (br_if $B17
                                    (i32.eqz
                                      (i32.and
                                        (local.tee $l4
                                          (i32.shr_u
                                            (local.tee $l6
                                              (i32.load offset=3656
                                                (i32.const 0)))
                                            (local.tee $l3
                                              (i32.shr_u
                                                (local.tee $l5
                                                  (select
                                                    (i32.const 16)
                                                    (i32.and
                                                      (i32.add
                                                        (local.get $p0)
                                                        (i32.const 19))
                                                      (i32.const 496))
                                                    (i32.lt_u
                                                      (local.get $p0)
                                                      (i32.const 11))))
                                                (i32.const 3)))))
                                        (i32.const 3))))
                                  (block $B18
                                    (block $B19
                                      (br_if $B19
                                        (i32.ne
                                          (local.tee $l4
                                            (i32.add
                                              (local.tee $l3
                                                (i32.shl
                                                  (local.tee $l5
                                                    (i32.xor
                                                      (i32.or
                                                        (i32.and
                                                          (local.get $l4)
                                                          (i32.const 1))
                                                        (local.get $l3))
                                                      (i32.const 1)))
                                                  (i32.const 3)))
                                              (i32.const 3696)))
                                          (local.tee $p0
                                            (i32.load offset=8
                                              (local.tee $l3
                                                (i32.load
                                                  (i32.add
                                                    (local.get $l3)
                                                    (i32.const 3704))))))))
                                      (i32.store offset=3656
                                        (i32.const 0)
                                        (i32.and
                                          (local.get $l6)
                                          (i32.rotl
                                            (i32.const -2)
                                            (local.get $l5))))
                                      (br $B18))
                                    (i32.store offset=8
                                      (local.get $l4)
                                      (local.get $p0))
                                    (i32.store offset=12
                                      (local.get $p0)
                                      (local.get $l4)))
                                  (local.set $l4
                                    (i32.add
                                      (local.get $l3)
                                      (i32.const 8)))
                                  (i32.store offset=4
                                    (local.get $l3)
                                    (i32.or
                                      (local.tee $l5
                                        (i32.shl
                                          (local.get $l5)
                                          (i32.const 3)))
                                      (i32.const 3)))
                                  (i32.store offset=4
                                    (local.tee $l3
                                      (i32.add
                                        (local.get $l3)
                                        (local.get $l5)))
                                    (i32.or
                                      (i32.load offset=4
                                        (local.get $l3))
                                      (i32.const 1)))
                                  (br $B0))
                                (br_if $B15
                                  (i32.le_u
                                    (local.get $l5)
                                    (local.tee $l7
                                      (i32.load offset=3664
                                        (i32.const 0)))))
                                (block $B20
                                  (br_if $B20
                                    (i32.eqz
                                      (local.get $l4)))
                                  (block $B21
                                    (block $B22
                                      (br_if $B22
                                        (i32.ne
                                          (local.tee $p0
                                            (i32.add
                                              (local.tee $l4
                                                (i32.shl
                                                  (local.tee $l3
                                                    (i32.ctz
                                                      (i32.and
                                                        (i32.shl
                                                          (local.get $l4)
                                                          (local.get $l3))
                                                        (i32.or
                                                          (local.tee $l4
                                                            (i32.shl
                                                              (i32.const 2)
                                                              (local.get $l3)))
                                                          (i32.sub
                                                            (i32.const 0)
                                                            (local.get $l4))))))
                                                  (i32.const 3)))
                                              (i32.const 3696)))
                                          (local.tee $l8
                                            (i32.load offset=8
                                              (local.tee $l4
                                                (i32.load
                                                  (i32.add
                                                    (local.get $l4)
                                                    (i32.const 3704))))))))
                                      (i32.store offset=3656
                                        (i32.const 0)
                                        (local.tee $l6
                                          (i32.and
                                            (local.get $l6)
                                            (i32.rotl
                                              (i32.const -2)
                                              (local.get $l3)))))
                                      (br $B21))
                                    (i32.store offset=8
                                      (local.get $p0)
                                      (local.get $l8))
                                    (i32.store offset=12
                                      (local.get $l8)
                                      (local.get $p0)))
                                  (i32.store offset=4
                                    (local.get $l4)
                                    (i32.or
                                      (local.get $l5)
                                      (i32.const 3)))
                                  (i32.store
                                    (i32.add
                                      (local.get $l4)
                                      (local.tee $l3
                                        (i32.shl
                                          (local.get $l3)
                                          (i32.const 3))))
                                    (local.tee $p0
                                      (i32.sub
                                        (local.get $l3)
                                        (local.get $l5))))
                                  (i32.store offset=4
                                    (local.tee $l8
                                      (i32.add
                                        (local.get $l4)
                                        (local.get $l5)))
                                    (i32.or
                                      (local.get $p0)
                                      (i32.const 1)))
                                  (block $B23
                                    (br_if $B23
                                      (i32.eqz
                                        (local.get $l7)))
                                    (local.set $l5
                                      (i32.add
                                        (i32.and
                                          (local.get $l7)
                                          (i32.const -8))
                                        (i32.const 3696)))
                                    (local.set $l3
                                      (i32.load offset=3676
                                        (i32.const 0)))
                                    (block $B24
                                      (block $B25
                                        (br_if $B25
                                          (i32.and
                                            (local.get $l6)
                                            (local.tee $l9
                                              (i32.shl
                                                (i32.const 1)
                                                (i32.shr_u
                                                  (local.get $l7)
                                                  (i32.const 3))))))
                                        (i32.store offset=3656
                                          (i32.const 0)
                                          (i32.or
                                            (local.get $l6)
                                            (local.get $l9)))
                                        (local.set $l9
                                          (local.get $l5))
                                        (br $B24))
                                      (local.set $l9
                                        (i32.load offset=8
                                          (local.get $l5))))
                                    (i32.store offset=12
                                      (local.get $l9)
                                      (local.get $l3))
                                    (i32.store offset=8
                                      (local.get $l5)
                                      (local.get $l3))
                                    (i32.store offset=12
                                      (local.get $l3)
                                      (local.get $l5))
                                    (i32.store offset=8
                                      (local.get $l3)
                                      (local.get $l9)))
                                  (local.set $l4
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 8)))
                                  (i32.store offset=3676
                                    (i32.const 0)
                                    (local.get $l8))
                                  (i32.store offset=3664
                                    (i32.const 0)
                                    (local.get $p0))
                                  (br $B0))
                                (br_if $B15
                                  (i32.eqz
                                    (local.tee $l10
                                      (i32.load offset=3660
                                        (i32.const 0)))))
                                (local.set $l3
                                  (i32.sub
                                    (i32.and
                                      (i32.load offset=4
                                        (local.tee $l8
                                          (i32.load
                                            (i32.add
                                              (i32.shl
                                                (i32.ctz
                                                  (local.get $l10))
                                                (i32.const 2))
                                              (i32.const 3960)))))
                                      (i32.const -8))
                                    (local.get $l5)))
                                (local.set $p0
                                  (local.get $l8))
                                (block $B26
                                  (loop $L27
                                    (block $B28
                                      (br_if $B28
                                        (local.tee $l4
                                          (i32.load offset=16
                                            (local.get $p0))))
                                      (br_if $B26
                                        (i32.eqz
                                          (local.tee $l4
                                            (i32.load offset=20
                                              (local.get $p0))))))
                                    (local.set $l3
                                      (select
                                        (local.tee $p0
                                          (i32.sub
                                            (i32.and
                                              (i32.load offset=4
                                                (local.get $l4))
                                              (i32.const -8))
                                            (local.get $l5)))
                                        (local.get $l3)
                                        (local.tee $p0
                                          (i32.lt_u
                                            (local.get $p0)
                                            (local.get $l3)))))
                                    (local.set $l8
                                      (select
                                        (local.get $l4)
                                        (local.get $l8)
                                        (local.get $p0)))
                                    (local.set $p0
                                      (local.get $l4))
                                    (br $L27)))
                                (local.set $l2
                                  (i32.load offset=24
                                    (local.get $l8)))
                                (block $B29
                                  (br_if $B29
                                    (i32.eq
                                      (local.tee $l4
                                        (i32.load offset=12
                                          (local.get $l8)))
                                      (local.get $l8)))
                                  (i32.store offset=12
                                    (local.tee $p0
                                      (i32.load offset=8
                                        (local.get $l8)))
                                    (local.get $l4))
                                  (i32.store offset=8
                                    (local.get $l4)
                                    (local.get $p0))
                                  (br $B1))
                                (block $B30
                                  (block $B31
                                    (br_if $B31
                                      (i32.eqz
                                        (local.tee $p0
                                          (i32.load offset=20
                                            (local.get $l8)))))
                                    (local.set $l9
                                      (i32.add
                                        (local.get $l8)
                                        (i32.const 20)))
                                    (br $B30))
                                  (br_if $B10
                                    (i32.eqz
                                      (local.tee $p0
                                        (i32.load offset=16
                                          (local.get $l8)))))
                                  (local.set $l9
                                    (i32.add
                                      (local.get $l8)
                                      (i32.const 16))))
                                (loop $L32
                                  (local.set $l11
                                    (local.get $l9))
                                  (local.set $l9
                                    (i32.add
                                      (local.tee $l4
                                        (local.get $p0))
                                      (i32.const 20)))
                                  (br_if $L32
                                    (local.tee $p0
                                      (i32.load offset=20
                                        (local.get $l4))))
                                  (local.set $l9
                                    (i32.add
                                      (local.get $l4)
                                      (i32.const 16)))
                                  (br_if $L32
                                    (local.tee $p0
                                      (i32.load offset=16
                                        (local.get $l4)))))
                                (i32.store
                                  (local.get $l11)
                                  (i32.const 0))
                                (br $B1))
                              (local.set $l5
                                (i32.const -1))
                              (br_if $B15
                                (i32.gt_u
                                  (local.get $p0)
                                  (i32.const -65)))
                              (local.set $l5
                                (i32.and
                                  (local.tee $l4
                                    (i32.add
                                      (local.get $p0)
                                      (i32.const 19)))
                                  (i32.const -16)))
                              (br_if $B15
                                (i32.eqz
                                  (local.tee $l10
                                    (i32.load offset=3660
                                      (i32.const 0)))))
                              (local.set $l7
                                (i32.const 31))
                              (block $B33
                                (br_if $B33
                                  (i32.gt_u
                                    (local.get $p0)
                                    (i32.const 16777196)))
                                (local.set $l7
                                  (i32.add
                                    (i32.sub
                                      (i32.and
                                        (i32.shr_u
                                          (local.get $l5)
                                          (i32.sub
                                            (i32.const 38)
                                            (local.tee $l4
                                              (i32.clz
                                                (i32.shr_u
                                                  (local.get $l4)
                                                  (i32.const 8))))))
                                        (i32.const 1))
                                      (i32.shl
                                        (local.get $l4)
                                        (i32.const 1)))
                                    (i32.const 62))))
                              (local.set $l3
                                (i32.sub
                                  (i32.const 0)
                                  (local.get $l5)))
                              (block $B34
                                (block $B35
                                  (block $B36
                                    (block $B37
                                      (br_if $B37
                                        (local.tee $p0
                                          (i32.load
                                            (i32.add
                                              (i32.shl
                                                (local.get $l7)
                                                (i32.const 2))
                                              (i32.const 3960)))))
                                      (local.set $l4
                                        (i32.const 0))
                                      (local.set $l9
                                        (i32.const 0))
                                      (br $B36))
                                    (local.set $l4
                                      (i32.const 0))
                                    (local.set $l8
                                      (i32.shl
                                        (local.get $l5)
                                        (select
                                          (i32.const 0)
                                          (i32.sub
                                            (i32.const 25)
                                            (i32.shr_u
                                              (local.get $l7)
                                              (i32.const 1)))
                                          (i32.eq
                                            (local.get $l7)
                                            (i32.const 31)))))
                                    (local.set $l9
                                      (i32.const 0))
                                    (loop $L38
                                      (block $B39
                                        (br_if $B39
                                          (i32.ge_u
                                            (local.tee $l6
                                              (i32.sub
                                                (i32.and
                                                  (i32.load offset=4
                                                    (local.get $p0))
                                                  (i32.const -8))
                                                (local.get $l5)))
                                            (local.get $l3)))
                                        (local.set $l3
                                          (local.get $l6))
                                        (local.set $l9
                                          (local.get $p0))
                                        (br_if $B39
                                          (local.get $l6))
                                        (local.set $l3
                                          (i32.const 0))
                                        (local.set $l9
                                          (local.get $p0))
                                        (local.set $l4
                                          (local.get $p0))
                                        (br $B35))
                                      (local.set $l4
                                        (select
                                          (select
                                            (local.get $l4)
                                            (local.tee $l6
                                              (i32.load offset=20
                                                (local.get $p0)))
                                            (i32.eq
                                              (local.get $l6)
                                              (local.tee $l11
                                                (i32.load offset=16
                                                  (i32.add
                                                    (local.get $p0)
                                                    (i32.and
                                                      (i32.shr_u
                                                        (local.get $l8)
                                                        (i32.const 29))
                                                      (i32.const 4)))))))
                                          (local.get $l4)
                                          (local.get $l6)))
                                      (local.set $l8
                                        (i32.shl
                                          (local.get $l8)
                                          (i32.const 1)))
                                      (local.set $p0
                                        (local.get $l11))
                                      (br_if $L38
                                        (local.get $l11))))
                                  (block $B40
                                    (br_if $B40
                                      (i32.or
                                        (local.get $l4)
                                        (local.get $l9)))
                                    (local.set $l9
                                      (i32.const 0))
                                    (br_if $B15
                                      (i32.eqz
                                        (local.tee $l4
                                          (i32.and
                                            (i32.or
                                              (local.tee $l4
                                                (i32.shl
                                                  (i32.const 2)
                                                  (local.get $l7)))
                                              (i32.sub
                                                (i32.const 0)
                                                (local.get $l4)))
                                            (local.get $l10)))))
                                    (local.set $l4
                                      (i32.load
                                        (i32.add
                                          (i32.shl
                                            (i32.ctz
                                              (local.get $l4))
                                            (i32.const 2))
                                          (i32.const 3960)))))
                                  (br_if $B34
                                    (i32.eqz
                                      (local.get $l4))))
                                (loop $L41
                                  (local.set $l8
                                    (i32.lt_u
                                      (local.tee $l6
                                        (i32.sub
                                          (i32.and
                                            (i32.load offset=4
                                              (local.get $l4))
                                            (i32.const -8))
                                          (local.get $l5)))
                                      (local.get $l3)))
                                  (block $B42
                                    (br_if $B42
                                      (local.tee $p0
                                        (i32.load offset=16
                                          (local.get $l4))))
                                    (local.set $p0
                                      (i32.load offset=20
                                        (local.get $l4))))
                                  (local.set $l3
                                    (select
                                      (local.get $l6)
                                      (local.get $l3)
                                      (local.get $l8)))
                                  (local.set $l9
                                    (select
                                      (local.get $l4)
                                      (local.get $l9)
                                      (local.get $l8)))
                                  (local.set $l4
                                    (local.get $p0))
                                  (br_if $L41
                                    (local.get $p0))))
                              (br_if $B15
                                (i32.eqz
                                  (local.get $l9)))
                              (br_if $B15
                                (i32.ge_u
                                  (local.get $l3)
                                  (i32.sub
                                    (i32.load offset=3664
                                      (i32.const 0))
                                    (local.get $l5))))
                              (local.set $l11
                                (i32.load offset=24
                                  (local.get $l9)))
                              (block $B43
                                (br_if $B43
                                  (i32.eq
                                    (local.tee $l4
                                      (i32.load offset=12
                                        (local.get $l9)))
                                    (local.get $l9)))
                                (i32.store offset=12
                                  (local.tee $p0
                                    (i32.load offset=8
                                      (local.get $l9)))
                                  (local.get $l4))
                                (i32.store offset=8
                                  (local.get $l4)
                                  (local.get $p0))
                                (br $B2))
                              (block $B44
                                (block $B45
                                  (br_if $B45
                                    (i32.eqz
                                      (local.tee $p0
                                        (i32.load offset=20
                                          (local.get $l9)))))
                                  (local.set $l8
                                    (i32.add
                                      (local.get $l9)
                                      (i32.const 20)))
                                  (br $B44))
                                (br_if $B9
                                  (i32.eqz
                                    (local.tee $p0
                                      (i32.load offset=16
                                        (local.get $l9)))))
                                (local.set $l8
                                  (i32.add
                                    (local.get $l9)
                                    (i32.const 16))))
                              (loop $L46
                                (local.set $l6
                                  (local.get $l8))
                                (local.set $l8
                                  (i32.add
                                    (local.tee $l4
                                      (local.get $p0))
                                    (i32.const 20)))
                                (br_if $L46
                                  (local.tee $p0
                                    (i32.load offset=20
                                      (local.get $l4))))
                                (local.set $l8
                                  (i32.add
                                    (local.get $l4)
                                    (i32.const 16)))
                                (br_if $L46
                                  (local.tee $p0
                                    (i32.load offset=16
                                      (local.get $l4)))))
                              (i32.store
                                (local.get $l6)
                                (i32.const 0))
                              (br $B2))
                            (block $B47
                              (br_if $B47
                                (i32.lt_u
                                  (local.tee $l4
                                    (i32.load offset=3664
                                      (i32.const 0)))
                                  (local.get $l5)))
                              (local.set $l3
                                (i32.load offset=3676
                                  (i32.const 0)))
                              (block $B48
                                (block $B49
                                  (br_if $B49
                                    (i32.lt_u
                                      (local.tee $p0
                                        (i32.sub
                                          (local.get $l4)
                                          (local.get $l5)))
                                      (i32.const 16)))
                                  (i32.store offset=4
                                    (local.tee $l8
                                      (i32.add
                                        (local.get $l3)
                                        (local.get $l5)))
                                    (i32.or
                                      (local.get $p0)
                                      (i32.const 1)))
                                  (i32.store
                                    (i32.add
                                      (local.get $l3)
                                      (local.get $l4))
                                    (local.get $p0))
                                  (i32.store offset=4
                                    (local.get $l3)
                                    (i32.or
                                      (local.get $l5)
                                      (i32.const 3)))
                                  (br $B48))
                                (i32.store offset=4
                                  (local.get $l3)
                                  (i32.or
                                    (local.get $l4)
                                    (i32.const 3)))
                                (i32.store offset=4
                                  (local.tee $l4
                                    (i32.add
                                      (local.get $l3)
                                      (local.get $l4)))
                                  (i32.or
                                    (i32.load offset=4
                                      (local.get $l4))
                                    (i32.const 1)))
                                (local.set $l8
                                  (i32.const 0))
                                (local.set $p0
                                  (i32.const 0)))
                              (i32.store offset=3664
                                (i32.const 0)
                                (local.get $p0))
                              (i32.store offset=3676
                                (i32.const 0)
                                (local.get $l8))
                              (local.set $l4
                                (i32.add
                                  (local.get $l3)
                                  (i32.const 8)))
                              (br $B0))
                            (block $B50
                              (br_if $B50
                                (i32.le_u
                                  (local.tee $p0
                                    (i32.load offset=3668
                                      (i32.const 0)))
                                  (local.get $l5)))
                              (i32.store offset=4
                                (local.tee $l4
                                  (i32.add
                                    (local.get $l2)
                                    (local.get $l5)))
                                (i32.or
                                  (local.tee $l3
                                    (i32.sub
                                      (local.get $p0)
                                      (local.get $l5)))
                                  (i32.const 1)))
                              (i32.store offset=3680
                                (i32.const 0)
                                (local.get $l4))
                              (i32.store offset=3668
                                (i32.const 0)
                                (local.get $l3))
                              (i32.store offset=4
                                (local.get $l2)
                                (i32.or
                                  (local.get $l5)
                                  (i32.const 3)))
                              (local.set $l4
                                (i32.add
                                  (local.get $l2)
                                  (i32.const 8)))
                              (br $B0))
                            (block $B51
                              (block $B52
                                (br_if $B52
                                  (i32.eqz
                                    (i32.load offset=4128
                                      (i32.const 0))))
                                (local.set $l3
                                  (i32.load offset=4136
                                    (i32.const 0)))
                                (br $B51))
                              (i64.store offset=4140 align=4
                                (i32.const 0)
                                (i64.const -1))
                              (i64.store offset=4132 align=4
                                (i32.const 0)
                                (i64.const 281474976776192))
                              (i32.store offset=4128
                                (i32.const 0)
                                (i32.xor
                                  (i32.and
                                    (i32.add
                                      (local.get $l1)
                                      (i32.const 12))
                                    (i32.const -16))
                                  (i32.const 1431655768)))
                              (i32.store offset=4148
                                (i32.const 0)
                                (i32.const 0))
                              (i32.store offset=4100
                                (i32.const 0)
                                (i32.const 0))
                              (local.set $l3
                                (i32.const 65536)))
                            (local.set $l4
                              (i32.const 0))
                            (block $B53
                              (br_if $B53
                                (i32.gt_u
                                  (local.tee $l9
                                    (i32.and
                                      (local.tee $l8
                                        (i32.add
                                          (local.get $l3)
                                          (local.tee $l11
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 71)))))
                                      (local.tee $l6
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get $l3)))))
                                  (local.get $l5)))
                              (i32.store offset=4152
                                (i32.const 0)
                                (i32.const 48))
                              (br $B0))
                            (block $B54
                              (br_if $B54
                                (i32.eqz
                                  (local.tee $l4
                                    (i32.load offset=4096
                                      (i32.const 0)))))
                              (block $B55
                                (br_if $B55
                                  (i32.le_u
                                    (local.tee $l7
                                      (i32.add
                                        (local.tee $l3
                                          (i32.load offset=4088
                                            (i32.const 0)))
                                        (local.get $l9)))
                                    (local.get $l3)))
                                (br_if $B54
                                  (i32.le_u
                                    (local.get $l7)
                                    (local.get $l4))))
                              (local.set $l4
                                (i32.const 0))
                              (i32.store offset=4152
                                (i32.const 0)
                                (i32.const 48))
                              (br $B0))
                            (br_if $B6
                              (i32.and
                                (i32.load8_u offset=4100
                                  (i32.const 0))
                                (i32.const 4)))
                            (block $B56
                              (block $B57
                                (block $B58
                                  (br_if $B58
                                    (i32.eqz
                                      (local.get $l2)))
                                  (local.set $l4
                                    (i32.const 4104))
                                  (loop $L59
                                    (block $B60
                                      (br_if $B60
                                        (i32.lt_u
                                          (local.get $l2)
                                          (local.tee $l3
                                            (i32.load
                                              (local.get $l4)))))
                                      (br_if $B57
                                        (i32.lt_u
                                          (local.get $l2)
                                          (i32.add
                                            (local.get $l3)
                                            (i32.load offset=4
                                              (local.get $l4))))))
                                    (br_if $L59
                                      (local.tee $l4
                                        (i32.load offset=8
                                          (local.get $l4))))))
                                (br_if $B7
                                  (i32.eq
                                    (local.tee $l8
                                      (call $sbrk
                                        (i32.const 0)))
                                    (i32.const -1)))
                                (local.set $l6
                                  (local.get $l9))
                                (block $B61
                                  (br_if $B61
                                    (i32.eqz
                                      (i32.and
                                        (local.tee $l3
                                          (i32.add
                                            (local.tee $l4
                                              (i32.load offset=4132
                                                (i32.const 0)))
                                            (i32.const -1)))
                                        (local.get $l8))))
                                  (local.set $l6
                                    (i32.add
                                      (i32.sub
                                        (local.get $l9)
                                        (local.get $l8))
                                      (i32.and
                                        (i32.add
                                          (local.get $l3)
                                          (local.get $l8))
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get $l4))))))
                                (br_if $B7
                                  (i32.le_u
                                    (local.get $l6)
                                    (local.get $l5)))
                                (br_if $B7
                                  (i32.gt_u
                                    (local.get $l6)
                                    (i32.const 2147483646)))
                                (block $B62
                                  (br_if $B62
                                    (i32.eqz
                                      (local.tee $l4
                                        (i32.load offset=4096
                                          (i32.const 0)))))
                                  (br_if $B7
                                    (i32.le_u
                                      (local.tee $p0
                                        (i32.add
                                          (local.tee $l3
                                            (i32.load offset=4088
                                              (i32.const 0)))
                                          (local.get $l6)))
                                      (local.get $l3)))
                                  (br_if $B7
                                    (i32.gt_u
                                      (local.get $p0)
                                      (local.get $l4))))
                                (br_if $B56
                                  (i32.ne
                                    (local.tee $l4
                                      (call $sbrk
                                        (local.get $l6)))
                                    (local.get $l8)))
                                (br $B5))
                              (br_if $B7
                                (i32.gt_u
                                  (local.tee $l6
                                    (i32.and
                                      (i32.sub
                                        (local.get $l8)
                                        (local.get $p0))
                                      (local.get $l6)))
                                  (i32.const 2147483646)))
                              (br_if $B8
                                (i32.eq
                                  (local.tee $l8
                                    (call $sbrk
                                      (local.get $l6)))
                                  (i32.add
                                    (i32.load
                                      (local.get $l4))
                                    (i32.load offset=4
                                      (local.get $l4)))))
                              (local.set $l4
                                (local.get $l8)))
                            (block $B63
                              (br_if $B63
                                (i32.ge_u
                                  (local.get $l6)
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 72))))
                              (br_if $B63
                                (i32.eq
                                  (local.get $l4)
                                  (i32.const -1)))
                              (block $B64
                                (br_if $B64
                                  (i32.le_u
                                    (local.tee $l3
                                      (i32.and
                                        (i32.add
                                          (i32.sub
                                            (local.get $l11)
                                            (local.get $l6))
                                          (local.tee $l3
                                            (i32.load offset=4136
                                              (i32.const 0))))
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get $l3))))
                                    (i32.const 2147483646)))
                                (local.set $l8
                                  (local.get $l4))
                                (br $B5))
                              (block $B65
                                (br_if $B65
                                  (i32.eq
                                    (call $sbrk
                                      (local.get $l3))
                                    (i32.const -1)))
                                (local.set $l6
                                  (i32.add
                                    (local.get $l3)
                                    (local.get $l6)))
                                (local.set $l8
                                  (local.get $l4))
                                (br $B5))
                              (drop
                                (call $sbrk
                                  (i32.sub
                                    (i32.const 0)
                                    (local.get $l6))))
                              (br $B7))
                            (local.set $l8
                              (local.get $l4))
                            (br_if $B5
                              (i32.ne
                                (local.get $l4)
                                (i32.const -1)))
                            (br $B7))
                          (unreachable))
                        (local.set $l4
                          (i32.const 0))
                        (br $B1))
                      (local.set $l4
                        (i32.const 0))
                      (br $B2))
                    (br_if $B5
                      (i32.ne
                        (local.get $l8)
                        (i32.const -1))))
                  (i32.store offset=4100
                    (i32.const 0)
                    (i32.or
                      (i32.load offset=4100
                        (i32.const 0))
                      (i32.const 4))))
                (br_if $B4
                  (i32.gt_u
                    (local.get $l9)
                    (i32.const 2147483646)))
                (local.set $l8
                  (call $sbrk
                    (local.get $l9)))
                (local.set $l4
                  (call $sbrk
                    (i32.const 0)))
                (br_if $B4
                  (i32.eq
                    (local.get $l8)
                    (i32.const -1)))
                (br_if $B4
                  (i32.eq
                    (local.get $l4)
                    (i32.const -1)))
                (br_if $B4
                  (i32.ge_u
                    (local.get $l8)
                    (local.get $l4)))
                (br_if $B4
                  (i32.le_u
                    (local.tee $l6
                      (i32.sub
                        (local.get $l4)
                        (local.get $l8)))
                    (i32.add
                      (local.get $l5)
                      (i32.const 56)))))
              (i32.store offset=4088
                (i32.const 0)
                (local.tee $l4
                  (i32.add
                    (i32.load offset=4088
                      (i32.const 0))
                    (local.get $l6))))
              (block $B66
                (br_if $B66
                  (i32.le_u
                    (local.get $l4)
                    (i32.load offset=4092
                      (i32.const 0))))
                (i32.store offset=4092
                  (i32.const 0)
                  (local.get $l4)))
              (block $B67
                (block $B68
                  (block $B69
                    (block $B70
                      (br_if $B70
                        (i32.eqz
                          (local.tee $l3
                            (i32.load offset=3680
                              (i32.const 0)))))
                      (local.set $l4
                        (i32.const 4104))
                      (loop $L71
                        (br_if $B69
                          (i32.eq
                            (local.get $l8)
                            (i32.add
                              (local.tee $p0
                                (i32.load
                                  (local.get $l4)))
                              (local.tee $l9
                                (i32.load offset=4
                                  (local.get $l4))))))
                        (br_if $L71
                          (local.tee $l4
                            (i32.load offset=8
                              (local.get $l4))))
                        (br $B68)))
                    (block $B72
                      (block $B73
                        (br_if $B73
                          (i32.eqz
                            (local.tee $l4
                              (i32.load offset=3672
                                (i32.const 0)))))
                        (br_if $B72
                          (i32.ge_u
                            (local.get $l8)
                            (local.get $l4))))
                      (i32.store offset=3672
                        (i32.const 0)
                        (local.get $l8)))
                    (local.set $l4
                      (i32.const 0))
                    (i32.store offset=4108
                      (i32.const 0)
                      (local.get $l6))
                    (i32.store offset=4104
                      (i32.const 0)
                      (local.get $l8))
                    (i32.store offset=3688
                      (i32.const 0)
                      (i32.const -1))
                    (i32.store offset=3692
                      (i32.const 0)
                      (i32.load offset=4128
                        (i32.const 0)))
                    (i32.store offset=4116
                      (i32.const 0)
                      (i32.const 0))
                    (loop $L74
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 3716))
                        (local.tee $l3
                          (i32.add
                            (local.get $l4)
                            (i32.const 3704))))
                      (i32.store
                        (local.get $l3)
                        (local.tee $p0
                          (i32.add
                            (local.get $l4)
                            (i32.const 3696))))
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 3708))
                        (local.get $p0))
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 3724))
                        (local.tee $p0
                          (i32.add
                            (local.get $l4)
                            (i32.const 3712))))
                      (i32.store
                        (local.get $p0)
                        (local.get $l3))
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 3732))
                        (local.tee $l3
                          (i32.add
                            (local.get $l4)
                            (i32.const 3720))))
                      (i32.store
                        (local.get $l3)
                        (local.get $p0))
                      (i32.store
                        (i32.add
                          (local.get $l4)
                          (i32.const 3728))
                        (local.get $l3))
                      (br_if $L74
                        (i32.ne
                          (local.tee $l4
                            (i32.add
                              (local.get $l4)
                              (i32.const 32)))
                          (i32.const 256))))
                    (i32.store offset=4
                      (local.tee $l3
                        (i32.add
                          (local.get $l8)
                          (local.tee $l4
                            (i32.and
                              (i32.sub
                                (i32.const -8)
                                (local.get $l8))
                              (i32.const 15)))))
                      (i32.or
                        (local.tee $l4
                          (i32.sub
                            (local.tee $p0
                              (i32.add
                                (local.get $l6)
                                (i32.const -56)))
                            (local.get $l4)))
                        (i32.const 1)))
                    (i32.store offset=3684
                      (i32.const 0)
                      (i32.load offset=4144
                        (i32.const 0)))
                    (i32.store offset=3668
                      (i32.const 0)
                      (local.get $l4))
                    (i32.store offset=3680
                      (i32.const 0)
                      (local.get $l3))
                    (i32.store offset=4
                      (i32.add
                        (local.get $l8)
                        (local.get $p0))
                      (i32.const 56))
                    (br $B67))
                  (br_if $B68
                    (i32.ge_u
                      (local.get $l3)
                      (local.get $l8)))
                  (br_if $B68
                    (i32.lt_u
                      (local.get $l3)
                      (local.get $p0)))
                  (br_if $B68
                    (i32.and
                      (i32.load offset=12
                        (local.get $l4))
                      (i32.const 8)))
                  (i32.store offset=4
                    (local.tee $l8
                      (i32.add
                        (local.get $l3)
                        (local.tee $p0
                          (i32.and
                            (i32.sub
                              (i32.const -8)
                              (local.get $l3))
                            (i32.const 15)))))
                    (i32.or
                      (local.tee $p0
                        (i32.sub
                          (local.tee $l11
                            (i32.add
                              (i32.load offset=3668
                                (i32.const 0))
                              (local.get $l6)))
                          (local.get $p0)))
                      (i32.const 1)))
                  (i32.store offset=4
                    (local.get $l4)
                    (i32.add
                      (local.get $l9)
                      (local.get $l6)))
                  (i32.store offset=3684
                    (i32.const 0)
                    (i32.load offset=4144
                      (i32.const 0)))
                  (i32.store offset=3668
                    (i32.const 0)
                    (local.get $p0))
                  (i32.store offset=3680
                    (i32.const 0)
                    (local.get $l8))
                  (i32.store offset=4
                    (i32.add
                      (local.get $l3)
                      (local.get $l11))
                    (i32.const 56))
                  (br $B67))
                (block $B75
                  (br_if $B75
                    (i32.ge_u
                      (local.get $l8)
                      (i32.load offset=3672
                        (i32.const 0))))
                  (i32.store offset=3672
                    (i32.const 0)
                    (local.get $l8)))
                (local.set $p0
                  (i32.add
                    (local.get $l8)
                    (local.get $l6)))
                (local.set $l4
                  (i32.const 4104))
                (block $B76
                  (block $B77
                    (loop $L78
                      (br_if $B77
                        (i32.eq
                          (local.tee $l9
                            (i32.load
                              (local.get $l4)))
                          (local.get $p0)))
                      (br_if $L78
                        (local.tee $l4
                          (i32.load offset=8
                            (local.get $l4))))
                      (br $B76)))
                  (br_if $B3
                    (i32.eqz
                      (i32.and
                        (i32.load8_u offset=12
                          (local.get $l4))
                        (i32.const 8)))))
                (local.set $l4
                  (i32.const 4104))
                (block $B79
                  (loop $L80
                    (block $B81
                      (br_if $B81
                        (i32.lt_u
                          (local.get $l3)
                          (local.tee $p0
                            (i32.load
                              (local.get $l4)))))
                      (br_if $B79
                        (i32.lt_u
                          (local.get $l3)
                          (local.tee $p0
                            (i32.add
                              (local.get $p0)
                              (i32.load offset=4
                                (local.get $l4)))))))
                    (local.set $l4
                      (i32.load offset=8
                        (local.get $l4)))
                    (br $L80)))
                (i32.store offset=4
                  (local.tee $l11
                    (i32.add
                      (local.get $l8)
                      (local.tee $l4
                        (i32.and
                          (i32.sub
                            (i32.const -8)
                            (local.get $l8))
                          (i32.const 15)))))
                  (i32.or
                    (local.tee $l4
                      (i32.sub
                        (local.tee $l9
                          (i32.add
                            (local.get $l6)
                            (i32.const -56)))
                        (local.get $l4)))
                    (i32.const 1)))
                (i32.store offset=4
                  (i32.add
                    (local.get $l8)
                    (local.get $l9))
                  (i32.const 56))
                (i32.store offset=4
                  (local.tee $l9
                    (select
                      (local.get $l3)
                      (local.tee $l9
                        (i32.add
                          (i32.add
                            (local.get $p0)
                            (i32.and
                              (i32.sub
                                (i32.const 55)
                                (local.get $p0))
                              (i32.const 15)))
                          (i32.const -63)))
                      (i32.lt_u
                        (local.get $l9)
                        (i32.add
                          (local.get $l3)
                          (i32.const 16)))))
                  (i32.const 35))
                (i32.store offset=3684
                  (i32.const 0)
                  (i32.load offset=4144
                    (i32.const 0)))
                (i32.store offset=3668
                  (i32.const 0)
                  (local.get $l4))
                (i32.store offset=3680
                  (i32.const 0)
                  (local.get $l11))
                (i64.store align=4
                  (i32.add
                    (local.get $l9)
                    (i32.const 16))
                  (i64.load offset=4112 align=4
                    (i32.const 0)))
                (i64.store offset=8 align=4
                  (local.get $l9)
                  (i64.load offset=4104 align=4
                    (i32.const 0)))
                (i32.store offset=4112
                  (i32.const 0)
                  (i32.add
                    (local.get $l9)
                    (i32.const 8)))
                (i32.store offset=4108
                  (i32.const 0)
                  (local.get $l6))
                (i32.store offset=4104
                  (i32.const 0)
                  (local.get $l8))
                (i32.store offset=4116
                  (i32.const 0)
                  (i32.const 0))
                (local.set $l4
                  (i32.add
                    (local.get $l9)
                    (i32.const 36)))
                (loop $L82
                  (i32.store
                    (local.get $l4)
                    (i32.const 7))
                  (br_if $L82
                    (i32.lt_u
                      (local.tee $l4
                        (i32.add
                          (local.get $l4)
                          (i32.const 4)))
                      (local.get $p0))))
                (br_if $B67
                  (i32.eq
                    (local.get $l9)
                    (local.get $l3)))
                (i32.store offset=4
                  (local.get $l9)
                  (i32.and
                    (i32.load offset=4
                      (local.get $l9))
                    (i32.const -2)))
                (i32.store
                  (local.get $l9)
                  (local.tee $l8
                    (i32.sub
                      (local.get $l9)
                      (local.get $l3))))
                (i32.store offset=4
                  (local.get $l3)
                  (i32.or
                    (local.get $l8)
                    (i32.const 1)))
                (block $B83
                  (block $B84
                    (br_if $B84
                      (i32.gt_u
                        (local.get $l8)
                        (i32.const 255)))
                    (local.set $l4
                      (i32.add
                        (i32.and
                          (local.get $l8)
                          (i32.const -8))
                        (i32.const 3696)))
                    (block $B85
                      (block $B86
                        (br_if $B86
                          (i32.and
                            (local.tee $p0
                              (i32.load offset=3656
                                (i32.const 0)))
                            (local.tee $l8
                              (i32.shl
                                (i32.const 1)
                                (i32.shr_u
                                  (local.get $l8)
                                  (i32.const 3))))))
                        (i32.store offset=3656
                          (i32.const 0)
                          (i32.or
                            (local.get $p0)
                            (local.get $l8)))
                        (local.set $p0
                          (local.get $l4))
                        (br $B85))
                      (local.set $p0
                        (i32.load offset=8
                          (local.get $l4))))
                    (i32.store offset=12
                      (local.get $p0)
                      (local.get $l3))
                    (i32.store offset=8
                      (local.get $l4)
                      (local.get $l3))
                    (local.set $l8
                      (i32.const 12))
                    (local.set $l9
                      (i32.const 8))
                    (br $B83))
                  (local.set $l4
                    (i32.const 31))
                  (block $B87
                    (br_if $B87
                      (i32.gt_u
                        (local.get $l8)
                        (i32.const 16777215)))
                    (local.set $l4
                      (i32.add
                        (i32.sub
                          (i32.and
                            (i32.shr_u
                              (local.get $l8)
                              (i32.sub
                                (i32.const 38)
                                (local.tee $l4
                                  (i32.clz
                                    (i32.shr_u
                                      (local.get $l8)
                                      (i32.const 8))))))
                            (i32.const 1))
                          (i32.shl
                            (local.get $l4)
                            (i32.const 1)))
                        (i32.const 62))))
                  (i32.store offset=28
                    (local.get $l3)
                    (local.get $l4))
                  (i64.store offset=16 align=4
                    (local.get $l3)
                    (i64.const 0))
                  (local.set $p0
                    (i32.add
                      (i32.shl
                        (local.get $l4)
                        (i32.const 2))
                      (i32.const 3960)))
                  (block $B88
                    (block $B89
                      (block $B90
                        (br_if $B90
                          (i32.and
                            (local.tee $l9
                              (i32.load offset=3660
                                (i32.const 0)))
                            (local.tee $l6
                              (i32.shl
                                (i32.const 1)
                                (local.get $l4)))))
                        (i32.store
                          (local.get $p0)
                          (local.get $l3))
                        (i32.store offset=3660
                          (i32.const 0)
                          (i32.or
                            (local.get $l9)
                            (local.get $l6)))
                        (i32.store offset=24
                          (local.get $l3)
                          (local.get $p0))
                        (br $B89))
                      (local.set $l4
                        (i32.shl
                          (local.get $l8)
                          (select
                            (i32.const 0)
                            (i32.sub
                              (i32.const 25)
                              (i32.shr_u
                                (local.get $l4)
                                (i32.const 1)))
                            (i32.eq
                              (local.get $l4)
                              (i32.const 31)))))
                      (local.set $l9
                        (i32.load
                          (local.get $p0)))
                      (loop $L91
                        (br_if $B88
                          (i32.eq
                            (i32.and
                              (i32.load offset=4
                                (local.tee $p0
                                  (local.get $l9)))
                              (i32.const -8))
                            (local.get $l8)))
                        (local.set $l9
                          (i32.shr_u
                            (local.get $l4)
                            (i32.const 29)))
                        (local.set $l4
                          (i32.shl
                            (local.get $l4)
                            (i32.const 1)))
                        (br_if $L91
                          (local.tee $l9
                            (i32.load offset=16
                              (local.tee $l6
                                (i32.add
                                  (local.get $p0)
                                  (i32.and
                                    (local.get $l9)
                                    (i32.const 4))))))))
                      (i32.store
                        (i32.add
                          (local.get $l6)
                          (i32.const 16))
                        (local.get $l3))
                      (i32.store offset=24
                        (local.get $l3)
                        (local.get $p0)))
                    (local.set $l8
                      (i32.const 8))
                    (local.set $l9
                      (i32.const 12))
                    (local.set $p0
                      (local.get $l3))
                    (local.set $l4
                      (local.get $l3))
                    (br $B83))
                  (local.set $l4
                    (i32.load offset=8
                      (local.get $p0)))
                  (i32.store offset=8
                    (local.get $p0)
                    (local.get $l3))
                  (i32.store offset=12
                    (local.get $l4)
                    (local.get $l3))
                  (i32.store offset=8
                    (local.get $l3)
                    (local.get $l4))
                  (local.set $l4
                    (i32.const 0))
                  (local.set $l8
                    (i32.const 24))
                  (local.set $l9
                    (i32.const 12)))
                (i32.store
                  (i32.add
                    (local.get $l3)
                    (local.get $l9))
                  (local.get $p0))
                (i32.store
                  (i32.add
                    (local.get $l3)
                    (local.get $l8))
                  (local.get $l4)))
              (br_if $B4
                (i32.le_u
                  (local.tee $l4
                    (i32.load offset=3668
                      (i32.const 0)))
                  (local.get $l5)))
              (i32.store offset=4
                (local.tee $p0
                  (i32.add
                    (local.tee $l3
                      (i32.load offset=3680
                        (i32.const 0)))
                    (local.get $l5)))
                (i32.or
                  (local.tee $l4
                    (i32.sub
                      (local.get $l4)
                      (local.get $l5)))
                  (i32.const 1)))
              (i32.store offset=3668
                (i32.const 0)
                (local.get $l4))
              (i32.store offset=3680
                (i32.const 0)
                (local.get $p0))
              (i32.store offset=4
                (local.get $l3)
                (i32.or
                  (local.get $l5)
                  (i32.const 3)))
              (local.set $l4
                (i32.add
                  (local.get $l3)
                  (i32.const 8)))
              (br $B0))
            (local.set $l4
              (i32.const 0))
            (i32.store offset=4152
              (i32.const 0)
              (i32.const 48))
            (br $B0))
          (i32.store
            (local.get $l4)
            (local.get $l8))
          (i32.store offset=4
            (local.get $l4)
            (i32.add
              (i32.load offset=4
                (local.get $l4))
              (local.get $l6)))
          (local.set $l4
            (call $prepend_alloc
              (local.get $l8)
              (local.get $l9)
              (local.get $l5)))
          (br $B0))
        (block $B92
          (br_if $B92
            (i32.eqz
              (local.get $l11)))
          (block $B93
            (block $B94
              (br_if $B94
                (i32.ne
                  (local.get $l9)
                  (i32.load
                    (local.tee $p0
                      (i32.add
                        (i32.shl
                          (local.tee $l8
                            (i32.load offset=28
                              (local.get $l9)))
                          (i32.const 2))
                        (i32.const 3960))))))
              (i32.store
                (local.get $p0)
                (local.get $l4))
              (br_if $B93
                (local.get $l4))
              (i32.store offset=3660
                (i32.const 0)
                (local.tee $l10
                  (i32.and
                    (local.get $l10)
                    (i32.rotl
                      (i32.const -2)
                      (local.get $l8)))))
              (br $B92))
            (block $B95
              (block $B96
                (br_if $B96
                  (i32.ne
                    (i32.load offset=16
                      (local.get $l11))
                    (local.get $l9)))
                (i32.store offset=16
                  (local.get $l11)
                  (local.get $l4))
                (br $B95))
              (i32.store offset=20
                (local.get $l11)
                (local.get $l4)))
            (br_if $B92
              (i32.eqz
                (local.get $l4))))
          (i32.store offset=24
            (local.get $l4)
            (local.get $l11))
          (block $B97
            (br_if $B97
              (i32.eqz
                (local.tee $p0
                  (i32.load offset=16
                    (local.get $l9)))))
            (i32.store offset=16
              (local.get $l4)
              (local.get $p0))
            (i32.store offset=24
              (local.get $p0)
              (local.get $l4)))
          (br_if $B92
            (i32.eqz
              (local.tee $p0
                (i32.load offset=20
                  (local.get $l9)))))
          (i32.store offset=20
            (local.get $l4)
            (local.get $p0))
          (i32.store offset=24
            (local.get $p0)
            (local.get $l4)))
        (block $B98
          (block $B99
            (br_if $B99
              (i32.gt_u
                (local.get $l3)
                (i32.const 15)))
            (i32.store offset=4
              (local.get $l9)
              (i32.or
                (local.tee $l4
                  (i32.or
                    (local.get $l3)
                    (local.get $l5)))
                (i32.const 3)))
            (i32.store offset=4
              (local.tee $l4
                (i32.add
                  (local.get $l9)
                  (local.get $l4)))
              (i32.or
                (i32.load offset=4
                  (local.get $l4))
                (i32.const 1)))
            (br $B98))
          (i32.store offset=4
            (local.tee $l8
              (i32.add
                (local.get $l9)
                (local.get $l5)))
            (i32.or
              (local.get $l3)
              (i32.const 1)))
          (i32.store offset=4
            (local.get $l9)
            (i32.or
              (local.get $l5)
              (i32.const 3)))
          (i32.store
            (i32.add
              (local.get $l8)
              (local.get $l3))
            (local.get $l3))
          (block $B100
            (br_if $B100
              (i32.gt_u
                (local.get $l3)
                (i32.const 255)))
            (local.set $l4
              (i32.add
                (i32.and
                  (local.get $l3)
                  (i32.const -8))
                (i32.const 3696)))
            (block $B101
              (block $B102
                (br_if $B102
                  (i32.and
                    (local.tee $l5
                      (i32.load offset=3656
                        (i32.const 0)))
                    (local.tee $l3
                      (i32.shl
                        (i32.const 1)
                        (i32.shr_u
                          (local.get $l3)
                          (i32.const 3))))))
                (i32.store offset=3656
                  (i32.const 0)
                  (i32.or
                    (local.get $l5)
                    (local.get $l3)))
                (local.set $l3
                  (local.get $l4))
                (br $B101))
              (local.set $l3
                (i32.load offset=8
                  (local.get $l4))))
            (i32.store offset=12
              (local.get $l3)
              (local.get $l8))
            (i32.store offset=8
              (local.get $l4)
              (local.get $l8))
            (i32.store offset=12
              (local.get $l8)
              (local.get $l4))
            (i32.store offset=8
              (local.get $l8)
              (local.get $l3))
            (br $B98))
          (local.set $l4
            (i32.const 31))
          (block $B103
            (br_if $B103
              (i32.gt_u
                (local.get $l3)
                (i32.const 16777215)))
            (local.set $l4
              (i32.add
                (i32.sub
                  (i32.and
                    (i32.shr_u
                      (local.get $l3)
                      (i32.sub
                        (i32.const 38)
                        (local.tee $l4
                          (i32.clz
                            (i32.shr_u
                              (local.get $l3)
                              (i32.const 8))))))
                    (i32.const 1))
                  (i32.shl
                    (local.get $l4)
                    (i32.const 1)))
                (i32.const 62))))
          (i32.store offset=28
            (local.get $l8)
            (local.get $l4))
          (i64.store offset=16 align=4
            (local.get $l8)
            (i64.const 0))
          (local.set $l5
            (i32.add
              (i32.shl
                (local.get $l4)
                (i32.const 2))
              (i32.const 3960)))
          (block $B104
            (br_if $B104
              (i32.and
                (local.get $l10)
                (local.tee $p0
                  (i32.shl
                    (i32.const 1)
                    (local.get $l4)))))
            (i32.store
              (local.get $l5)
              (local.get $l8))
            (i32.store offset=3660
              (i32.const 0)
              (i32.or
                (local.get $l10)
                (local.get $p0)))
            (i32.store offset=24
              (local.get $l8)
              (local.get $l5))
            (i32.store offset=8
              (local.get $l8)
              (local.get $l8))
            (i32.store offset=12
              (local.get $l8)
              (local.get $l8))
            (br $B98))
          (local.set $l4
            (i32.shl
              (local.get $l3)
              (select
                (i32.const 0)
                (i32.sub
                  (i32.const 25)
                  (i32.shr_u
                    (local.get $l4)
                    (i32.const 1)))
                (i32.eq
                  (local.get $l4)
                  (i32.const 31)))))
          (local.set $p0
            (i32.load
              (local.get $l5)))
          (block $B105
            (loop $L106
              (br_if $B105
                (i32.eq
                  (i32.and
                    (i32.load offset=4
                      (local.tee $l5
                        (local.get $p0)))
                    (i32.const -8))
                  (local.get $l3)))
              (local.set $p0
                (i32.shr_u
                  (local.get $l4)
                  (i32.const 29)))
              (local.set $l4
                (i32.shl
                  (local.get $l4)
                  (i32.const 1)))
              (br_if $L106
                (local.tee $p0
                  (i32.load offset=16
                    (local.tee $l6
                      (i32.add
                        (local.get $l5)
                        (i32.and
                          (local.get $p0)
                          (i32.const 4))))))))
            (i32.store
              (i32.add
                (local.get $l6)
                (i32.const 16))
              (local.get $l8))
            (i32.store offset=24
              (local.get $l8)
              (local.get $l5))
            (i32.store offset=12
              (local.get $l8)
              (local.get $l8))
            (i32.store offset=8
              (local.get $l8)
              (local.get $l8))
            (br $B98))
          (i32.store offset=12
            (local.tee $l4
              (i32.load offset=8
                (local.get $l5)))
            (local.get $l8))
          (i32.store offset=8
            (local.get $l5)
            (local.get $l8))
          (i32.store offset=24
            (local.get $l8)
            (i32.const 0))
          (i32.store offset=12
            (local.get $l8)
            (local.get $l5))
          (i32.store offset=8
            (local.get $l8)
            (local.get $l4)))
        (local.set $l4
          (i32.add
            (local.get $l9)
            (i32.const 8)))
        (br $B0))
      (block $B107
        (br_if $B107
          (i32.eqz
            (local.get $l2)))
        (block $B108
          (block $B109
            (br_if $B109
              (i32.ne
                (local.get $l8)
                (i32.load
                  (local.tee $p0
                    (i32.add
                      (i32.shl
                        (local.tee $l9
                          (i32.load offset=28
                            (local.get $l8)))
                        (i32.const 2))
                      (i32.const 3960))))))
            (i32.store
              (local.get $p0)
              (local.get $l4))
            (br_if $B108
              (local.get $l4))
            (i32.store offset=3660
              (i32.const 0)
              (i32.and
                (local.get $l10)
                (i32.rotl
                  (i32.const -2)
                  (local.get $l9))))
            (br $B107))
          (block $B110
            (block $B111
              (br_if $B111
                (i32.ne
                  (i32.load offset=16
                    (local.get $l2))
                  (local.get $l8)))
              (i32.store offset=16
                (local.get $l2)
                (local.get $l4))
              (br $B110))
            (i32.store offset=20
              (local.get $l2)
              (local.get $l4)))
          (br_if $B107
            (i32.eqz
              (local.get $l4))))
        (i32.store offset=24
          (local.get $l4)
          (local.get $l2))
        (block $B112
          (br_if $B112
            (i32.eqz
              (local.tee $p0
                (i32.load offset=16
                  (local.get $l8)))))
          (i32.store offset=16
            (local.get $l4)
            (local.get $p0))
          (i32.store offset=24
            (local.get $p0)
            (local.get $l4)))
        (br_if $B107
          (i32.eqz
            (local.tee $p0
              (i32.load offset=20
                (local.get $l8)))))
        (i32.store offset=20
          (local.get $l4)
          (local.get $p0))
        (i32.store offset=24
          (local.get $p0)
          (local.get $l4)))
      (block $B113
        (block $B114
          (br_if $B114
            (i32.gt_u
              (local.get $l3)
              (i32.const 15)))
          (i32.store offset=4
            (local.get $l8)
            (i32.or
              (local.tee $l4
                (i32.or
                  (local.get $l3)
                  (local.get $l5)))
              (i32.const 3)))
          (i32.store offset=4
            (local.tee $l4
              (i32.add
                (local.get $l8)
                (local.get $l4)))
            (i32.or
              (i32.load offset=4
                (local.get $l4))
              (i32.const 1)))
          (br $B113))
        (i32.store offset=4
          (local.tee $p0
            (i32.add
              (local.get $l8)
              (local.get $l5)))
          (i32.or
            (local.get $l3)
            (i32.const 1)))
        (i32.store offset=4
          (local.get $l8)
          (i32.or
            (local.get $l5)
            (i32.const 3)))
        (i32.store
          (i32.add
            (local.get $p0)
            (local.get $l3))
          (local.get $l3))
        (block $B115
          (br_if $B115
            (i32.eqz
              (local.get $l7)))
          (local.set $l5
            (i32.add
              (i32.and
                (local.get $l7)
                (i32.const -8))
              (i32.const 3696)))
          (local.set $l4
            (i32.load offset=3676
              (i32.const 0)))
          (block $B116
            (block $B117
              (br_if $B117
                (i32.and
                  (local.tee $l9
                    (i32.shl
                      (i32.const 1)
                      (i32.shr_u
                        (local.get $l7)
                        (i32.const 3))))
                  (local.get $l6)))
              (i32.store offset=3656
                (i32.const 0)
                (i32.or
                  (local.get $l9)
                  (local.get $l6)))
              (local.set $l9
                (local.get $l5))
              (br $B116))
            (local.set $l9
              (i32.load offset=8
                (local.get $l5))))
          (i32.store offset=12
            (local.get $l9)
            (local.get $l4))
          (i32.store offset=8
            (local.get $l5)
            (local.get $l4))
          (i32.store offset=12
            (local.get $l4)
            (local.get $l5))
          (i32.store offset=8
            (local.get $l4)
            (local.get $l9)))
        (i32.store offset=3676
          (i32.const 0)
          (local.get $p0))
        (i32.store offset=3664
          (i32.const 0)
          (local.get $l3)))
      (local.set $l4
        (i32.add
          (local.get $l8)
          (i32.const 8))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l1)
        (i32.const 16)))
    (local.get $l4))
  (func $prepend_alloc (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (i32.store offset=4
      (local.tee $l3
        (i32.add
          (local.get $p0)
          (i32.and
            (i32.sub
              (i32.const -8)
              (local.get $p0))
            (i32.const 15))))
      (i32.or
        (local.get $p2)
        (i32.const 3)))
    (local.set $p0
      (i32.sub
        (local.tee $l4
          (i32.add
            (local.get $p1)
            (i32.and
              (i32.sub
                (i32.const -8)
                (local.get $p1))
              (i32.const 15))))
        (local.tee $l5
          (i32.add
            (local.get $l3)
            (local.get $p2)))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ne
            (local.get $l4)
            (i32.load offset=3680
              (i32.const 0))))
        (i32.store offset=3680
          (i32.const 0)
          (local.get $l5))
        (i32.store offset=3668
          (i32.const 0)
          (local.tee $p2
            (i32.add
              (i32.load offset=3668
                (i32.const 0))
              (local.get $p0))))
        (i32.store offset=4
          (local.get $l5)
          (i32.or
            (local.get $p2)
            (i32.const 1)))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.ne
            (local.get $l4)
            (i32.load offset=3676
              (i32.const 0))))
        (i32.store offset=3676
          (i32.const 0)
          (local.get $l5))
        (i32.store offset=3664
          (i32.const 0)
          (local.tee $p2
            (i32.add
              (i32.load offset=3664
                (i32.const 0))
              (local.get $p0))))
        (i32.store offset=4
          (local.get $l5)
          (i32.or
            (local.get $p2)
            (i32.const 1)))
        (i32.store
          (i32.add
            (local.get $l5)
            (local.get $p2))
          (local.get $p2))
        (br $B0))
      (block $B3
        (br_if $B3
          (i32.ne
            (i32.and
              (local.tee $p1
                (i32.load offset=4
                  (local.get $l4)))
              (i32.const 3))
            (i32.const 1)))
        (local.set $l6
          (i32.and
            (local.get $p1)
            (i32.const -8)))
        (local.set $p2
          (i32.load offset=12
            (local.get $l4)))
        (block $B4
          (block $B5
            (br_if $B5
              (i32.gt_u
                (local.get $p1)
                (i32.const 255)))
            (block $B6
              (br_if $B6
                (i32.ne
                  (local.get $p2)
                  (local.tee $l7
                    (i32.load offset=8
                      (local.get $l4)))))
              (i32.store offset=3656
                (i32.const 0)
                (i32.and
                  (i32.load offset=3656
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (i32.shr_u
                      (local.get $p1)
                      (i32.const 3)))))
              (br $B4))
            (i32.store offset=8
              (local.get $p2)
              (local.get $l7))
            (i32.store offset=12
              (local.get $l7)
              (local.get $p2))
            (br $B4))
          (local.set $l8
            (i32.load offset=24
              (local.get $l4)))
          (block $B7
            (block $B8
              (br_if $B8
                (i32.eq
                  (local.get $p2)
                  (local.get $l4)))
              (i32.store offset=12
                (local.tee $p1
                  (i32.load offset=8
                    (local.get $l4)))
                (local.get $p2))
              (i32.store offset=8
                (local.get $p2)
                (local.get $p1))
              (br $B7))
            (block $B9
              (block $B10
                (block $B11
                  (br_if $B11
                    (i32.eqz
                      (local.tee $p1
                        (i32.load offset=20
                          (local.get $l4)))))
                  (local.set $l7
                    (i32.add
                      (local.get $l4)
                      (i32.const 20)))
                  (br $B10))
                (br_if $B9
                  (i32.eqz
                    (local.tee $p1
                      (i32.load offset=16
                        (local.get $l4)))))
                (local.set $l7
                  (i32.add
                    (local.get $l4)
                    (i32.const 16))))
              (loop $L12
                (local.set $l9
                  (local.get $l7))
                (local.set $l7
                  (i32.add
                    (local.tee $p2
                      (local.get $p1))
                    (i32.const 20)))
                (br_if $L12
                  (local.tee $p1
                    (i32.load offset=20
                      (local.get $p2))))
                (local.set $l7
                  (i32.add
                    (local.get $p2)
                    (i32.const 16)))
                (br_if $L12
                  (local.tee $p1
                    (i32.load offset=16
                      (local.get $p2)))))
              (i32.store
                (local.get $l9)
                (i32.const 0))
              (br $B7))
            (local.set $p2
              (i32.const 0)))
          (br_if $B4
            (i32.eqz
              (local.get $l8)))
          (block $B13
            (block $B14
              (br_if $B14
                (i32.ne
                  (local.get $l4)
                  (i32.load
                    (local.tee $p1
                      (i32.add
                        (i32.shl
                          (local.tee $l7
                            (i32.load offset=28
                              (local.get $l4)))
                          (i32.const 2))
                        (i32.const 3960))))))
              (i32.store
                (local.get $p1)
                (local.get $p2))
              (br_if $B13
                (local.get $p2))
              (i32.store offset=3660
                (i32.const 0)
                (i32.and
                  (i32.load offset=3660
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l7))))
              (br $B4))
            (block $B15
              (block $B16
                (br_if $B16
                  (i32.ne
                    (i32.load offset=16
                      (local.get $l8))
                    (local.get $l4)))
                (i32.store offset=16
                  (local.get $l8)
                  (local.get $p2))
                (br $B15))
              (i32.store offset=20
                (local.get $l8)
                (local.get $p2)))
            (br_if $B4
              (i32.eqz
                (local.get $p2))))
          (i32.store offset=24
            (local.get $p2)
            (local.get $l8))
          (block $B17
            (br_if $B17
              (i32.eqz
                (local.tee $p1
                  (i32.load offset=16
                    (local.get $l4)))))
            (i32.store offset=16
              (local.get $p2)
              (local.get $p1))
            (i32.store offset=24
              (local.get $p1)
              (local.get $p2)))
          (br_if $B4
            (i32.eqz
              (local.tee $p1
                (i32.load offset=20
                  (local.get $l4)))))
          (i32.store offset=20
            (local.get $p2)
            (local.get $p1))
          (i32.store offset=24
            (local.get $p1)
            (local.get $p2)))
        (local.set $p0
          (i32.add
            (local.get $l6)
            (local.get $p0)))
        (local.set $p1
          (i32.load offset=4
            (local.tee $l4
              (i32.add
                (local.get $l4)
                (local.get $l6))))))
      (i32.store offset=4
        (local.get $l4)
        (i32.and
          (local.get $p1)
          (i32.const -2)))
      (i32.store
        (i32.add
          (local.get $l5)
          (local.get $p0))
        (local.get $p0))
      (i32.store offset=4
        (local.get $l5)
        (i32.or
          (local.get $p0)
          (i32.const 1)))
      (block $B18
        (br_if $B18
          (i32.gt_u
            (local.get $p0)
            (i32.const 255)))
        (local.set $p2
          (i32.add
            (i32.and
              (local.get $p0)
              (i32.const -8))
            (i32.const 3696)))
        (block $B19
          (block $B20
            (br_if $B20
              (i32.and
                (local.tee $p1
                  (i32.load offset=3656
                    (i32.const 0)))
                (local.tee $p0
                  (i32.shl
                    (i32.const 1)
                    (i32.shr_u
                      (local.get $p0)
                      (i32.const 3))))))
            (i32.store offset=3656
              (i32.const 0)
              (i32.or
                (local.get $p1)
                (local.get $p0)))
            (local.set $p0
              (local.get $p2))
            (br $B19))
          (local.set $p0
            (i32.load offset=8
              (local.get $p2))))
        (i32.store offset=12
          (local.get $p0)
          (local.get $l5))
        (i32.store offset=8
          (local.get $p2)
          (local.get $l5))
        (i32.store offset=12
          (local.get $l5)
          (local.get $p2))
        (i32.store offset=8
          (local.get $l5)
          (local.get $p0))
        (br $B0))
      (local.set $p2
        (i32.const 31))
      (block $B21
        (br_if $B21
          (i32.gt_u
            (local.get $p0)
            (i32.const 16777215)))
        (local.set $p2
          (i32.add
            (i32.sub
              (i32.and
                (i32.shr_u
                  (local.get $p0)
                  (i32.sub
                    (i32.const 38)
                    (local.tee $p2
                      (i32.clz
                        (i32.shr_u
                          (local.get $p0)
                          (i32.const 8))))))
                (i32.const 1))
              (i32.shl
                (local.get $p2)
                (i32.const 1)))
            (i32.const 62))))
      (i32.store offset=28
        (local.get $l5)
        (local.get $p2))
      (i64.store offset=16 align=4
        (local.get $l5)
        (i64.const 0))
      (local.set $p1
        (i32.add
          (i32.shl
            (local.get $p2)
            (i32.const 2))
          (i32.const 3960)))
      (block $B22
        (br_if $B22
          (i32.and
            (local.tee $l7
              (i32.load offset=3660
                (i32.const 0)))
            (local.tee $l4
              (i32.shl
                (i32.const 1)
                (local.get $p2)))))
        (i32.store
          (local.get $p1)
          (local.get $l5))
        (i32.store offset=3660
          (i32.const 0)
          (i32.or
            (local.get $l7)
            (local.get $l4)))
        (i32.store offset=24
          (local.get $l5)
          (local.get $p1))
        (i32.store offset=8
          (local.get $l5)
          (local.get $l5))
        (i32.store offset=12
          (local.get $l5)
          (local.get $l5))
        (br $B0))
      (local.set $p2
        (i32.shl
          (local.get $p0)
          (select
            (i32.const 0)
            (i32.sub
              (i32.const 25)
              (i32.shr_u
                (local.get $p2)
                (i32.const 1)))
            (i32.eq
              (local.get $p2)
              (i32.const 31)))))
      (local.set $l7
        (i32.load
          (local.get $p1)))
      (block $B23
        (loop $L24
          (br_if $B23
            (i32.eq
              (i32.and
                (i32.load offset=4
                  (local.tee $p1
                    (local.get $l7)))
                (i32.const -8))
              (local.get $p0)))
          (local.set $l7
            (i32.shr_u
              (local.get $p2)
              (i32.const 29)))
          (local.set $p2
            (i32.shl
              (local.get $p2)
              (i32.const 1)))
          (br_if $L24
            (local.tee $l7
              (i32.load offset=16
                (local.tee $l4
                  (i32.add
                    (local.get $p1)
                    (i32.and
                      (local.get $l7)
                      (i32.const 4))))))))
        (i32.store
          (i32.add
            (local.get $l4)
            (i32.const 16))
          (local.get $l5))
        (i32.store offset=24
          (local.get $l5)
          (local.get $p1))
        (i32.store offset=12
          (local.get $l5)
          (local.get $l5))
        (i32.store offset=8
          (local.get $l5)
          (local.get $l5))
        (br $B0))
      (i32.store offset=12
        (local.tee $p2
          (i32.load offset=8
            (local.get $p1)))
        (local.get $l5))
      (i32.store offset=8
        (local.get $p1)
        (local.get $l5))
      (i32.store offset=24
        (local.get $l5)
        (i32.const 0))
      (i32.store offset=12
        (local.get $l5)
        (local.get $p1))
      (i32.store offset=8
        (local.get $l5)
        (local.get $p2)))
    (i32.add
      (local.get $l3)
      (i32.const 8)))
  (func $free (type $t7) (param $p0 i32)
    (call $dlfree
      (local.get $p0)))
  (func $dlfree (type $t7) (param $p0 i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (local.set $l3
        (i32.add
          (local.tee $l1
            (i32.add
              (local.get $p0)
              (i32.const -8)))
          (local.tee $p0
            (i32.and
              (local.tee $l2
                (i32.load
                  (i32.add
                    (local.get $p0)
                    (i32.const -4))))
              (i32.const -8)))))
      (block $B1
        (br_if $B1
          (i32.and
            (local.get $l2)
            (i32.const 1)))
        (br_if $B0
          (i32.eqz
            (i32.and
              (local.get $l2)
              (i32.const 2))))
        (br_if $B0
          (i32.lt_u
            (local.tee $l1
              (i32.sub
                (local.get $l1)
                (local.tee $l4
                  (i32.load
                    (local.get $l1)))))
            (i32.load offset=3672
              (i32.const 0))))
        (local.set $p0
          (i32.add
            (local.get $l4)
            (local.get $p0)))
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.eq
                    (local.get $l1)
                    (i32.load offset=3676
                      (i32.const 0))))
                (local.set $l2
                  (i32.load offset=12
                    (local.get $l1)))
                (block $B6
                  (br_if $B6
                    (i32.gt_u
                      (local.get $l4)
                      (i32.const 255)))
                  (br_if $B4
                    (i32.ne
                      (local.get $l2)
                      (local.tee $l5
                        (i32.load offset=8
                          (local.get $l1)))))
                  (i32.store offset=3656
                    (i32.const 0)
                    (i32.and
                      (i32.load offset=3656
                        (i32.const 0))
                      (i32.rotl
                        (i32.const -2)
                        (i32.shr_u
                          (local.get $l4)
                          (i32.const 3)))))
                  (br $B1))
                (local.set $l6
                  (i32.load offset=24
                    (local.get $l1)))
                (block $B7
                  (br_if $B7
                    (i32.eq
                      (local.get $l2)
                      (local.get $l1)))
                  (i32.store offset=12
                    (local.tee $l4
                      (i32.load offset=8
                        (local.get $l1)))
                    (local.get $l2))
                  (i32.store offset=8
                    (local.get $l2)
                    (local.get $l4))
                  (br $B2))
                (block $B8
                  (block $B9
                    (br_if $B9
                      (i32.eqz
                        (local.tee $l4
                          (i32.load offset=20
                            (local.get $l1)))))
                    (local.set $l5
                      (i32.add
                        (local.get $l1)
                        (i32.const 20)))
                    (br $B8))
                  (br_if $B3
                    (i32.eqz
                      (local.tee $l4
                        (i32.load offset=16
                          (local.get $l1)))))
                  (local.set $l5
                    (i32.add
                      (local.get $l1)
                      (i32.const 16))))
                (loop $L10
                  (local.set $l7
                    (local.get $l5))
                  (local.set $l5
                    (i32.add
                      (local.tee $l2
                        (local.get $l4))
                      (i32.const 20)))
                  (br_if $L10
                    (local.tee $l4
                      (i32.load offset=20
                        (local.get $l2))))
                  (local.set $l5
                    (i32.add
                      (local.get $l2)
                      (i32.const 16)))
                  (br_if $L10
                    (local.tee $l4
                      (i32.load offset=16
                        (local.get $l2)))))
                (i32.store
                  (local.get $l7)
                  (i32.const 0))
                (br $B2))
              (br_if $B1
                (i32.ne
                  (i32.and
                    (local.tee $l2
                      (i32.load offset=4
                        (local.get $l3)))
                    (i32.const 3))
                  (i32.const 3)))
              (i32.store offset=4
                (local.get $l3)
                (i32.and
                  (local.get $l2)
                  (i32.const -2)))
              (i32.store offset=3664
                (i32.const 0)
                (local.get $p0))
              (i32.store
                (local.get $l3)
                (local.get $p0))
              (i32.store offset=4
                (local.get $l1)
                (i32.or
                  (local.get $p0)
                  (i32.const 1)))
              (return))
            (i32.store offset=8
              (local.get $l2)
              (local.get $l5))
            (i32.store offset=12
              (local.get $l5)
              (local.get $l2))
            (br $B1))
          (local.set $l2
            (i32.const 0)))
        (br_if $B1
          (i32.eqz
            (local.get $l6)))
        (block $B11
          (block $B12
            (br_if $B12
              (i32.ne
                (local.get $l1)
                (i32.load
                  (local.tee $l4
                    (i32.add
                      (i32.shl
                        (local.tee $l5
                          (i32.load offset=28
                            (local.get $l1)))
                        (i32.const 2))
                      (i32.const 3960))))))
            (i32.store
              (local.get $l4)
              (local.get $l2))
            (br_if $B11
              (local.get $l2))
            (i32.store offset=3660
              (i32.const 0)
              (i32.and
                (i32.load offset=3660
                  (i32.const 0))
                (i32.rotl
                  (i32.const -2)
                  (local.get $l5))))
            (br $B1))
          (block $B13
            (block $B14
              (br_if $B14
                (i32.ne
                  (i32.load offset=16
                    (local.get $l6))
                  (local.get $l1)))
              (i32.store offset=16
                (local.get $l6)
                (local.get $l2))
              (br $B13))
            (i32.store offset=20
              (local.get $l6)
              (local.get $l2)))
          (br_if $B1
            (i32.eqz
              (local.get $l2))))
        (i32.store offset=24
          (local.get $l2)
          (local.get $l6))
        (block $B15
          (br_if $B15
            (i32.eqz
              (local.tee $l4
                (i32.load offset=16
                  (local.get $l1)))))
          (i32.store offset=16
            (local.get $l2)
            (local.get $l4))
          (i32.store offset=24
            (local.get $l4)
            (local.get $l2)))
        (br_if $B1
          (i32.eqz
            (local.tee $l4
              (i32.load offset=20
                (local.get $l1)))))
        (i32.store offset=20
          (local.get $l2)
          (local.get $l4))
        (i32.store offset=24
          (local.get $l4)
          (local.get $l2)))
      (br_if $B0
        (i32.ge_u
          (local.get $l1)
          (local.get $l3)))
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l4
              (i32.load offset=4
                (local.get $l3)))
            (i32.const 1))))
      (block $B16
        (block $B17
          (block $B18
            (block $B19
              (block $B20
                (br_if $B20
                  (i32.and
                    (local.get $l4)
                    (i32.const 2)))
                (block $B21
                  (br_if $B21
                    (i32.ne
                      (local.get $l3)
                      (i32.load offset=3680
                        (i32.const 0))))
                  (i32.store offset=3680
                    (i32.const 0)
                    (local.get $l1))
                  (i32.store offset=3668
                    (i32.const 0)
                    (local.tee $p0
                      (i32.add
                        (i32.load offset=3668
                          (i32.const 0))
                        (local.get $p0))))
                  (i32.store offset=4
                    (local.get $l1)
                    (i32.or
                      (local.get $p0)
                      (i32.const 1)))
                  (br_if $B0
                    (i32.ne
                      (local.get $l1)
                      (i32.load offset=3676
                        (i32.const 0))))
                  (i32.store offset=3664
                    (i32.const 0)
                    (i32.const 0))
                  (i32.store offset=3676
                    (i32.const 0)
                    (i32.const 0))
                  (return))
                (block $B22
                  (br_if $B22
                    (i32.ne
                      (local.get $l3)
                      (local.tee $l6
                        (i32.load offset=3676
                          (i32.const 0)))))
                  (i32.store offset=3676
                    (i32.const 0)
                    (local.get $l1))
                  (i32.store offset=3664
                    (i32.const 0)
                    (local.tee $p0
                      (i32.add
                        (i32.load offset=3664
                          (i32.const 0))
                        (local.get $p0))))
                  (i32.store offset=4
                    (local.get $l1)
                    (i32.or
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.store
                    (i32.add
                      (local.get $l1)
                      (local.get $p0))
                    (local.get $p0))
                  (return))
                (local.set $p0
                  (i32.add
                    (i32.and
                      (local.get $l4)
                      (i32.const -8))
                    (local.get $p0)))
                (local.set $l2
                  (i32.load offset=12
                    (local.get $l3)))
                (block $B23
                  (br_if $B23
                    (i32.gt_u
                      (local.get $l4)
                      (i32.const 255)))
                  (block $B24
                    (br_if $B24
                      (i32.ne
                        (local.get $l2)
                        (local.tee $l5
                          (i32.load offset=8
                            (local.get $l3)))))
                    (i32.store offset=3656
                      (i32.const 0)
                      (i32.and
                        (i32.load offset=3656
                          (i32.const 0))
                        (i32.rotl
                          (i32.const -2)
                          (i32.shr_u
                            (local.get $l4)
                            (i32.const 3)))))
                    (br $B17))
                  (i32.store offset=8
                    (local.get $l2)
                    (local.get $l5))
                  (i32.store offset=12
                    (local.get $l5)
                    (local.get $l2))
                  (br $B17))
                (local.set $l8
                  (i32.load offset=24
                    (local.get $l3)))
                (block $B25
                  (br_if $B25
                    (i32.eq
                      (local.get $l2)
                      (local.get $l3)))
                  (i32.store offset=12
                    (local.tee $l4
                      (i32.load offset=8
                        (local.get $l3)))
                    (local.get $l2))
                  (i32.store offset=8
                    (local.get $l2)
                    (local.get $l4))
                  (br $B18))
                (block $B26
                  (block $B27
                    (br_if $B27
                      (i32.eqz
                        (local.tee $l4
                          (i32.load offset=20
                            (local.get $l3)))))
                    (local.set $l5
                      (i32.add
                        (local.get $l3)
                        (i32.const 20)))
                    (br $B26))
                  (br_if $B19
                    (i32.eqz
                      (local.tee $l4
                        (i32.load offset=16
                          (local.get $l3)))))
                  (local.set $l5
                    (i32.add
                      (local.get $l3)
                      (i32.const 16))))
                (loop $L28
                  (local.set $l7
                    (local.get $l5))
                  (local.set $l5
                    (i32.add
                      (local.tee $l2
                        (local.get $l4))
                      (i32.const 20)))
                  (br_if $L28
                    (local.tee $l4
                      (i32.load offset=20
                        (local.get $l2))))
                  (local.set $l5
                    (i32.add
                      (local.get $l2)
                      (i32.const 16)))
                  (br_if $L28
                    (local.tee $l4
                      (i32.load offset=16
                        (local.get $l2)))))
                (i32.store
                  (local.get $l7)
                  (i32.const 0))
                (br $B18))
              (i32.store offset=4
                (local.get $l3)
                (i32.and
                  (local.get $l4)
                  (i32.const -2)))
              (i32.store
                (i32.add
                  (local.get $l1)
                  (local.get $p0))
                (local.get $p0))
              (i32.store offset=4
                (local.get $l1)
                (i32.or
                  (local.get $p0)
                  (i32.const 1)))
              (br $B16))
            (local.set $l2
              (i32.const 0)))
          (br_if $B17
            (i32.eqz
              (local.get $l8)))
          (block $B29
            (block $B30
              (br_if $B30
                (i32.ne
                  (local.get $l3)
                  (i32.load
                    (local.tee $l4
                      (i32.add
                        (i32.shl
                          (local.tee $l5
                            (i32.load offset=28
                              (local.get $l3)))
                          (i32.const 2))
                        (i32.const 3960))))))
              (i32.store
                (local.get $l4)
                (local.get $l2))
              (br_if $B29
                (local.get $l2))
              (i32.store offset=3660
                (i32.const 0)
                (i32.and
                  (i32.load offset=3660
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (local.get $l5))))
              (br $B17))
            (block $B31
              (block $B32
                (br_if $B32
                  (i32.ne
                    (i32.load offset=16
                      (local.get $l8))
                    (local.get $l3)))
                (i32.store offset=16
                  (local.get $l8)
                  (local.get $l2))
                (br $B31))
              (i32.store offset=20
                (local.get $l8)
                (local.get $l2)))
            (br_if $B17
              (i32.eqz
                (local.get $l2))))
          (i32.store offset=24
            (local.get $l2)
            (local.get $l8))
          (block $B33
            (br_if $B33
              (i32.eqz
                (local.tee $l4
                  (i32.load offset=16
                    (local.get $l3)))))
            (i32.store offset=16
              (local.get $l2)
              (local.get $l4))
            (i32.store offset=24
              (local.get $l4)
              (local.get $l2)))
          (br_if $B17
            (i32.eqz
              (local.tee $l4
                (i32.load offset=20
                  (local.get $l3)))))
          (i32.store offset=20
            (local.get $l2)
            (local.get $l4))
          (i32.store offset=24
            (local.get $l4)
            (local.get $l2)))
        (i32.store
          (i32.add
            (local.get $l1)
            (local.get $p0))
          (local.get $p0))
        (i32.store offset=4
          (local.get $l1)
          (i32.or
            (local.get $p0)
            (i32.const 1)))
        (br_if $B16
          (i32.ne
            (local.get $l1)
            (local.get $l6)))
        (i32.store offset=3664
          (i32.const 0)
          (local.get $p0))
        (return))
      (block $B34
        (br_if $B34
          (i32.gt_u
            (local.get $p0)
            (i32.const 255)))
        (local.set $l2
          (i32.add
            (i32.and
              (local.get $p0)
              (i32.const -8))
            (i32.const 3696)))
        (block $B35
          (block $B36
            (br_if $B36
              (i32.and
                (local.tee $l4
                  (i32.load offset=3656
                    (i32.const 0)))
                (local.tee $p0
                  (i32.shl
                    (i32.const 1)
                    (i32.shr_u
                      (local.get $p0)
                      (i32.const 3))))))
            (i32.store offset=3656
              (i32.const 0)
              (i32.or
                (local.get $l4)
                (local.get $p0)))
            (local.set $p0
              (local.get $l2))
            (br $B35))
          (local.set $p0
            (i32.load offset=8
              (local.get $l2))))
        (i32.store offset=12
          (local.get $p0)
          (local.get $l1))
        (i32.store offset=8
          (local.get $l2)
          (local.get $l1))
        (i32.store offset=12
          (local.get $l1)
          (local.get $l2))
        (i32.store offset=8
          (local.get $l1)
          (local.get $p0))
        (return))
      (local.set $l2
        (i32.const 31))
      (block $B37
        (br_if $B37
          (i32.gt_u
            (local.get $p0)
            (i32.const 16777215)))
        (local.set $l2
          (i32.add
            (i32.sub
              (i32.and
                (i32.shr_u
                  (local.get $p0)
                  (i32.sub
                    (i32.const 38)
                    (local.tee $l2
                      (i32.clz
                        (i32.shr_u
                          (local.get $p0)
                          (i32.const 8))))))
                (i32.const 1))
              (i32.shl
                (local.get $l2)
                (i32.const 1)))
            (i32.const 62))))
      (i32.store offset=28
        (local.get $l1)
        (local.get $l2))
      (i64.store offset=16 align=4
        (local.get $l1)
        (i64.const 0))
      (local.set $l5
        (i32.add
          (i32.shl
            (local.get $l2)
            (i32.const 2))
          (i32.const 3960)))
      (block $B38
        (block $B39
          (block $B40
            (block $B41
              (br_if $B41
                (i32.and
                  (local.tee $l4
                    (i32.load offset=3660
                      (i32.const 0)))
                  (local.tee $l3
                    (i32.shl
                      (i32.const 1)
                      (local.get $l2)))))
              (i32.store
                (local.get $l5)
                (local.get $l1))
              (i32.store offset=3660
                (i32.const 0)
                (i32.or
                  (local.get $l4)
                  (local.get $l3)))
              (local.set $p0
                (i32.const 8))
              (local.set $l2
                (i32.const 24))
              (br $B40))
            (local.set $l2
              (i32.shl
                (local.get $p0)
                (select
                  (i32.const 0)
                  (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                      (local.get $l2)
                      (i32.const 1)))
                  (i32.eq
                    (local.get $l2)
                    (i32.const 31)))))
            (local.set $l5
              (i32.load
                (local.get $l5)))
            (loop $L42
              (br_if $B39
                (i32.eq
                  (i32.and
                    (i32.load offset=4
                      (local.tee $l4
                        (local.get $l5)))
                    (i32.const -8))
                  (local.get $p0)))
              (local.set $l5
                (i32.shr_u
                  (local.get $l2)
                  (i32.const 29)))
              (local.set $l2
                (i32.shl
                  (local.get $l2)
                  (i32.const 1)))
              (br_if $L42
                (local.tee $l5
                  (i32.load offset=16
                    (local.tee $l3
                      (i32.add
                        (local.get $l4)
                        (i32.and
                          (local.get $l5)
                          (i32.const 4))))))))
            (i32.store
              (i32.add
                (local.get $l3)
                (i32.const 16))
              (local.get $l1))
            (local.set $p0
              (i32.const 8))
            (local.set $l2
              (i32.const 24))
            (local.set $l5
              (local.get $l4)))
          (local.set $l4
            (local.get $l1))
          (local.set $l3
            (local.get $l1))
          (br $B38))
        (i32.store offset=12
          (local.tee $l5
            (i32.load offset=8
              (local.get $l4)))
          (local.get $l1))
        (i32.store offset=8
          (local.get $l4)
          (local.get $l1))
        (local.set $l3
          (i32.const 0))
        (local.set $p0
          (i32.const 24))
        (local.set $l2
          (i32.const 8)))
      (i32.store
        (i32.add
          (local.get $l1)
          (local.get $l2))
        (local.get $l5))
      (i32.store offset=12
        (local.get $l1)
        (local.get $l4))
      (i32.store
        (i32.add
          (local.get $l1)
          (local.get $p0))
        (local.get $l3))
      (i32.store offset=3688
        (i32.const 0)
        (select
          (local.tee $l1
            (i32.add
              (i32.load offset=3688
                (i32.const 0))
              (i32.const -1)))
          (i32.const -1)
          (local.get $l1)))))
  (func $calloc (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64)
    (block $B0
      (block $B1
        (br_if $B1
          (local.get $p0))
        (local.set $l2
          (i32.const 0))
        (br $B0))
      (local.set $l2
        (i32.wrap_i64
          (local.tee $l3
            (i64.mul
              (i64.extend_i32_u
                (local.get $p0))
              (i64.extend_i32_u
                (local.get $p1))))))
      (br_if $B0
        (i32.lt_u
          (i32.or
            (local.get $p1)
            (local.get $p0))
          (i32.const 65536)))
      (local.set $l2
        (select
          (i32.const -1)
          (local.get $l2)
          (i32.ne
            (i32.wrap_i64
              (i64.shr_u
                (local.get $l3)
                (i64.const 32)))
            (i32.const 0)))))
    (block $B2
      (br_if $B2
        (i32.eqz
          (local.tee $p0
            (call $dlmalloc
              (local.get $l2)))))
      (br_if $B2
        (i32.eqz
          (i32.and
            (i32.load8_u
              (i32.add
                (local.get $p0)
                (i32.const -4)))
            (i32.const 3))))
      (br_if $B2
        (i32.eqz
          (local.get $l2)))
      (memory.fill
        (local.get $p0)
        (i32.const 0)
        (local.get $l2)))
    (local.get $p0))
  (func $__clock_gettime (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32) (local $l3 i64) (local $l4 i64)
    (global.set $__stack_pointer
      (local.tee $l2
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p0
              (call $__wasi_clock_time_get
                (i32.load
                  (local.get $p0))
                (i64.const 1)
                (i32.add
                  (local.get $l2)
                  (i32.const 8))))))
        (i32.store offset=4152
          (i32.const 0)
          (local.get $p0))
        (local.set $p0
          (i32.const -1))
        (br $B0))
      (local.set $p0
        (i32.const 0))
      (i32.store offset=12
        (local.get $p1)
        (i32.const 0))
      (i64.store
        (local.get $p1)
        (local.tee $l4
          (i64.div_u
            (local.tee $l3
              (i64.load offset=8
                (local.get $l2)))
            (i64.const 1000000000))))
      (i64.store32 offset=8
        (local.get $p1)
        (i64.sub
          (local.get $l3)
          (i64.mul
            (local.get $l4)
            (i64.const 1000000000)))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l2)
        (i32.const 16)))
    (local.get $p0))
  (func $_Exit (type $t7) (param $p0 i32)
    (call $__wasi_proc_exit
      (local.get $p0))
    (unreachable))
  (func $__main_void (type $t9) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (global.set $__stack_pointer
      (local.tee $l0
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (br_if $B4
                (call $__wasi_args_sizes_get
                  (i32.add
                    (local.get $l0)
                    (i32.const 8))
                  (i32.add
                    (local.get $l0)
                    (i32.const 12))))
              (br_if $B3
                (i32.eqz
                  (local.tee $l1
                    (i32.add
                      (i32.load offset=8
                        (local.get $l0))
                      (i32.const 1)))))
              (br_if $B2
                (i32.eqz
                  (local.tee $l2
                    (call $malloc
                      (i32.load offset=12
                        (local.get $l0))))))
              (br_if $B1
                (i32.eqz
                  (local.tee $l1
                    (call $calloc
                      (local.get $l1)
                      (i32.const 4)))))
              (br_if $B0
                (call $__wasi_args_get
                  (local.get $l1)
                  (local.get $l2)))
              (local.set $l1
                (call $undefined_weak:main
                  (i32.load offset=8
                    (local.get $l0))
                  (local.get $l1)))
              (global.set $__stack_pointer
                (i32.add
                  (local.get $l0)
                  (i32.const 16)))
              (return
                (local.get $l1)))
            (call $_Exit
              (i32.const 71))
            (unreachable))
          (call $_Exit
            (i32.const 70))
          (unreachable))
        (call $_Exit
          (i32.const 70))
        (unreachable))
      (call $free
        (local.get $l2))
      (call $_Exit
        (i32.const 70))
      (unreachable))
    (call $free
      (local.get $l2))
    (call $free
      (local.get $l1))
    (call $_Exit
      (i32.const 71))
    (unreachable))
  (func $__wasi_args_get (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_args_get
        (local.get $p0)
        (local.get $p1))
      (i32.const 65535)))
  (func $__wasi_args_sizes_get (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_args_sizes_get
        (local.get $p0)
        (local.get $p1))
      (i32.const 65535)))
  (func $__wasi_clock_time_get (type $t3) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_clock_time_get
        (local.get $p0)
        (local.get $p1)
        (local.get $p2))
      (i32.const 65535)))
  (func $__wasi_fd_close (type $t4) (param $p0 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_close
        (local.get $p0))
      (i32.const 65535)))
  (func $__wasi_fd_seek (type $t5) (param $p0 i32) (param $p1 i64) (param $p2 i32) (param $p3 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_seek
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3))
      (i32.const 65535)))
  (func $__wasi_fd_write (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (i32.and
      (call $__imported_wasi_snapshot_preview1_fd_write
        (local.get $p0)
        (local.get $p1)
        (local.get $p2)
        (local.get $p3))
      (i32.const 65535)))
  (func $__wasi_proc_exit (type $t7) (param $p0 i32)
    (call $__imported_wasi_snapshot_preview1_proc_exit
      (local.get $p0))
    (unreachable))
  (func $abort (type $t8)
    (unreachable))
  (func $sbrk (type $t4) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.shl
          (memory.size)
          (i32.const 16))))
    (block $B1
      (br_if $B1
        (i32.and
          (local.get $p0)
          (i32.const 65535)))
      (br_if $B1
        (i32.le_s
          (local.get $p0)
          (i32.const -1)))
      (block $B2
        (br_if $B2
          (i32.ne
            (local.tee $p0
              (memory.grow
                (i32.shr_u
                  (local.get $p0)
                  (i32.const 16))))
            (i32.const -1)))
        (i32.store offset=4152
          (i32.const 0)
          (i32.const 48))
        (return
          (i32.const -1)))
      (return
        (i32.shl
          (local.get $p0)
          (i32.const 16))))
    (call $abort)
    (unreachable))
  (func $dummy (type $t8))
  (func $__wasm_call_dtors (type $t8)
    (call $dummy)
    (call $__stdio_exit))
  (func $__stdio_exit (type $t8)
    (local $l0 i32) (local $l1 i32) (local $l2 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.tee $l0
            (i32.load
              (call $__ofl_lock)))))
      (loop $L1
        (block $B2
          (br_if $B2
            (i32.eq
              (i32.load offset=20
                (local.get $l0))
              (i32.load offset=24
                (local.get $l0))))
          (drop
            (call_indirect $T0 (type $t0)
              (local.get $l0)
              (i32.const 0)
              (i32.const 0)
              (i32.load offset=32
                (local.get $l0)))))
        (block $B3
          (br_if $B3
            (i32.eq
              (local.tee $l1
                (i32.load offset=4
                  (local.get $l0)))
              (local.tee $l2
                (i32.load offset=8
                  (local.get $l0)))))
          (drop
            (call_indirect $T0 (type $t1)
              (local.get $l0)
              (i64.extend_i32_s
                (i32.sub
                  (local.get $l1)
                  (local.get $l2)))
              (i32.const 1)
              (i32.load offset=36
                (local.get $l0)))))
        (br_if $L1
          (local.tee $l0
            (i32.load offset=52
              (local.get $l0))))))
    (block $B4
      (br_if $B4
        (i32.eqz
          (local.tee $l0
            (i32.load offset=4156
              (i32.const 0)))))
      (block $B5
        (br_if $B5
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B4
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0)))))
    (block $B6
      (br_if $B6
        (i32.eqz
          (local.tee $l0
            (i32.load offset=4156
              (i32.const 0)))))
      (block $B7
        (br_if $B7
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B6
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0)))))
    (block $B8
      (br_if $B8
        (i32.eqz
          (local.tee $l0
            (i32.load offset=3648
              (i32.const 0)))))
      (block $B9
        (br_if $B9
          (i32.eq
            (i32.load offset=20
              (local.get $l0))
            (i32.load offset=24
              (local.get $l0))))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $l0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $l0)))))
      (br_if $B8
        (i32.eq
          (local.tee $l1
            (i32.load offset=4
              (local.get $l0)))
          (local.tee $l2
            (i32.load offset=8
              (local.get $l0)))))
      (drop
        (call_indirect $T0 (type $t1)
          (local.get $l0)
          (i64.extend_i32_s
            (i32.sub
              (local.get $l1)
              (local.get $l2)))
          (i32.const 1)
          (i32.load offset=36
            (local.get $l0))))))
  (func $__towrite (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    (i32.store offset=60
      (local.get $p0)
      (i32.or
        (i32.add
          (local.tee $l1
            (i32.load offset=60
              (local.get $p0)))
          (i32.const -1))
        (local.get $l1)))
    (block $B0
      (br_if $B0
        (i32.eqz
          (i32.and
            (local.tee $l1
              (i32.load
                (local.get $p0)))
            (i32.const 8))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.get $l1)
          (i32.const 32)))
      (return
        (i32.const -1)))
    (i64.store offset=4 align=4
      (local.get $p0)
      (i64.const 0))
    (i32.store offset=24
      (local.get $p0)
      (local.tee $l1
        (i32.load offset=40
          (local.get $p0))))
    (i32.store offset=20
      (local.get $p0)
      (local.get $l1))
    (i32.store offset=16
      (local.get $p0)
      (i32.add
        (local.get $l1)
        (i32.load offset=44
          (local.get $p0))))
    (i32.const 0))
  (func $__fwritex (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32)
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l3
            (i32.load offset=16
              (local.get $p2))))
        (local.set $l4
          (i32.const 0))
        (br_if $B0
          (call $__towrite
            (local.get $p2)))
        (local.set $l3
          (i32.load offset=16
            (local.get $p2))))
      (block $B2
        (br_if $B2
          (i32.le_u
            (local.get $p1)
            (i32.sub
              (local.get $l3)
              (local.tee $l5
                (i32.load offset=20
                  (local.get $p2))))))
        (return
          (call_indirect $T0 (type $t0)
            (local.get $p2)
            (local.get $p0)
            (local.get $p1)
            (i32.load offset=32
              (local.get $p2)))))
      (local.set $l6
        (i32.const 0))
      (block $B3
        (br_if $B3
          (i32.lt_s
            (i32.load offset=64
              (local.get $p2))
            (i32.const 0)))
        (br_if $B3
          (i32.eqz
            (local.get $p1)))
        (local.set $l4
          (i32.add
            (local.get $p0)
            (local.get $p1)))
        (local.set $l3
          (i32.const 0))
        (block $B4
          (loop $L5
            (br_if $B4
              (i32.eq
                (i32.load8_u
                  (i32.add
                    (i32.add
                      (local.get $l4)
                      (local.get $l3))
                    (i32.const -1)))
                (i32.const 10)))
            (br_if $L5
              (i32.add
                (local.get $p1)
                (local.tee $l3
                  (i32.add
                    (local.get $l3)
                    (i32.const -1))))))
          (local.set $l6
            (i32.const 0))
          (br $B3))
        (br_if $B0
          (i32.lt_u
            (local.tee $l4
              (call_indirect $T0 (type $t0)
                (local.get $p2)
                (local.get $p0)
                (local.tee $l6
                  (i32.add
                    (local.get $p1)
                    (local.get $l3)))
                (i32.load offset=32
                  (local.get $p2))))
            (local.get $l6)))
        (local.set $p0
          (i32.add
            (local.get $l6)
            (local.get $p0)))
        (local.set $p1
          (i32.sub
            (i32.const 0)
            (local.get $l3)))
        (local.set $l5
          (i32.load offset=20
            (local.get $p2))))
      (block $B6
        (br_if $B6
          (i32.eqz
            (local.get $p1)))
        (memory.copy
          (local.get $l5)
          (local.get $p0)
          (local.get $p1)))
      (i32.store offset=20
        (local.get $p2)
        (i32.add
          (i32.load offset=20
            (local.get $p2))
          (local.get $p1)))
      (local.set $l4
        (i32.add
          (local.get $l6)
          (local.get $p1))))
    (local.get $l4))
  (func $fwrite (type $t6) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (local.set $l4
      (i32.mul
        (local.get $p2)
        (local.get $p1)))
    (block $B0
      (block $B1
        (br_if $B1
          (local.tee $l5
            (i32.load offset=16
              (local.get $p3))))
        (local.set $l6
          (i32.const 0))
        (br_if $B0
          (call $__towrite
            (local.get $p3)))
        (local.set $l5
          (i32.load offset=16
            (local.get $p3))))
      (block $B2
        (br_if $B2
          (i32.le_u
            (local.get $l4)
            (i32.sub
              (local.get $l5)
              (local.tee $l7
                (i32.load offset=20
                  (local.get $p3))))))
        (local.set $l6
          (call_indirect $T0 (type $t0)
            (local.get $p3)
            (local.get $p0)
            (local.get $l4)
            (i32.load offset=32
              (local.get $p3))))
        (br $B0))
      (local.set $l8
        (i32.const 0))
      (block $B3
        (block $B4
          (br_if $B4
            (local.get $l4))
          (local.set $l5
            (local.get $l4))
          (br $B3))
        (local.set $l5
          (i32.const 0))
        (block $B5
          (br_if $B5
            (i32.ge_s
              (i32.load offset=64
                (local.get $p3))
              (i32.const 0)))
          (local.set $l5
            (local.get $l4))
          (br $B3))
        (local.set $l6
          (i32.add
            (local.get $p0)
            (local.get $l4)))
        (block $B6
          (loop $L7
            (br_if $B6
              (i32.eq
                (i32.load8_u
                  (i32.add
                    (i32.add
                      (local.get $l6)
                      (local.get $l5))
                    (i32.const -1)))
                (i32.const 10)))
            (br_if $L7
              (i32.add
                (local.get $l4)
                (local.tee $l5
                  (i32.add
                    (local.get $l5)
                    (i32.const -1))))))
          (local.set $l8
            (i32.const 0))
          (local.set $l5
            (local.get $l4))
          (br $B3))
        (br_if $B0
          (i32.lt_u
            (local.tee $l6
              (call_indirect $T0 (type $t0)
                (local.get $p3)
                (local.get $p0)
                (local.tee $l8
                  (i32.add
                    (local.get $l4)
                    (local.get $l5)))
                (i32.load offset=32
                  (local.get $p3))))
            (local.get $l8)))
        (local.set $p0
          (i32.add
            (local.get $l8)
            (local.get $p0)))
        (local.set $l5
          (i32.sub
            (i32.const 0)
            (local.get $l5)))
        (local.set $l7
          (i32.load offset=20
            (local.get $p3))))
      (block $B8
        (br_if $B8
          (i32.eqz
            (local.get $l5)))
        (memory.copy
          (local.get $l7)
          (local.get $p0)
          (local.get $l5)))
      (i32.store offset=20
        (local.get $p3)
        (i32.add
          (i32.load offset=20
            (local.get $p3))
          (local.get $l5)))
      (local.set $l6
        (i32.add
          (local.get $l8)
          (local.get $l5))))
    (block $B9
      (br_if $B9
        (i32.ne
          (local.get $l6)
          (local.get $l4)))
      (return
        (select
          (local.get $p2)
          (i32.const 0)
          (local.get $p1))))
    (i32.div_u
      (local.get $l6)
      (local.get $p1)))
  (func $__ofl_lock (type $t9) (result i32)
    (i32.const 4160))
  (func $__wasilibc_populate_preopens (type $t8))
  (func $close (type $t4) (param $p0 i32) (result i32)
    (call $__wasilibc_populate_preopens)
    (block $B0
      (br_if $B0
        (local.tee $p0
          (call $__wasi_fd_close
            (local.get $p0))))
      (return
        (i32.const 0)))
    (i32.store offset=4152
      (i32.const 0)
      (local.get $p0))
    (i32.const -1))
  (func $__stdio_close (type $t4) (param $p0 i32) (result i32)
    (call $close
      (i32.load offset=56
        (local.get $p0))))
  (func $writev (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (local.set $l4
      (i32.const -1))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.gt_s
            (local.get $p2)
            (i32.const -1)))
        (i32.store offset=4152
          (i32.const 0)
          (i32.const 28))
        (br $B0))
      (block $B2
        (br_if $B2
          (i32.eqz
            (local.tee $p2
              (call $__wasi_fd_write
                (local.get $p0)
                (local.get $p1)
                (local.get $p2)
                (i32.add
                  (local.get $l3)
                  (i32.const 12))))))
        (i32.store offset=4152
          (i32.const 0)
          (local.get $p2))
        (local.set $l4
          (i32.const -1))
        (br $B0))
      (local.set $l4
        (i32.load offset=12
          (local.get $l3))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $l4))
  (func $__stdio_write (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (i32.store offset=12
      (local.get $l3)
      (local.get $p2))
    (i32.store offset=8
      (local.get $l3)
      (local.get $p1))
    (i32.store
      (local.get $l3)
      (local.tee $p1
        (i32.load offset=24
          (local.get $p0))))
    (i32.store offset=4
      (local.get $l3)
      (local.tee $l4
        (i32.sub
          (i32.load offset=20
            (local.get $p0))
          (local.get $p1))))
    (local.set $l5
      (i32.const 2))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eq
            (local.tee $p1
              (call $writev
                (i32.load offset=56
                  (local.get $p0))
                (local.get $l3)
                (i32.const 2)))
            (local.tee $l6
              (i32.add
                (local.get $l4)
                (local.get $p2)))))
        (local.set $l4
          (local.get $l3))
        (loop $L2
          (block $B3
            (br_if $B3
              (i32.gt_s
                (local.get $p1)
                (i32.const -1)))
            (local.set $p1
              (i32.const 0))
            (i32.store offset=24
              (local.get $p0)
              (i32.const 0))
            (i64.store offset=16
              (local.get $p0)
              (i64.const 0))
            (i32.store
              (local.get $p0)
              (i32.or
                (i32.load
                  (local.get $p0))
                (i32.const 32)))
            (br_if $B0
              (i32.eq
                (local.get $l5)
                (i32.const 2)))
            (local.set $p1
              (i32.sub
                (local.get $p2)
                (i32.load offset=4
                  (local.get $l4))))
            (br $B0))
          (i32.store
            (local.tee $l9
              (i32.add
                (local.get $l4)
                (i32.shl
                  (local.tee $l8
                    (i32.gt_u
                      (local.get $p1)
                      (local.tee $l7
                        (i32.load offset=4
                          (local.get $l4)))))
                  (i32.const 3))))
            (i32.add
              (i32.load
                (local.get $l9))
              (local.tee $l7
                (i32.sub
                  (local.get $p1)
                  (select
                    (local.get $l7)
                    (i32.const 0)
                    (local.get $l8))))))
          (i32.store
            (local.tee $l4
              (i32.add
                (local.get $l4)
                (select
                  (i32.const 12)
                  (i32.const 4)
                  (local.get $l8))))
            (i32.sub
              (i32.load
                (local.get $l4))
              (local.get $l7)))
          (local.set $l4
            (local.get $l9))
          (br_if $L2
            (i32.ne
              (local.tee $l6
                (i32.sub
                  (local.get $l6)
                  (local.get $p1)))
              (local.tee $p1
                (call $writev
                  (i32.load offset=56
                    (local.get $p0))
                  (local.get $l9)
                  (local.tee $l5
                    (i32.sub
                      (local.get $l5)
                      (local.get $l8)))))))))
      (i32.store offset=24
        (local.get $p0)
        (local.tee $p1
          (i32.load offset=40
            (local.get $p0))))
      (i32.store offset=20
        (local.get $p0)
        (local.get $p1))
      (i32.store offset=16
        (local.get $p0)
        (i32.add
          (local.get $p1)
          (i32.load offset=44
            (local.get $p0))))
      (local.set $p1
        (local.get $p2)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $p1))
  (func $__lseek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (local $l3 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p2
              (call $__wasi_fd_seek
                (local.get $p0)
                (local.get $p1)
                (i32.and
                  (local.get $p2)
                  (i32.const 255))
                (i32.add
                  (local.get $l3)
                  (i32.const 8))))))
        (i32.store offset=4152
          (i32.const 0)
          (select
            (i32.const 70)
            (local.get $p2)
            (i32.eq
              (local.get $p2)
              (i32.const 76))))
        (local.set $p1
          (i64.const -1))
        (br $B0))
      (local.set $p1
        (i64.load offset=8
          (local.get $l3))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 16)))
    (local.get $p1))
  (func $__stdio_seek (type $t1) (param $p0 i32) (param $p1 i64) (param $p2 i32) (result i64)
    (call $__lseek
      (i32.load offset=56
        (local.get $p0))
      (local.get $p1)
      (local.get $p2)))
  (func $dummy.1 (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local.get $p0))
  (func $__lctrans (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (call $dummy.1
      (local.get $p0)
      (local.get $p1)))
  (func $strerror (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32)
    (block $B0
      (br_if $B0
        (local.tee $l1
          (i32.load offset=4196
            (i32.const 0))))
      (local.set $l1
        (i32.const 4172))
      (i32.store offset=4196
        (i32.const 0)
        (i32.const 4172)))
    (call $__lctrans
      (i32.add
        (i32.load16_u
          (i32.add
            (i32.shl
              (select
                (i32.const 0)
                (local.get $p0)
                (i32.gt_u
                  (local.get $p0)
                  (i32.const 76)))
              (i32.const 1))
            (i32.const 2896)))
        (i32.const 1336))
      (i32.load offset=20
        (local.get $l1))))
  (func $wcrtomb (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32)
    (local.set $l3
      (i32.const 1))
    (block $B0
      (br_if $B0
        (i32.eqz
          (local.get $p0)))
      (block $B1
        (br_if $B1
          (i32.gt_u
            (local.get $p1)
            (i32.const 127)))
        (i32.store8
          (local.get $p0)
          (local.get $p1))
        (return
          (i32.const 1)))
      (block $B2
        (br_if $B2
          (local.tee $l3
            (i32.load offset=4196
              (i32.const 0))))
        (local.set $l3
          (i32.const 4172))
        (i32.store offset=4196
          (i32.const 0)
          (i32.const 4172)))
      (block $B3
        (block $B4
          (br_if $B4
            (i32.load
              (local.get $l3)))
          (block $B5
            (br_if $B5
              (i32.eq
                (i32.and
                  (local.get $p1)
                  (i32.const -128))
                (i32.const 57216)))
            (i32.store offset=4152
              (i32.const 0)
              (i32.const 25))
            (br $B3))
          (i32.store8
            (local.get $p0)
            (local.get $p1))
          (return
            (i32.const 1)))
        (block $B6
          (br_if $B6
            (i32.gt_u
              (local.get $p1)
              (i32.const 2047)))
          (i32.store8 offset=1
            (local.get $p0)
            (i32.or
              (i32.and
                (local.get $p1)
                (i32.const 63))
              (i32.const 128)))
          (i32.store8
            (local.get $p0)
            (i32.or
              (i32.shr_u
                (local.get $p1)
                (i32.const 6))
              (i32.const 192)))
          (return
            (i32.const 2)))
        (block $B7
          (block $B8
            (br_if $B8
              (i32.lt_u
                (local.get $p1)
                (i32.const 55296)))
            (br_if $B7
              (i32.ne
                (i32.and
                  (local.get $p1)
                  (i32.const -8192))
                (i32.const 57344))))
          (i32.store8 offset=2
            (local.get $p0)
            (i32.or
              (i32.and
                (local.get $p1)
                (i32.const 63))
              (i32.const 128)))
          (i32.store8
            (local.get $p0)
            (i32.or
              (i32.shr_u
                (local.get $p1)
                (i32.const 12))
              (i32.const 224)))
          (i32.store8 offset=1
            (local.get $p0)
            (i32.or
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 6))
                (i32.const 63))
              (i32.const 128)))
          (return
            (i32.const 3)))
        (block $B9
          (br_if $B9
            (i32.gt_u
              (i32.add
                (local.get $p1)
                (i32.const -65536))
              (i32.const 1048575)))
          (i32.store8 offset=3
            (local.get $p0)
            (i32.or
              (i32.and
                (local.get $p1)
                (i32.const 63))
              (i32.const 128)))
          (i32.store8
            (local.get $p0)
            (i32.or
              (i32.shr_u
                (local.get $p1)
                (i32.const 18))
              (i32.const 240)))
          (i32.store8 offset=2
            (local.get $p0)
            (i32.or
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 6))
                (i32.const 63))
              (i32.const 128)))
          (i32.store8 offset=1
            (local.get $p0)
            (i32.or
              (i32.and
                (i32.shr_u
                  (local.get $p1)
                  (i32.const 12))
                (i32.const 63))
              (i32.const 128)))
          (return
            (i32.const 4)))
        (i32.store offset=4152
          (i32.const 0)
          (i32.const 25)))
      (local.set $l3
        (i32.const -1)))
    (local.get $l3))
  (func $wctomb (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (block $B0
      (br_if $B0
        (local.get $p0))
      (return
        (i32.const 0)))
    (call $wcrtomb
      (local.get $p0)
      (local.get $p1)
      (i32.const 0)))
  (func $frexp (type $t14) (param $p0 f64) (param $p1 i32) (result f64)
    (local $l2 i64) (local $l3 i32)
    (block $B0
      (br_if $B0
        (i32.eq
          (local.tee $l3
            (i32.and
              (i32.wrap_i64
                (i64.shr_u
                  (local.tee $l2
                    (i64.reinterpret_f64
                      (local.get $p0)))
                  (i64.const 52)))
              (i32.const 2047)))
          (i32.const 2047)))
      (block $B1
        (br_if $B1
          (local.get $l3))
        (block $B2
          (br_if $B2
            (f64.ne
              (local.get $p0)
              (f64.const 0x0p+0 (;=0;))))
          (i32.store
            (local.get $p1)
            (i32.const 0))
          (return
            (local.get $p0)))
        (local.set $p0
          (call $frexp
            (f64.mul
              (local.get $p0)
              (f64.const 0x1p+64 (;=1.84467e+19;)))
            (local.get $p1)))
        (i32.store
          (local.get $p1)
          (i32.add
            (i32.load
              (local.get $p1))
            (i32.const -64)))
        (return
          (local.get $p0)))
      (i32.store
        (local.get $p1)
        (i32.add
          (local.get $l3)
          (i32.const -1022)))
      (local.set $p0
        (f64.reinterpret_i64
          (i64.or
            (i64.and
              (local.get $l2)
              (i64.const -9218868437227405313))
            (i64.const 4602678819172646912)))))
    (local.get $p0))
  (func $fputs (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (local.set $l2
      (call $strlen
        (local.get $p0)))
    (select
      (i32.const -1)
      (i32.const 0)
      (i32.ne
        (local.get $l2)
        (call $fwrite
          (local.get $p0)
          (i32.const 1)
          (local.get $l2)
          (local.get $p1)))))
  (func $vfprintf (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l3
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 208))))
    (i32.store offset=204
      (local.get $l3)
      (local.get $p2))
    (i64.store
      (i32.add
        (i32.add
          (local.get $l3)
          (i32.const 160))
        (i32.const 32))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 184))
      (i64.const 0))
    (i64.store
      (i32.add
        (local.get $l3)
        (i32.const 176))
      (i64.const 0))
    (i64.store offset=168
      (local.get $l3)
      (i64.const 0))
    (i64.store offset=160
      (local.get $l3)
      (i64.const 0))
    (i32.store offset=200
      (local.get $l3)
      (local.get $p2))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.ge_s
            (call $printf_core
              (i32.const 0)
              (local.get $p1)
              (i32.add
                (local.get $l3)
                (i32.const 200))
              (i32.add
                (local.get $l3)
                (i32.const 80))
              (i32.add
                (local.get $l3)
                (i32.const 160)))
            (i32.const 0)))
        (local.set $p0
          (i32.const -1))
        (br $B0))
      (i32.store
        (local.get $p0)
        (i32.and
          (local.tee $l4
            (i32.load
              (local.get $p0)))
          (i32.const -33)))
      (block $B2
        (block $B3
          (block $B4
            (block $B5
              (br_if $B5
                (i32.load offset=44
                  (local.get $p0)))
              (i32.store offset=44
                (local.get $p0)
                (i32.const 80))
              (i32.store offset=24
                (local.get $p0)
                (i32.const 0))
              (i64.store offset=16
                (local.get $p0)
                (i64.const 0))
              (local.set $l5
                (i32.load offset=40
                  (local.get $p0)))
              (i32.store offset=40
                (local.get $p0)
                (local.get $l3))
              (br $B4))
            (local.set $l5
              (i32.const 0))
            (br_if $B3
              (i32.load offset=16
                (local.get $p0))))
          (local.set $p2
            (i32.const -1))
          (br_if $B2
            (call $__towrite
              (local.get $p0))))
        (local.set $p2
          (call $printf_core
            (local.get $p0)
            (local.get $p1)
            (i32.add
              (local.get $l3)
              (i32.const 200))
            (i32.add
              (local.get $l3)
              (i32.const 80))
            (i32.add
              (local.get $l3)
              (i32.const 160)))))
      (local.set $p1
        (i32.and
          (local.get $l4)
          (i32.const 32)))
      (block $B6
        (br_if $B6
          (i32.eqz
            (local.get $l5)))
        (drop
          (call_indirect $T0 (type $t0)
            (local.get $p0)
            (i32.const 0)
            (i32.const 0)
            (i32.load offset=32
              (local.get $p0))))
        (i32.store offset=44
          (local.get $p0)
          (i32.const 0))
        (i32.store offset=40
          (local.get $p0)
          (local.get $l5))
        (i32.store offset=24
          (local.get $p0)
          (i32.const 0))
        (local.set $l5
          (i32.load offset=20
            (local.get $p0)))
        (i64.store offset=16
          (local.get $p0)
          (i64.const 0))
        (local.set $p2
          (select
            (local.get $p2)
            (i32.const -1)
            (local.get $l5))))
      (i32.store
        (local.get $p0)
        (i32.or
          (local.tee $l5
            (i32.load
              (local.get $p0)))
          (local.get $p1)))
      (local.set $p0
        (select
          (i32.const -1)
          (local.get $p2)
          (i32.and
            (local.get $l5)
            (i32.const 32)))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l3)
        (i32.const 208)))
    (local.get $p0))
  (func $printf_core (type $t15) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32) (local $l11 i32) (local $l12 i32) (local $l13 i32) (local $l14 i32) (local $l15 i32) (local $l16 i32) (local $l17 i32) (local $l18 i32) (local $l19 i32) (local $l20 i32) (local $l21 i32) (local $l22 i32) (local $l23 i32) (local $l24 i32) (local $l25 i32) (local $l26 i32) (local $l27 i32) (local $l28 i32) (local $l29 i32) (local $l30 i64) (local $l31 i64) (local $l32 f64) (local $l33 i32) (local $l34 i32) (local $l35 i32) (local $l36 i32) (local $l37 i32) (local $l38 i64) (local $l39 i32) (local $l40 i32) (local $l41 f64)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 864))))
    (local.set $l6
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 52))
        (i32.const 12)))
    (local.set $l7
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 96))
        (i32.const -4)))
    (local.set $l8
      (i32.add
        (local.get $l5)
        (i32.const 39)))
    (local.set $l9
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 52))
        (i32.const 11)))
    (local.set $l10
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 64))
        (i32.const -1)))
    (local.set $l11
      (i32.or
        (i32.add
          (local.get $l5)
          (i32.const 64))
        (i32.const 8)))
    (local.set $l12
      (i32.or
        (i32.add
          (local.get $l5)
          (i32.const 64))
        (i32.const 9)))
    (local.set $l13
      (i32.add
        (i32.add
          (local.get $l5)
          (i32.const 52))
        (i32.const 10)))
    (local.set $l14
      (i32.add
        (local.get $l5)
        (i32.const 40)))
    (local.set $l15
      (i32.const 0))
    (local.set $l16
      (i32.const 0))
    (block $B0
      (block $B1
        (loop $L2
          (local.set $l17
            (i32.const 0))
          (block $B3
            (loop $L4
              (local.set $l18
                (local.get $p1))
              (br_if $B3
                (i32.gt_s
                  (local.get $l17)
                  (i32.xor
                    (local.get $l16)
                    (i32.const 2147483647))))
              (local.set $l16
                (i32.add
                  (local.get $l17)
                  (local.get $l16)))
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (block $B13
                                (block $B14
                                  (br_if $B14
                                    (i32.eqz
                                      (local.tee $l17
                                        (i32.load8_u
                                          (local.get $l18)))))
                                  (local.set $p1
                                    (local.get $l18))
                                  (loop $L15
                                    (block $B16
                                      (block $B17
                                        (block $B18
                                          (br_if $B18
                                            (i32.eqz
                                              (local.tee $l17
                                                (i32.and
                                                  (local.get $l17)
                                                  (i32.const 255)))))
                                          (br_if $B16
                                            (i32.ne
                                              (local.get $l17)
                                              (i32.const 37)))
                                          (local.set $l17
                                            (local.get $p1))
                                          (loop $L19
                                            (br_if $B17
                                              (i32.ne
                                                (i32.load8_u
                                                  (i32.add
                                                    (local.get $p1)
                                                    (i32.const 1)))
                                                (i32.const 37)))
                                            (local.set $l17
                                              (i32.add
                                                (local.get $l17)
                                                (i32.const 1)))
                                            (br_if $L19
                                              (i32.eq
                                                (i32.load8_u
                                                  (local.tee $p1
                                                    (i32.add
                                                      (local.get $p1)
                                                      (i32.const 2))))
                                                (i32.const 37)))
                                            (br $B17)))
                                        (local.set $l17
                                          (local.get $p1)))
                                      (br_if $B3
                                        (i32.gt_s
                                          (local.tee $l17
                                            (i32.sub
                                              (local.get $l17)
                                              (local.get $l18)))
                                          (local.tee $l19
                                            (i32.xor
                                              (local.get $l16)
                                              (i32.const 2147483647)))))
                                      (block $B20
                                        (br_if $B20
                                          (i32.eqz
                                            (local.get $p0)))
                                        (br_if $B20
                                          (i32.and
                                            (i32.load8_u
                                              (local.get $p0))
                                            (i32.const 32)))
                                        (drop
                                          (call $__fwritex
                                            (local.get $l18)
                                            (local.get $l17)
                                            (local.get $p0))))
                                      (br_if $L4
                                        (local.get $l17))
                                      (local.set $l20
                                        (i32.add
                                          (local.get $p1)
                                          (i32.const 1)))
                                      (local.set $l21
                                        (i32.const -1))
                                      (block $B21
                                        (br_if $B21
                                          (i32.gt_u
                                            (local.tee $l17
                                              (i32.add
                                                (local.tee $l22
                                                  (i32.load8_s offset=1
                                                    (local.get $p1)))
                                                (i32.const -48)))
                                            (i32.const 9)))
                                        (br_if $B21
                                          (i32.ne
                                            (i32.load8_u offset=2
                                              (local.get $p1))
                                            (i32.const 36)))
                                        (local.set $l20
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const 3)))
                                        (local.set $l22
                                          (i32.load8_s offset=3
                                            (local.get $p1)))
                                        (local.set $l15
                                          (i32.const 1))
                                        (local.set $l21
                                          (local.get $l17)))
                                      (local.set $l23
                                        (i32.const 0))
                                      (block $B22
                                        (block $B23
                                          (br_if $B23
                                            (i32.le_u
                                              (local.tee $p1
                                                (i32.add
                                                  (local.get $l22)
                                                  (i32.const -32)))
                                              (i32.const 31)))
                                          (local.set $p1
                                            (local.get $l20))
                                          (br $B22))
                                        (block $B24
                                          (br_if $B24
                                            (i32.and
                                              (local.tee $l17
                                                (i32.shl
                                                  (i32.const 1)
                                                  (local.get $p1)))
                                              (i32.const 75913)))
                                          (local.set $p1
                                            (local.get $l20))
                                          (br $B22))
                                        (local.set $l20
                                          (i32.add
                                            (local.get $l20)
                                            (i32.const 1)))
                                        (local.set $l23
                                          (i32.const 0))
                                        (loop $L25
                                          (local.set $l23
                                            (i32.or
                                              (local.get $l17)
                                              (local.get $l23)))
                                          (br_if $B22
                                            (i32.ge_u
                                              (local.tee $l17
                                                (i32.add
                                                  (local.tee $l22
                                                    (i32.load8_s
                                                      (local.tee $p1
                                                        (local.get $l20))))
                                                  (i32.const -32)))
                                              (i32.const 32)))
                                          (local.set $l20
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const 1)))
                                          (br_if $L25
                                            (i32.and
                                              (local.tee $l17
                                                (i32.shl
                                                  (i32.const 1)
                                                  (local.get $l17)))
                                              (i32.const 75913)))))
                                      (block $B26
                                        (br_if $B26
                                          (i32.ne
                                            (local.get $l22)
                                            (i32.const 42)))
                                        (block $B27
                                          (block $B28
                                            (br_if $B28
                                              (i32.gt_u
                                                (local.tee $l17
                                                  (i32.add
                                                    (i32.load8_s offset=1
                                                      (local.get $p1))
                                                    (i32.const -48)))
                                                (i32.const 9)))
                                            (br_if $B28
                                              (i32.ne
                                                (i32.load8_u offset=2
                                                  (local.get $p1))
                                                (i32.const 36)))
                                            (block $B29
                                              (block $B30
                                                (br_if $B30
                                                  (local.get $p0))
                                                (i32.store
                                                  (i32.add
                                                    (local.get $p4)
                                                    (i32.shl
                                                      (local.get $l17)
                                                      (i32.const 2)))
                                                  (i32.const 10))
                                                (local.set $l24
                                                  (i32.const 0))
                                                (br $B29))
                                              (local.set $l24
                                                (i32.load
                                                  (i32.add
                                                    (local.get $p3)
                                                    (i32.shl
                                                      (local.get $l17)
                                                      (i32.const 3))))))
                                            (local.set $p1
                                              (i32.add
                                                (local.get $p1)
                                                (i32.const 3)))
                                            (local.set $l15
                                              (i32.const 1))
                                            (br $B27))
                                          (br_if $B12
                                            (local.get $l15))
                                          (local.set $p1
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const 1)))
                                          (block $B31
                                            (br_if $B31
                                              (local.get $p0))
                                            (local.set $l15
                                              (i32.const 0))
                                            (local.set $l24
                                              (i32.const 0))
                                            (br $B13))
                                          (i32.store
                                            (local.get $p2)
                                            (i32.add
                                              (local.tee $l17
                                                (i32.load
                                                  (local.get $p2)))
                                              (i32.const 4)))
                                          (local.set $l24
                                            (i32.load
                                              (local.get $l17)))
                                          (local.set $l15
                                            (i32.const 0)))
                                        (br_if $B13
                                          (i32.gt_s
                                            (local.get $l24)
                                            (i32.const -1)))
                                        (local.set $l24
                                          (i32.sub
                                            (i32.const 0)
                                            (local.get $l24)))
                                        (local.set $l23
                                          (i32.or
                                            (local.get $l23)
                                            (i32.const 8192)))
                                        (br $B13))
                                      (local.set $l24
                                        (i32.const 0))
                                      (br_if $B13
                                        (i32.gt_u
                                          (local.tee $l20
                                            (i32.add
                                              (local.get $l22)
                                              (i32.const -48)))
                                          (i32.const 9)))
                                      (local.set $l17
                                        (local.get $p1))
                                      (loop $L32
                                        (block $B33
                                          (br_if $B33
                                            (i32.gt_u
                                              (local.get $l24)
                                              (i32.const 214748364)))
                                          (local.set $l24
                                            (select
                                              (i32.const -1)
                                              (i32.add
                                                (local.tee $p1
                                                  (i32.mul
                                                    (local.get $l24)
                                                    (i32.const 10)))
                                                (local.get $l20))
                                              (local.tee $l22
                                                (i32.gt_u
                                                  (local.get $l20)
                                                  (i32.xor
                                                    (local.get $p1)
                                                    (i32.const 2147483647))))))
                                          (local.set $l20
                                            (i32.load8_s offset=1
                                              (local.get $l17)))
                                          (local.set $l17
                                            (local.tee $p1
                                              (i32.add
                                                (local.get $l17)
                                                (i32.const 1))))
                                          (br_if $L32
                                            (i32.lt_u
                                              (local.tee $l20
                                                (i32.add
                                                  (local.get $l20)
                                                  (i32.const -48)))
                                              (i32.const 10)))
                                          (br_if $B3
                                            (local.get $l22))
                                          (br $B13))
                                        (local.set $p1
                                          (i32.load8_s offset=1
                                            (local.get $l17)))
                                        (local.set $l24
                                          (i32.const -1))
                                        (local.set $l17
                                          (i32.add
                                            (local.get $l17)
                                            (i32.const 1)))
                                        (br_if $L32
                                          (i32.lt_u
                                            (local.tee $l20
                                              (i32.add
                                                (local.get $p1)
                                                (i32.const -48)))
                                            (i32.const 10)))
                                        (br $B3)))
                                    (local.set $l17
                                      (i32.load8_u
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const 1)))))
                                    (br $L15)))
                                (br_if $B0
                                  (local.get $p0))
                                (block $B34
                                  (br_if $B34
                                    (local.get $l15))
                                  (local.set $l16
                                    (i32.const 0))
                                  (br $B0))
                                (block $B35
                                  (block $B36
                                    (block $B37
                                      (br_if $B37
                                        (local.tee $p1
                                          (i32.load offset=4
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 1))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 8))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B38
                                      (br_if $B38
                                        (local.tee $p1
                                          (i32.load offset=8
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 2))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 16))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B39
                                      (br_if $B39
                                        (local.tee $p1
                                          (i32.load offset=12
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 3))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 24))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B40
                                      (br_if $B40
                                        (local.tee $p1
                                          (i32.load offset=16
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 4))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 32))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B41
                                      (br_if $B41
                                        (local.tee $p1
                                          (i32.load offset=20
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 5))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 40))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B42
                                      (br_if $B42
                                        (local.tee $p1
                                          (i32.load offset=24
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 6))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 48))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B43
                                      (br_if $B43
                                        (local.tee $p1
                                          (i32.load offset=28
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 7))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 56))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (block $B44
                                      (br_if $B44
                                        (local.tee $p1
                                          (i32.load offset=32
                                            (local.get $p4))))
                                      (local.set $p1
                                        (i32.const 8))
                                      (br $B36))
                                    (call $pop_arg
                                      (i32.add
                                        (local.get $p3)
                                        (i32.const 64))
                                      (local.get $p1)
                                      (local.get $p2))
                                    (br_if $B35
                                      (local.tee $p1
                                        (i32.load offset=36
                                          (local.get $p4))))
                                    (local.set $p1
                                      (i32.const 9)))
                                  (local.set $p1
                                    (i32.shl
                                      (local.get $p1)
                                      (i32.const 2)))
                                  (loop $L45
                                    (br_if $B12
                                      (i32.load
                                        (i32.add
                                          (local.get $p4)
                                          (local.get $p1))))
                                    (br_if $L45
                                      (i32.ne
                                        (local.tee $p1
                                          (i32.add
                                            (local.get $p1)
                                            (i32.const 4)))
                                        (i32.const 40))))
                                  (local.set $l16
                                    (i32.const 1))
                                  (br $B0))
                                (call $pop_arg
                                  (i32.add
                                    (local.get $p3)
                                    (i32.const 72))
                                  (local.get $p1)
                                  (local.get $p2))
                                (local.set $l16
                                  (i32.const 1))
                                (br $B0))
                              (local.set $l17
                                (i32.const 0))
                              (block $B46
                                (block $B47
                                  (br_if $B47
                                    (i32.eq
                                      (i32.load8_u
                                        (local.get $p1))
                                      (i32.const 46)))
                                  (local.set $l22
                                    (i32.const -1))
                                  (local.set $l25
                                    (i32.const 0))
                                  (br $B46))
                                (block $B48
                                  (br_if $B48
                                    (i32.ne
                                      (local.tee $l20
                                        (i32.load8_s offset=1
                                          (local.get $p1)))
                                      (i32.const 42)))
                                  (block $B49
                                    (br_if $B49
                                      (i32.gt_u
                                        (local.tee $l20
                                          (i32.add
                                            (i32.load8_s offset=2
                                              (local.get $p1))
                                            (i32.const -48)))
                                        (i32.const 9)))
                                    (br_if $B49
                                      (i32.ne
                                        (i32.load8_u offset=3
                                          (local.get $p1))
                                        (i32.const 36)))
                                    (block $B50
                                      (br_if $B50
                                        (local.get $p0))
                                      (i32.store
                                        (i32.add
                                          (local.get $p4)
                                          (i32.shl
                                            (local.get $l20)
                                            (i32.const 2)))
                                        (i32.const 10))
                                      (local.set $l22
                                        (i32.const 0))
                                      (local.set $p1
                                        (i32.add
                                          (local.get $p1)
                                          (i32.const 4)))
                                      (local.set $l25
                                        (i32.gt_s
                                          (i32.const 0)
                                          (i32.const -1)))
                                      (br $B46))
                                    (local.set $p1
                                      (i32.add
                                        (local.get $p1)
                                        (i32.const 4)))
                                    (local.set $l25
                                      (i32.gt_s
                                        (local.tee $l22
                                          (i32.load
                                            (i32.add
                                              (local.get $p3)
                                              (i32.shl
                                                (local.get $l20)
                                                (i32.const 3)))))
                                        (i32.const -1)))
                                    (br $B46))
                                  (br_if $B12
                                    (local.get $l15))
                                  (local.set $p1
                                    (i32.add
                                      (local.get $p1)
                                      (i32.const 2)))
                                  (block $B51
                                    (br_if $B51
                                      (local.get $p0))
                                    (local.set $l22
                                      (i32.const 0))
                                    (local.set $l25
                                      (i32.gt_s
                                        (i32.const 0)
                                        (i32.const -1)))
                                    (br $B46))
                                  (i32.store
                                    (local.get $p2)
                                    (i32.add
                                      (local.tee $l20
                                        (i32.load
                                          (local.get $p2)))
                                      (i32.const 4)))
                                  (local.set $l25
                                    (i32.gt_s
                                      (local.tee $l22
                                        (i32.load
                                          (local.get $l20)))
                                      (i32.const -1)))
                                  (br $B46))
                                (local.set $p1
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1)))
                                (block $B52
                                  (br_if $B52
                                    (i32.le_u
                                      (local.tee $l26
                                        (i32.add
                                          (local.get $l20)
                                          (i32.const -48)))
                                      (i32.const 9)))
                                  (local.set $l25
                                    (i32.const 1))
                                  (local.set $l22
                                    (i32.const 0))
                                  (br $B46))
                                (local.set $l20
                                  (i32.const 0))
                                (loop $L53
                                  (local.set $l22
                                    (i32.const -1))
                                  (block $B54
                                    (br_if $B54
                                      (i32.gt_u
                                        (local.get $l20)
                                        (i32.const 214748364)))
                                    (local.set $l22
                                      (select
                                        (i32.const -1)
                                        (i32.add
                                          (local.tee $l20
                                            (i32.mul
                                              (local.get $l20)
                                              (i32.const 10)))
                                          (local.get $l26))
                                        (i32.gt_u
                                          (local.get $l26)
                                          (i32.xor
                                            (local.get $l20)
                                            (i32.const 2147483647))))))
                                  (local.set $l25
                                    (i32.const 1))
                                  (local.set $l20
                                    (local.get $l22))
                                  (br_if $L53
                                    (i32.lt_u
                                      (local.tee $l26
                                        (i32.add
                                          (i32.load8_s
                                            (local.tee $p1
                                              (i32.add
                                                (local.get $p1)
                                                (i32.const 1))))
                                          (i32.const -48)))
                                      (i32.const 10)))))
                              (loop $L55
                                (local.set $l20
                                  (local.get $l17))
                                (br_if $B12
                                  (i32.lt_u
                                    (i32.add
                                      (local.tee $l17
                                        (i32.load8_s
                                          (local.get $p1)))
                                      (i32.const -123))
                                    (i32.const -58)))
                                (local.set $p1
                                  (i32.add
                                    (local.get $p1)
                                    (i32.const 1)))
                                (br_if $L55
                                  (i32.lt_u
                                    (i32.and
                                      (i32.add
                                        (local.tee $l17
                                          (i32.load8_u
                                            (i32.add
                                              (i32.add
                                                (local.get $l17)
                                                (i32.mul
                                                  (local.get $l20)
                                                  (i32.const 58)))
                                              (i32.const 2991))))
                                        (i32.const -1))
                                      (i32.const 255))
                                    (i32.const 8))))
                              (block $B56
                                (block $B57
                                  (br_if $B57
                                    (i32.eq
                                      (local.get $l17)
                                      (i32.const 27)))
                                  (br_if $B12
                                    (i32.eqz
                                      (local.get $l17)))
                                  (block $B58
                                    (br_if $B58
                                      (i32.lt_s
                                        (local.get $l21)
                                        (i32.const 0)))
                                    (block $B59
                                      (br_if $B59
                                        (local.get $p0))
                                      (i32.store
                                        (i32.add
                                          (local.get $p4)
                                          (i32.shl
                                            (local.get $l21)
                                            (i32.const 2)))
                                        (local.get $l17))
                                      (br $L2))
                                    (i64.store offset=40
                                      (local.get $l5)
                                      (i64.load
                                        (i32.add
                                          (local.get $p3)
                                          (i32.shl
                                            (local.get $l21)
                                            (i32.const 3)))))
                                    (br $B56))
                                  (block $B60
                                    (br_if $B60
                                      (local.get $p0))
                                    (local.set $l16
                                      (i32.const 0))
                                    (br $B0))
                                  (call $pop_arg
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 40))
                                    (local.get $l17)
                                    (local.get $p2))
                                  (br $B56))
                                (br_if $B12
                                  (i32.gt_s
                                    (local.get $l21)
                                    (i32.const -1)))
                                (local.set $l17
                                  (i32.const 0))
                                (br_if $L4
                                  (i32.eqz
                                    (local.get $p0))))
                              (br_if $B1
                                (i32.and
                                  (local.tee $l21
                                    (i32.load
                                      (local.get $p0)))
                                  (i32.const 32)))
                              (local.set $l27
                                (select
                                  (local.tee $l26
                                    (i32.and
                                      (local.get $l23)
                                      (i32.const -65537)))
                                  (local.get $l23)
                                  (i32.and
                                    (local.get $l23)
                                    (i32.const 8192))))
                              (block $B61
                                (block $B62
                                  (block $B63
                                    (block $B64
                                      (block $B65
                                        (block $B66
                                          (block $B67
                                            (block $B68
                                              (block $B69
                                                (block $B70
                                                  (block $B71
                                                    (block $B72
                                                      (block $B73
                                                        (block $B74
                                                          (block $B75
                                                            (block $B76
                                                              (block $B77
                                                                (block $B78
                                                                  (br_table $B61 $B11 $B66 $B11 $B61 $B61 $B61 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B65 $B11 $B11 $B11 $B11 $B75 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B11 $B61 $B11 $B70 $B73 $B61 $B61 $B61 $B11 $B73 $B11 $B11 $B11 $B69 $B77 $B74 $B76 $B11 $B11 $B68 $B11 $B78 $B11 $B11 $B75 $B11
                                                                    (i32.add
                                                                      (local.tee $l28
                                                                        (select
                                                                          (select
                                                                            (i32.and
                                                                              (local.tee $l17
                                                                                (i32.extend8_s
                                                                                  (local.tee $l23
                                                                                    (i32.load8_u
                                                                                      (i32.add
                                                                                        (local.get $p1)
                                                                                        (i32.const -1))))))
                                                                              (i32.const -45))
                                                                            (local.get $l17)
                                                                            (i32.eq
                                                                              (i32.and
                                                                                (local.get $l23)
                                                                                (i32.const 15))
                                                                              (i32.const 3)))
                                                                          (local.get $l17)
                                                                          (local.get $l20)))
                                                                      (i32.const -65))))
                                                                (local.set $l21
                                                                  (i32.const 0))
                                                                (local.set $l29
                                                                  (i32.const 1024))
                                                                (local.set $l30
                                                                  (i64.load offset=40
                                                                    (local.get $l5)))
                                                                (br $B72))
                                                              (local.set $l17
                                                                (i32.const 0))
                                                              (block $B79
                                                                (block $B80
                                                                  (block $B81
                                                                    (block $B82
                                                                      (block $B83
                                                                        (block $B84
                                                                          (block $B85
                                                                            (br_table $B85 $B84 $B83 $B82 $B81 $L4 $B80 $B79 $L4
                                                                              (local.get $l20)))
                                                                          (i32.store
                                                                            (i32.load offset=40
                                                                              (local.get $l5))
                                                                            (local.get $l16))
                                                                          (br $L4))
                                                                        (i32.store
                                                                          (i32.load offset=40
                                                                            (local.get $l5))
                                                                          (local.get $l16))
                                                                        (br $L4))
                                                                      (i64.store
                                                                        (i32.load offset=40
                                                                          (local.get $l5))
                                                                        (i64.extend_i32_s
                                                                          (local.get $l16)))
                                                                      (br $L4))
                                                                    (i32.store16
                                                                      (i32.load offset=40
                                                                        (local.get $l5))
                                                                      (local.get $l16))
                                                                    (br $L4))
                                                                  (i32.store8
                                                                    (i32.load offset=40
                                                                      (local.get $l5))
                                                                    (local.get $l16))
                                                                  (br $L4))
                                                                (i32.store
                                                                  (i32.load offset=40
                                                                    (local.get $l5))
                                                                  (local.get $l16))
                                                                (br $L4))
                                                              (i64.store
                                                                (i32.load offset=40
                                                                  (local.get $l5))
                                                                (i64.extend_i32_s
                                                                  (local.get $l16)))
                                                              (br $L4))
                                                            (local.set $l22
                                                              (select
                                                                (local.get $l22)
                                                                (i32.const 8)
                                                                (i32.gt_u
                                                                  (local.get $l22)
                                                                  (i32.const 8))))
                                                            (local.set $l27
                                                              (i32.or
                                                                (local.get $l27)
                                                                (i32.const 8)))
                                                            (local.set $l28
                                                              (i32.const 120)))
                                                          (local.set $l21
                                                            (i32.const 0))
                                                          (local.set $l29
                                                            (i32.const 1024))
                                                          (block $B86
                                                            (br_if $B86
                                                              (i32.eqz
                                                                (i64.eqz
                                                                  (local.tee $l30
                                                                    (i64.load offset=40
                                                                      (local.get $l5))))))
                                                            (local.set $l18
                                                              (local.get $l14))
                                                            (br $B71))
                                                          (local.set $l20
                                                            (i32.and
                                                              (local.get $l28)
                                                              (i32.const 32)))
                                                          (local.set $l18
                                                            (local.get $l14))
                                                          (loop $L87
                                                            (i32.store8
                                                              (local.tee $l18
                                                                (i32.add
                                                                  (local.get $l18)
                                                                  (i32.const -1)))
                                                              (i32.or
                                                                (i32.load8_u
                                                                  (i32.add
                                                                    (i32.and
                                                                      (i32.wrap_i64
                                                                        (local.get $l30))
                                                                      (i32.const 15))
                                                                    (i32.const 3520)))
                                                                (local.get $l20)))
                                                            (local.set $l17
                                                              (i64.gt_u
                                                                (local.get $l30)
                                                                (i64.const 15)))
                                                            (local.set $l30
                                                              (i64.shr_u
                                                                (local.get $l30)
                                                                (i64.const 4)))
                                                            (br_if $L87
                                                              (local.get $l17)))
                                                          (br_if $B71
                                                            (i32.eqz
                                                              (i32.and
                                                                (local.get $l27)
                                                                (i32.const 8))))
                                                          (local.set $l29
                                                            (i32.add
                                                              (i32.shr_s
                                                                (local.get $l28)
                                                                (i32.const 4))
                                                              (i32.const 1024)))
                                                          (local.set $l21
                                                            (i32.const 2))
                                                          (br $B71))
                                                        (local.set $l18
                                                          (local.get $l14))
                                                        (block $B88
                                                          (br_if $B88
                                                            (i64.eqz
                                                              (local.tee $l30
                                                                (i64.load offset=40
                                                                  (local.get $l5)))))
                                                          (local.set $l18
                                                            (local.get $l14))
                                                          (loop $L89
                                                            (i32.store8
                                                              (local.tee $l18
                                                                (i32.add
                                                                  (local.get $l18)
                                                                  (i32.const -1)))
                                                              (i32.or
                                                                (i32.and
                                                                  (i32.wrap_i64
                                                                    (local.get $l30))
                                                                  (i32.const 7))
                                                                (i32.const 48)))
                                                            (local.set $l17
                                                              (i64.gt_u
                                                                (local.get $l30)
                                                                (i64.const 7)))
                                                            (local.set $l30
                                                              (i64.shr_u
                                                                (local.get $l30)
                                                                (i64.const 3)))
                                                            (br_if $L89
                                                              (local.get $l17))))
                                                        (local.set $l21
                                                          (i32.const 0))
                                                        (local.set $l29
                                                          (i32.const 1024))
                                                        (br_if $B71
                                                          (i32.eqz
                                                            (i32.and
                                                              (local.get $l27)
                                                              (i32.const 8))))
                                                        (local.set $l22
                                                          (select
                                                            (local.get $l22)
                                                            (i32.add
                                                              (local.tee $l17
                                                                (i32.sub
                                                                  (local.get $l14)
                                                                  (local.get $l18)))
                                                              (i32.const 1))
                                                            (i32.gt_s
                                                              (local.get $l22)
                                                              (local.get $l17))))
                                                        (br $B71))
                                                      (block $B90
                                                        (br_if $B90
                                                          (i64.gt_s
                                                            (local.tee $l30
                                                              (i64.load offset=40
                                                                (local.get $l5)))
                                                            (i64.const -1)))
                                                        (i64.store offset=40
                                                          (local.get $l5)
                                                          (local.tee $l30
                                                            (i64.sub
                                                              (i64.const 0)
                                                              (local.get $l30))))
                                                        (local.set $l21
                                                          (i32.const 1))
                                                        (local.set $l29
                                                          (i32.const 1024))
                                                        (br $B72))
                                                      (block $B91
                                                        (br_if $B91
                                                          (i32.eqz
                                                            (i32.and
                                                              (local.get $l27)
                                                              (i32.const 2048))))
                                                        (local.set $l21
                                                          (i32.const 1))
                                                        (local.set $l29
                                                          (i32.const 1025))
                                                        (br $B72))
                                                      (local.set $l29
                                                        (select
                                                          (i32.const 1026)
                                                          (i32.const 1024)
                                                          (local.tee $l21
                                                            (i32.and
                                                              (local.get $l27)
                                                              (i32.const 1))))))
                                                    (block $B92
                                                      (block $B93
                                                        (br_if $B93
                                                          (i64.ge_u
                                                            (local.get $l30)
                                                            (i64.const 4294967296)))
                                                        (local.set $l31
                                                          (local.get $l30))
                                                        (local.set $l18
                                                          (local.get $l14))
                                                        (br $B92))
                                                      (local.set $l18
                                                        (local.get $l14))
                                                      (loop $L94
                                                        (i32.store8
                                                          (local.tee $l18
                                                            (i32.add
                                                              (local.get $l18)
                                                              (i32.const -1)))
                                                          (i32.or
                                                            (i32.wrap_i64
                                                              (i64.sub
                                                                (local.get $l30)
                                                                (i64.mul
                                                                  (local.tee $l31
                                                                    (i64.div_u
                                                                      (local.get $l30)
                                                                      (i64.const 10)))
                                                                  (i64.const 10))))
                                                            (i32.const 48)))
                                                        (local.set $l17
                                                          (i64.gt_u
                                                            (local.get $l30)
                                                            (i64.const 42949672959)))
                                                        (local.set $l30
                                                          (local.get $l31))
                                                        (br_if $L94
                                                          (local.get $l17))))
                                                    (br_if $B71
                                                      (i64.eqz
                                                        (local.get $l31)))
                                                    (local.set $l17
                                                      (i32.wrap_i64
                                                        (local.get $l31)))
                                                    (loop $L95
                                                      (i32.store8
                                                        (local.tee $l18
                                                          (i32.add
                                                            (local.get $l18)
                                                            (i32.const -1)))
                                                        (i32.or
                                                          (i32.sub
                                                            (local.get $l17)
                                                            (i32.mul
                                                              (local.tee $l20
                                                                (i32.div_u
                                                                  (local.get $l17)
                                                                  (i32.const 10)))
                                                              (i32.const 10)))
                                                          (i32.const 48)))
                                                      (local.set $l23
                                                        (i32.gt_u
                                                          (local.get $l17)
                                                          (i32.const 9)))
                                                      (local.set $l17
                                                        (local.get $l20))
                                                      (br_if $L95
                                                        (local.get $l23))))
                                                  (br_if $B3
                                                    (i32.and
                                                      (local.get $l25)
                                                      (i32.lt_s
                                                        (local.get $l22)
                                                        (i32.const 0))))
                                                  (local.set $l26
                                                    (select
                                                      (i32.and
                                                        (local.get $l27)
                                                        (i32.const -65537))
                                                      (local.get $l27)
                                                      (local.get $l25)))
                                                  (block $B96
                                                    (br_if $B96
                                                      (i64.ne
                                                        (local.tee $l30
                                                          (i64.load offset=40
                                                            (local.get $l5)))
                                                        (i64.const 0)))
                                                    (local.set $l23
                                                      (i32.const 0))
                                                    (br_if $B96
                                                      (local.get $l22))
                                                    (local.set $l18
                                                      (local.get $l14))
                                                    (local.set $l17
                                                      (local.get $l14))
                                                    (br $B5))
                                                  (local.set $l23
                                                    (select
                                                      (local.get $l22)
                                                      (local.tee $l17
                                                        (i32.add
                                                          (i32.sub
                                                            (local.get $l14)
                                                            (local.get $l18))
                                                          (i64.eqz
                                                            (local.get $l30))))
                                                      (i32.gt_s
                                                        (local.get $l22)
                                                        (local.get $l17))))
                                                  (local.set $l17
                                                    (local.get $l14))
                                                  (br $B5))
                                                (local.set $l17
                                                  (i32.load8_u offset=40
                                                    (local.get $l5)))
                                                (br $B6))
                                              (local.set $l18
                                                (call $strerror
                                                  (i32.load offset=4152
                                                    (i32.const 0))))
                                              (br $B67))
                                            (local.set $l18
                                              (select
                                                (local.tee $l17
                                                  (i32.load offset=40
                                                    (local.get $l5)))
                                                (i32.const 1108)
                                                (local.get $l17))))
                                          (local.set $l17
                                            (i32.add
                                              (local.get $l18)
                                              (local.tee $l23
                                                (call $strnlen
                                                  (local.get $l18)
                                                  (select
                                                    (local.get $l22)
                                                    (i32.const 2147483647)
                                                    (i32.lt_u
                                                      (local.get $l22)
                                                      (i32.const 2147483647)))))))
                                          (local.set $l21
                                            (i32.const 0))
                                          (local.set $l29
                                            (i32.const 1024))
                                          (br_if $B5
                                            (i32.gt_s
                                              (local.get $l22)
                                              (i32.const -1)))
                                          (br_if $B5
                                            (i32.eqz
                                              (i32.load8_u
                                                (local.get $l17))))
                                          (br $B3))
                                        (br_if $B64
                                          (i32.eqz
                                            (i64.eqz
                                              (local.tee $l30
                                                (i64.load offset=40
                                                  (local.get $l5))))))
                                        (local.set $l17
                                          (i32.const 0))
                                        (br $B6))
                                      (block $B97
                                        (br_if $B97
                                          (i32.eqz
                                            (local.get $l22)))
                                        (local.set $l20
                                          (i32.load offset=40
                                            (local.get $l5)))
                                        (br $B63))
                                      (local.set $l17
                                        (i32.const 0))
                                      (call $pad
                                        (local.get $p0)
                                        (i32.const 32)
                                        (local.get $l24)
                                        (i32.const 0)
                                        (local.get $l27))
                                      (br $B62))
                                    (i32.store offset=12
                                      (local.get $l5)
                                      (i32.const 0))
                                    (i64.store32 offset=8
                                      (local.get $l5)
                                      (local.get $l30))
                                    (i32.store offset=40
                                      (local.get $l5)
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 8)))
                                    (local.set $l20
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 8)))
                                    (local.set $l22
                                      (i32.const -1)))
                                  (local.set $l17
                                    (i32.const 0))
                                  (local.set $l18
                                    (local.get $l20))
                                  (block $B98
                                    (loop $L99
                                      (br_if $B98
                                        (i32.eqz
                                          (local.tee $l19
                                            (i32.load
                                              (local.get $l18)))))
                                      (br_if $B1
                                        (i32.lt_s
                                          (local.tee $l19
                                            (call $wctomb
                                              (i32.add
                                                (local.get $l5)
                                                (i32.const 4))
                                              (local.get $l19)))
                                          (i32.const 0)))
                                      (br_if $B98
                                        (i32.gt_u
                                          (local.get $l19)
                                          (i32.sub
                                            (local.get $l22)
                                            (local.get $l17))))
                                      (local.set $l18
                                        (i32.add
                                          (local.get $l18)
                                          (i32.const 4)))
                                      (br_if $L99
                                        (i32.lt_u
                                          (local.tee $l17
                                            (i32.add
                                              (local.get $l19)
                                              (local.get $l17)))
                                          (local.get $l22)))))
                                  (br_if $B3
                                    (i32.lt_s
                                      (local.get $l17)
                                      (i32.const 0)))
                                  (call $pad
                                    (local.get $p0)
                                    (i32.const 32)
                                    (local.get $l24)
                                    (local.get $l17)
                                    (local.get $l27))
                                  (block $B100
                                    (br_if $B100
                                      (local.get $l17))
                                    (local.set $l17
                                      (i32.const 0))
                                    (br $B62))
                                  (local.set $l18
                                    (i32.const 0))
                                  (loop $L101
                                    (br_if $B62
                                      (i32.eqz
                                        (local.tee $l19
                                          (i32.load
                                            (local.get $l20)))))
                                    (br_if $B62
                                      (i32.gt_u
                                        (local.tee $l18
                                          (i32.add
                                            (local.tee $l19
                                              (call $wctomb
                                                (i32.add
                                                  (local.get $l5)
                                                  (i32.const 4))
                                                (local.get $l19)))
                                            (local.get $l18)))
                                        (local.get $l17)))
                                    (block $B102
                                      (br_if $B102
                                        (i32.and
                                          (i32.load8_u
                                            (local.get $p0))
                                          (i32.const 32)))
                                      (drop
                                        (call $__fwritex
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 4))
                                          (local.get $l19)
                                          (local.get $p0))))
                                    (local.set $l20
                                      (i32.add
                                        (local.get $l20)
                                        (i32.const 4)))
                                    (br_if $L101
                                      (i32.lt_u
                                        (local.get $l18)
                                        (local.get $l17)))))
                                (call $pad
                                  (local.get $p0)
                                  (i32.const 32)
                                  (local.get $l24)
                                  (local.get $l17)
                                  (i32.xor
                                    (local.get $l27)
                                    (i32.const 8192)))
                                (local.set $l17
                                  (select
                                    (local.get $l24)
                                    (local.get $l17)
                                    (i32.gt_s
                                      (local.get $l24)
                                      (local.get $l17))))
                                (br $L4))
                              (br_if $B3
                                (i32.and
                                  (local.get $l25)
                                  (local.tee $l17
                                    (i32.lt_s
                                      (local.get $l22)
                                      (i32.const 0)))))
                              (local.set $l32
                                (f64.load offset=40
                                  (local.get $l5)))
                              (i32.store offset=92
                                (local.get $l5)
                                (i32.const 0))
                              (block $B103
                                (block $B104
                                  (br_if $B104
                                    (i64.gt_s
                                      (i64.reinterpret_f64
                                        (local.get $l32))
                                      (i64.const -1)))
                                  (local.set $l32
                                    (f64.neg
                                      (local.get $l32)))
                                  (local.set $l33
                                    (i32.const 1))
                                  (local.set $l34
                                    (i32.const 0))
                                  (local.set $l35
                                    (i32.const 1034))
                                  (br $B103))
                                (block $B105
                                  (br_if $B105
                                    (i32.eqz
                                      (i32.and
                                        (local.get $l27)
                                        (i32.const 2048))))
                                  (local.set $l33
                                    (i32.const 1))
                                  (local.set $l34
                                    (i32.const 0))
                                  (local.set $l35
                                    (i32.const 1037))
                                  (br $B103))
                                (local.set $l35
                                  (select
                                    (i32.const 1040)
                                    (i32.const 1035)
                                    (local.tee $l33
                                      (i32.and
                                        (local.get $l27)
                                        (i32.const 1)))))
                                (local.set $l34
                                  (i32.eqz
                                    (local.get $l33))))
                              (block $B106
                                (br_if $B106
                                  (f64.lt
                                    (local.get $l32)
                                    (f64.const inf (;=inf;))))
                                (local.set $l18
                                  (i32.add
                                    (local.get $l33)
                                    (i32.const 3)))
                                (block $B107
                                  (br_if $B107
                                    (i32.and
                                      (local.get $l27)
                                      (i32.const 8192)))
                                  (br_if $B107
                                    (i32.le_u
                                      (local.get $l24)
                                      (local.get $l18)))
                                  (block $B108
                                    (br_if $B108
                                      (i32.eqz
                                        (local.tee $l20
                                          (select
                                            (local.tee $l17
                                              (i32.sub
                                                (local.get $l24)
                                                (local.get $l18)))
                                            (i32.const 256)
                                            (local.tee $l19
                                              (i32.lt_u
                                                (local.get $l17)
                                                (i32.const 256)))))))
                                    (memory.fill
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 608))
                                      (i32.const 32)
                                      (local.get $l20)))
                                  (block $B109
                                    (br_if $B109
                                      (local.get $l19))
                                    (loop $L110
                                      (block $B111
                                        (br_if $B111
                                          (i32.and
                                            (i32.load8_u
                                              (local.get $p0))
                                            (i32.const 32)))
                                        (drop
                                          (call $__fwritex
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 608))
                                            (i32.const 256)
                                            (local.get $p0))))
                                      (br_if $L110
                                        (i32.gt_u
                                          (local.tee $l17
                                            (i32.add
                                              (local.get $l17)
                                              (i32.const -256)))
                                          (i32.const 255))))
                                    (local.set $l21
                                      (i32.load
                                        (local.get $p0))))
                                  (br_if $B107
                                    (i32.and
                                      (local.get $l21)
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 608))
                                      (local.get $l17)
                                      (local.get $p0)))
                                  (local.set $l21
                                    (i32.load
                                      (local.get $p0))))
                                (block $B112
                                  (br_if $B112
                                    (i32.and
                                      (local.get $l21)
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (local.get $l35)
                                      (local.get $l33)
                                      (local.get $p0)))
                                  (local.set $l21
                                    (i32.load
                                      (local.get $p0))))
                                (block $B113
                                  (br_if $B113
                                    (i32.and
                                      (local.get $l21)
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (select
                                        (select
                                          (i32.const 1053)
                                          (i32.const 1098)
                                          (local.tee $l17
                                            (i32.and
                                              (local.get $l28)
                                              (i32.const 32))))
                                        (select
                                          (i32.const 1057)
                                          (i32.const 1102)
                                          (local.get $l17))
                                        (f64.ne
                                          (local.get $l32)
                                          (local.get $l32)))
                                      (i32.const 3)
                                      (local.get $p0))))
                                (block $B114
                                  (br_if $B114
                                    (i32.ne
                                      (i32.and
                                        (local.get $l27)
                                        (i32.const 73728))
                                      (i32.const 8192)))
                                  (br_if $B114
                                    (i32.le_u
                                      (local.get $l24)
                                      (local.get $l18)))
                                  (block $B115
                                    (br_if $B115
                                      (i32.eqz
                                        (local.tee $l20
                                          (select
                                            (local.tee $l17
                                              (i32.sub
                                                (local.get $l24)
                                                (local.get $l18)))
                                            (i32.const 256)
                                            (local.tee $l19
                                              (i32.lt_u
                                                (local.get $l17)
                                                (i32.const 256)))))))
                                    (memory.fill
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 608))
                                      (i32.const 32)
                                      (local.get $l20)))
                                  (block $B116
                                    (br_if $B116
                                      (local.get $l19))
                                    (loop $L117
                                      (block $B118
                                        (br_if $B118
                                          (i32.and
                                            (i32.load8_u
                                              (local.get $p0))
                                            (i32.const 32)))
                                        (drop
                                          (call $__fwritex
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 608))
                                            (i32.const 256)
                                            (local.get $p0))))
                                      (br_if $L117
                                        (i32.gt_u
                                          (local.tee $l17
                                            (i32.add
                                              (local.get $l17)
                                              (i32.const -256)))
                                          (i32.const 255)))))
                                  (br_if $B114
                                    (i32.and
                                      (i32.load8_u
                                        (local.get $p0))
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 608))
                                      (local.get $l17)
                                      (local.get $p0))))
                                (local.set $l17
                                  (select
                                    (local.get $l24)
                                    (local.get $l18)
                                    (i32.gt_u
                                      (local.get $l24)
                                      (local.get $l18))))
                                (br $B7))
                              (block $B119
                                (block $B120
                                  (block $B121
                                    (br_if $B121
                                      (f64.eq
                                        (local.tee $l32
                                          (f64.add
                                            (local.tee $l32
                                              (call $frexp
                                                (local.get $l32)
                                                (i32.add
                                                  (local.get $l5)
                                                  (i32.const 92))))
                                            (local.get $l32)))
                                        (f64.const 0x0p+0 (;=0;))))
                                    (i32.store offset=92
                                      (local.get $l5)
                                      (i32.add
                                        (local.tee $l18
                                          (i32.load offset=92
                                            (local.get $l5)))
                                        (i32.const -1)))
                                    (br_if $B120
                                      (i32.ne
                                        (local.tee $l36
                                          (i32.or
                                            (local.get $l28)
                                            (i32.const 32)))
                                        (i32.const 97)))
                                    (br $B8))
                                  (br_if $B8
                                    (i32.eq
                                      (local.tee $l36
                                        (i32.or
                                          (local.get $l28)
                                          (i32.const 32)))
                                      (i32.const 97)))
                                  (local.set $l21
                                    (select
                                      (i32.const 6)
                                      (local.get $l22)
                                      (local.get $l17)))
                                  (local.set $l20
                                    (i32.load offset=92
                                      (local.get $l5)))
                                  (br $B119))
                                (i32.store offset=92
                                  (local.get $l5)
                                  (local.tee $l20
                                    (i32.add
                                      (local.get $l18)
                                      (i32.const -29))))
                                (local.set $l21
                                  (select
                                    (i32.const 6)
                                    (local.get $l22)
                                    (local.get $l17)))
                                (local.set $l32
                                  (f64.mul
                                    (local.get $l32)
                                    (f64.const 0x1p+28 (;=2.68435e+08;)))))
                              (local.set $l18
                                (local.tee $l29
                                  (i32.add
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 96))
                                    (select
                                      (i32.const 0)
                                      (i32.const 288)
                                      (local.tee $l37
                                        (i32.lt_s
                                          (local.get $l20)
                                          (i32.const 0)))))))
                              (loop $L122
                                (i32.store
                                  (local.get $l18)
                                  (local.tee $l17
                                    (i32.trunc_sat_f64_u
                                      (local.get $l32))))
                                (local.set $l18
                                  (i32.add
                                    (local.get $l18)
                                    (i32.const 4)))
                                (br_if $L122
                                  (f64.ne
                                    (local.tee $l32
                                      (f64.mul
                                        (f64.sub
                                          (local.get $l32)
                                          (f64.convert_i32_u
                                            (local.get $l17)))
                                        (f64.const 0x1.dcd65p+29 (;=1e+09;))))
                                    (f64.const 0x0p+0 (;=0;)))))
                              (block $B123
                                (block $B124
                                  (br_if $B124
                                    (i32.ge_s
                                      (local.get $l20)
                                      (i32.const 1)))
                                  (local.set $l17
                                    (local.get $l18))
                                  (local.set $l19
                                    (local.get $l29))
                                  (br $B123))
                                (local.set $l19
                                  (local.get $l29))
                                (loop $L125
                                  (local.set $l20
                                    (select
                                      (local.get $l20)
                                      (i32.const 29)
                                      (i32.lt_u
                                        (local.get $l20)
                                        (i32.const 29))))
                                  (block $B126
                                    (br_if $B126
                                      (i32.lt_u
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l18)
                                            (i32.const -4)))
                                        (local.get $l19)))
                                    (local.set $l38
                                      (i64.extend_i32_u
                                        (local.get $l20)))
                                    (local.set $l30
                                      (i64.const 0))
                                    (loop $L127
                                      (i64.store32
                                        (local.get $l17)
                                        (i64.sub
                                          (local.tee $l31
                                            (i64.add
                                              (i64.shl
                                                (i64.load32_u
                                                  (local.get $l17))
                                                (local.get $l38))
                                              (i64.and
                                                (local.get $l30)
                                                (i64.const 4294967295))))
                                          (i64.mul
                                            (local.tee $l30
                                              (i64.div_u
                                                (local.get $l31)
                                                (i64.const 1000000000)))
                                            (i64.const 1000000000))))
                                      (br_if $L127
                                        (i32.ge_u
                                          (local.tee $l17
                                            (i32.add
                                              (local.get $l17)
                                              (i32.const -4)))
                                          (local.get $l19))))
                                    (br_if $B126
                                      (i64.lt_u
                                        (local.get $l31)
                                        (i64.const 1000000000)))
                                    (i64.store32
                                      (local.tee $l19
                                        (i32.add
                                          (local.get $l19)
                                          (i32.const -4)))
                                      (local.get $l30)))
                                  (block $B128
                                    (loop $L129
                                      (br_if $B128
                                        (i32.le_u
                                          (local.tee $l17
                                            (local.get $l18))
                                          (local.get $l19)))
                                      (br_if $L129
                                        (i32.eqz
                                          (i32.load
                                            (local.tee $l18
                                              (i32.add
                                                (local.get $l17)
                                                (i32.const -4))))))))
                                  (i32.store offset=92
                                    (local.get $l5)
                                    (local.tee $l20
                                      (i32.sub
                                        (i32.load offset=92
                                          (local.get $l5))
                                        (local.get $l20))))
                                  (local.set $l18
                                    (local.get $l17))
                                  (br_if $L125
                                    (i32.gt_s
                                      (local.get $l20)
                                      (i32.const 0)))))
                              (block $B130
                                (br_if $B130
                                  (i32.gt_s
                                    (local.get $l20)
                                    (i32.const -1)))
                                (local.set $l39
                                  (i32.add
                                    (i32.div_u
                                      (i32.add
                                        (local.get $l21)
                                        (i32.const 25))
                                      (i32.const 9))
                                    (i32.const 1)))
                                (local.set $l40
                                  (i32.eq
                                    (local.get $l36)
                                    (i32.const 102)))
                                (loop $L131
                                  (local.set $l22
                                    (select
                                      (local.tee $l18
                                        (i32.sub
                                          (i32.const 0)
                                          (local.get $l20)))
                                      (i32.const 9)
                                      (i32.lt_u
                                        (local.get $l18)
                                        (i32.const 9))))
                                  (block $B132
                                    (block $B133
                                      (br_if $B133
                                        (i32.lt_u
                                          (local.get $l19)
                                          (local.get $l17)))
                                      (local.set $l18
                                        (i32.shl
                                          (i32.eqz
                                            (i32.load
                                              (local.get $l19)))
                                          (i32.const 2)))
                                      (br $B132))
                                    (local.set $l26
                                      (i32.shr_u
                                        (i32.const 1000000000)
                                        (local.get $l22)))
                                    (local.set $l25
                                      (i32.xor
                                        (i32.shl
                                          (i32.const -1)
                                          (local.get $l22))
                                        (i32.const -1)))
                                    (local.set $l20
                                      (i32.const 0))
                                    (local.set $l18
                                      (local.get $l19))
                                    (loop $L134
                                      (i32.store
                                        (local.get $l18)
                                        (i32.add
                                          (i32.shr_u
                                            (local.tee $l23
                                              (i32.load
                                                (local.get $l18)))
                                            (local.get $l22))
                                          (local.get $l20)))
                                      (local.set $l20
                                        (i32.mul
                                          (i32.and
                                            (local.get $l23)
                                            (local.get $l25))
                                          (local.get $l26)))
                                      (br_if $L134
                                        (i32.lt_u
                                          (local.tee $l18
                                            (i32.add
                                              (local.get $l18)
                                              (i32.const 4)))
                                          (local.get $l17))))
                                    (local.set $l18
                                      (i32.shl
                                        (i32.eqz
                                          (i32.load
                                            (local.get $l19)))
                                        (i32.const 2)))
                                    (br_if $B132
                                      (i32.eqz
                                        (local.get $l20)))
                                    (i32.store
                                      (local.get $l17)
                                      (local.get $l20))
                                    (local.set $l17
                                      (i32.add
                                        (local.get $l17)
                                        (i32.const 4))))
                                  (i32.store offset=92
                                    (local.get $l5)
                                    (local.tee $l20
                                      (i32.add
                                        (i32.load offset=92
                                          (local.get $l5))
                                        (local.get $l22))))
                                  (local.set $l17
                                    (select
                                      (i32.add
                                        (local.tee $l18
                                          (select
                                            (local.get $l29)
                                            (local.tee $l19
                                              (i32.add
                                                (local.get $l19)
                                                (local.get $l18)))
                                            (local.get $l40)))
                                        (i32.shl
                                          (local.get $l39)
                                          (i32.const 2)))
                                      (local.get $l17)
                                      (i32.gt_s
                                        (i32.shr_s
                                          (i32.sub
                                            (local.get $l17)
                                            (local.get $l18))
                                          (i32.const 2))
                                        (local.get $l39))))
                                  (br_if $L131
                                    (i32.lt_s
                                      (local.get $l20)
                                      (i32.const 0)))))
                              (local.set $l23
                                (i32.const 0))
                              (block $B135
                                (br_if $B135
                                  (i32.ge_u
                                    (local.get $l19)
                                    (local.get $l17)))
                                (local.set $l23
                                  (i32.mul
                                    (i32.shr_s
                                      (i32.sub
                                        (local.get $l29)
                                        (local.get $l19))
                                      (i32.const 2))
                                    (i32.const 9)))
                                (br_if $B135
                                  (i32.lt_u
                                    (local.tee $l20
                                      (i32.load
                                        (local.get $l19)))
                                    (i32.const 10)))
                                (local.set $l18
                                  (i32.const 10))
                                (loop $L136
                                  (local.set $l23
                                    (i32.add
                                      (local.get $l23)
                                      (i32.const 1)))
                                  (br_if $L136
                                    (i32.ge_u
                                      (local.get $l20)
                                      (local.tee $l18
                                        (i32.mul
                                          (local.get $l18)
                                          (i32.const 10)))))))
                              (block $B137
                                (br_if $B137
                                  (i32.ge_s
                                    (local.tee $l18
                                      (i32.sub
                                        (i32.sub
                                          (local.get $l21)
                                          (select
                                            (i32.const 0)
                                            (local.get $l23)
                                            (i32.eq
                                              (local.get $l36)
                                              (i32.const 102))))
                                        (i32.and
                                          (i32.ne
                                            (local.get $l21)
                                            (i32.const 0))
                                          (local.tee $l25
                                            (i32.eq
                                              (local.get $l36)
                                              (i32.const 103))))))
                                    (i32.add
                                      (i32.mul
                                        (i32.shr_s
                                          (i32.sub
                                            (local.get $l17)
                                            (local.get $l29))
                                          (i32.const 2))
                                        (i32.const 9))
                                      (i32.const -9))))
                                (local.set $l26
                                  (i32.add
                                    (i32.add
                                      (i32.add
                                        (local.get $l5)
                                        (i32.const 96))
                                      (local.tee $l36
                                        (select
                                          (i32.const -4092)
                                          (i32.const -3804)
                                          (local.get $l37))))
                                    (local.tee $l37
                                      (i32.shl
                                        (local.tee $l22
                                          (i32.div_s
                                            (local.tee $l20
                                              (i32.add
                                                (local.get $l18)
                                                (i32.const 9216)))
                                            (i32.const 9)))
                                        (i32.const 2)))))
                                (local.set $l18
                                  (i32.const 10))
                                (block $B138
                                  (br_if $B138
                                    (i32.gt_s
                                      (local.tee $l22
                                        (i32.sub
                                          (local.get $l20)
                                          (i32.mul
                                            (local.get $l22)
                                            (i32.const 9))))
                                      (i32.const 7)))
                                  (local.set $l20
                                    (i32.and
                                      (local.tee $l39
                                        (i32.sub
                                          (i32.const 8)
                                          (local.get $l22)))
                                      (i32.const 7)))
                                  (local.set $l18
                                    (i32.const 10))
                                  (block $B139
                                    (br_if $B139
                                      (i32.lt_u
                                        (i32.add
                                          (local.get $l22)
                                          (i32.const -1))
                                        (i32.const 7)))
                                    (local.set $l22
                                      (i32.and
                                        (local.get $l39)
                                        (i32.const -8)))
                                    (local.set $l18
                                      (i32.const 10))
                                    (loop $L140
                                      (local.set $l18
                                        (i32.mul
                                          (local.get $l18)
                                          (i32.const 100000000)))
                                      (br_if $L140
                                        (local.tee $l22
                                          (i32.add
                                            (local.get $l22)
                                            (i32.const -8))))))
                                  (br_if $B138
                                    (i32.eqz
                                      (local.get $l20)))
                                  (loop $L141
                                    (local.set $l18
                                      (i32.mul
                                        (local.get $l18)
                                        (i32.const 10)))
                                    (br_if $L141
                                      (local.tee $l20
                                        (i32.add
                                          (local.get $l20)
                                          (i32.const -1))))))
                                (local.set $l39
                                  (i32.add
                                    (local.get $l26)
                                    (i32.const 4)))
                                (block $B142
                                  (block $B143
                                    (br_if $B143
                                      (local.tee $l22
                                        (i32.sub
                                          (local.tee $l20
                                            (i32.load
                                              (local.get $l26)))
                                          (i32.mul
                                            (local.tee $l40
                                              (i32.div_u
                                                (local.get $l20)
                                                (local.get $l18)))
                                            (local.get $l18)))))
                                    (br_if $B142
                                      (i32.eq
                                        (local.get $l39)
                                        (local.get $l17))))
                                  (block $B144
                                    (block $B145
                                      (br_if $B145
                                        (i32.and
                                          (local.get $l40)
                                          (i32.const 1)))
                                      (local.set $l32
                                        (f64.const 0x1p+53 (;=9.0072e+15;)))
                                      (br_if $B144
                                        (i32.ne
                                          (local.get $l18)
                                          (i32.const 1000000000)))
                                      (br_if $B144
                                        (i32.le_u
                                          (local.get $l26)
                                          (local.get $l19)))
                                      (br_if $B144
                                        (i32.eqz
                                          (i32.and
                                            (i32.load8_u
                                              (i32.add
                                                (local.get $l26)
                                                (i32.const -4)))
                                            (i32.const 1)))))
                                    (local.set $l32
                                      (f64.const 0x1.0000000000001p+53 (;=9.0072e+15;))))
                                  (local.set $l41
                                    (select
                                      (f64.const 0x1p-1 (;=0.5;))
                                      (select
                                        (select
                                          (f64.const 0x1p+0 (;=1;))
                                          (f64.const 0x1.8p+0 (;=1.5;))
                                          (i32.eq
                                            (local.get $l39)
                                            (local.get $l17)))
                                        (f64.const 0x1.8p+0 (;=1.5;))
                                        (i32.eq
                                          (local.get $l22)
                                          (local.tee $l39
                                            (i32.shr_u
                                              (local.get $l18)
                                              (i32.const 1)))))
                                      (i32.lt_u
                                        (local.get $l22)
                                        (local.get $l39))))
                                  (block $B146
                                    (br_if $B146
                                      (local.get $l34))
                                    (br_if $B146
                                      (i32.ne
                                        (i32.load8_u
                                          (local.get $l35))
                                        (i32.const 45)))
                                    (local.set $l41
                                      (f64.neg
                                        (local.get $l41)))
                                    (local.set $l32
                                      (f64.neg
                                        (local.get $l32))))
                                  (i32.store
                                    (local.get $l26)
                                    (local.tee $l20
                                      (i32.sub
                                        (local.get $l20)
                                        (local.get $l22))))
                                  (br_if $B142
                                    (f64.eq
                                      (f64.add
                                        (local.get $l32)
                                        (local.get $l41))
                                      (local.get $l32)))
                                  (i32.store
                                    (local.get $l26)
                                    (local.tee $l18
                                      (i32.add
                                        (local.get $l20)
                                        (local.get $l18))))
                                  (block $B147
                                    (br_if $B147
                                      (i32.lt_u
                                        (local.get $l18)
                                        (i32.const 1000000000)))
                                    (local.set $l18
                                      (i32.add
                                        (local.get $l7)
                                        (i32.add
                                          (local.get $l36)
                                          (local.get $l37))))
                                    (loop $L148
                                      (i32.store
                                        (i32.add
                                          (local.get $l18)
                                          (i32.const 4))
                                        (i32.const 0))
                                      (block $B149
                                        (br_if $B149
                                          (i32.ge_u
                                            (local.get $l18)
                                            (local.get $l19)))
                                        (i32.store
                                          (local.tee $l19
                                            (i32.add
                                              (local.get $l19)
                                              (i32.const -4)))
                                          (i32.const 0)))
                                      (i32.store
                                        (local.get $l18)
                                        (local.tee $l20
                                          (i32.add
                                            (i32.load
                                              (local.get $l18))
                                            (i32.const 1))))
                                      (local.set $l18
                                        (i32.add
                                          (local.get $l18)
                                          (i32.const -4)))
                                      (br_if $L148
                                        (i32.gt_u
                                          (local.get $l20)
                                          (i32.const 999999999))))
                                    (local.set $l26
                                      (i32.add
                                        (local.get $l18)
                                        (i32.const 4))))
                                  (local.set $l23
                                    (i32.mul
                                      (i32.shr_s
                                        (i32.sub
                                          (local.get $l29)
                                          (local.get $l19))
                                        (i32.const 2))
                                      (i32.const 9)))
                                  (br_if $B142
                                    (i32.lt_u
                                      (local.tee $l20
                                        (i32.load
                                          (local.get $l19)))
                                      (i32.const 10)))
                                  (local.set $l18
                                    (i32.const 10))
                                  (loop $L150
                                    (local.set $l23
                                      (i32.add
                                        (local.get $l23)
                                        (i32.const 1)))
                                    (br_if $L150
                                      (i32.ge_u
                                        (local.get $l20)
                                        (local.tee $l18
                                          (i32.mul
                                            (local.get $l18)
                                            (i32.const 10)))))))
                                (local.set $l17
                                  (select
                                    (local.tee $l18
                                      (i32.add
                                        (local.get $l26)
                                        (i32.const 4)))
                                    (local.get $l17)
                                    (i32.gt_u
                                      (local.get $l17)
                                      (local.get $l18)))))
                              (local.set $l18
                                (i32.sub
                                  (local.get $l17)
                                  (local.get $l29)))
                              (block $B151
                                (loop $L152
                                  (local.set $l20
                                    (local.get $l18))
                                  (br_if $B151
                                    (local.tee $l22
                                      (i32.le_u
                                        (local.tee $l26
                                          (local.get $l17))
                                        (local.get $l19))))
                                  (local.set $l18
                                    (i32.add
                                      (local.get $l20)
                                      (i32.const -4)))
                                  (br_if $L152
                                    (i32.eqz
                                      (i32.load
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l26)
                                            (i32.const -4))))))))
                              (block $B153
                                (block $B154
                                  (br_if $B154
                                    (local.get $l25))
                                  (local.set $l39
                                    (i32.and
                                      (local.get $l27)
                                      (i32.const 8)))
                                  (br $B153))
                                (local.set $l21
                                  (i32.add
                                    (select
                                      (i32.xor
                                        (local.get $l23)
                                        (i32.const -1))
                                      (i32.const -1)
                                      (local.tee $l18
                                        (i32.and
                                          (i32.gt_s
                                            (local.tee $l17
                                              (select
                                                (local.get $l21)
                                                (i32.const 1)
                                                (local.get $l21)))
                                            (local.get $l23))
                                          (i32.gt_s
                                            (local.get $l23)
                                            (i32.const -5)))))
                                    (local.get $l17)))
                                (local.set $l28
                                  (i32.add
                                    (select
                                      (i32.const -1)
                                      (i32.const -2)
                                      (local.get $l18))
                                    (local.get $l28)))
                                (br_if $B153
                                  (local.tee $l39
                                    (i32.and
                                      (local.get $l27)
                                      (i32.const 8))))
                                (local.set $l17
                                  (i32.const -9))
                                (block $B155
                                  (br_if $B155
                                    (local.get $l22))
                                  (br_if $B155
                                    (i32.eqz
                                      (local.tee $l22
                                        (i32.load
                                          (i32.add
                                            (local.get $l26)
                                            (i32.const -4))))))
                                  (local.set $l17
                                    (i32.const 0))
                                  (br_if $B155
                                    (i32.rem_u
                                      (local.get $l22)
                                      (i32.const 10)))
                                  (local.set $l18
                                    (i32.const 10))
                                  (local.set $l17
                                    (i32.const 0))
                                  (loop $L156
                                    (local.set $l17
                                      (i32.add
                                        (local.get $l17)
                                        (i32.const -1)))
                                    (br_if $L156
                                      (i32.eqz
                                        (i32.rem_u
                                          (local.get $l22)
                                          (local.tee $l18
                                            (i32.mul
                                              (local.get $l18)
                                              (i32.const 10))))))))
                                (local.set $l18
                                  (i32.mul
                                    (i32.shr_s
                                      (local.get $l20)
                                      (i32.const 2))
                                    (i32.const 9)))
                                (block $B157
                                  (br_if $B157
                                    (i32.ne
                                      (i32.and
                                        (local.get $l28)
                                        (i32.const -33))
                                      (i32.const 70)))
                                  (local.set $l39
                                    (i32.const 0))
                                  (local.set $l21
                                    (select
                                      (local.get $l21)
                                      (local.tee $l17
                                        (select
                                          (local.tee $l17
                                            (i32.add
                                              (i32.add
                                                (local.get $l18)
                                                (local.get $l17))
                                              (i32.const -9)))
                                          (i32.const 0)
                                          (i32.gt_s
                                            (local.get $l17)
                                            (i32.const 0))))
                                      (i32.lt_s
                                        (local.get $l21)
                                        (local.get $l17))))
                                  (br $B153))
                                (local.set $l39
                                  (i32.const 0))
                                (local.set $l21
                                  (select
                                    (local.get $l21)
                                    (local.tee $l17
                                      (select
                                        (local.tee $l17
                                          (i32.add
                                            (i32.add
                                              (i32.add
                                                (local.get $l23)
                                                (local.get $l18))
                                              (local.get $l17))
                                            (i32.const -9)))
                                        (i32.const 0)
                                        (i32.gt_s
                                          (local.get $l17)
                                          (i32.const 0))))
                                    (i32.lt_s
                                      (local.get $l21)
                                      (local.get $l17)))))
                              (br_if $B3
                                (i32.gt_s
                                  (local.get $l21)
                                  (select
                                    (i32.const 2147483645)
                                    (i32.const 2147483646)
                                    (local.tee $l36
                                      (i32.or
                                        (local.get $l21)
                                        (local.get $l39))))))
                              (local.set $l40
                                (i32.add
                                  (i32.add
                                    (local.get $l21)
                                    (i32.ne
                                      (local.get $l36)
                                      (i32.const 0)))
                                  (i32.const 1)))
                              (block $B158
                                (block $B159
                                  (br_if $B159
                                    (local.tee $l37
                                      (i32.ne
                                        (i32.and
                                          (local.get $l28)
                                          (i32.const -33))
                                        (i32.const 70))))
                                  (br_if $B3
                                    (i32.gt_s
                                      (local.get $l23)
                                      (i32.xor
                                        (local.get $l40)
                                        (i32.const 2147483647))))
                                  (local.set $l17
                                    (select
                                      (local.get $l23)
                                      (i32.const 0)
                                      (i32.gt_s
                                        (local.get $l23)
                                        (i32.const 0))))
                                  (br $B158))
                                (block $B160
                                  (block $B161
                                    (br_if $B161
                                      (local.get $l23))
                                    (local.set $l20
                                      (local.get $l6))
                                    (local.set $l18
                                      (local.get $l6))
                                    (br $B160))
                                  (local.set $l17
                                    (i32.sub
                                      (i32.xor
                                        (local.get $l23)
                                        (local.tee $l17
                                          (i32.shr_s
                                            (local.get $l23)
                                            (i32.const 31))))
                                      (local.get $l17)))
                                  (local.set $l20
                                    (local.get $l6))
                                  (local.set $l18
                                    (local.get $l6))
                                  (loop $L162
                                    (i32.store8
                                      (local.tee $l18
                                        (i32.add
                                          (local.get $l18)
                                          (i32.const -1)))
                                      (i32.or
                                        (i32.sub
                                          (local.get $l17)
                                          (i32.mul
                                            (local.tee $l22
                                              (i32.div_u
                                                (local.get $l17)
                                                (i32.const 10)))
                                            (i32.const 10)))
                                        (i32.const 48)))
                                    (local.set $l20
                                      (i32.add
                                        (local.get $l20)
                                        (i32.const -1)))
                                    (local.set $l25
                                      (i32.gt_u
                                        (local.get $l17)
                                        (i32.const 9)))
                                    (local.set $l17
                                      (local.get $l22))
                                    (br_if $L162
                                      (local.get $l25))))
                                (block $B163
                                  (br_if $B163
                                    (i32.gt_s
                                      (i32.sub
                                        (local.get $l6)
                                        (local.get $l20))
                                      (i32.const 1)))
                                  (local.set $l18
                                    (i32.add
                                      (local.get $l18)
                                      (i32.sub
                                        (local.get $l13)
                                        (local.get $l20))))
                                  (br_if $B163
                                    (i32.eqz
                                      (local.tee $l17
                                        (i32.add
                                          (i32.sub
                                            (local.get $l20)
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 52)))
                                          (i32.const -10)))))
                                  (memory.fill
                                    (local.get $l18)
                                    (i32.const 48)
                                    (local.get $l17)))
                                (i32.store8
                                  (local.tee $l34
                                    (i32.add
                                      (local.get $l18)
                                      (i32.const -2)))
                                  (local.get $l28))
                                (i32.store8
                                  (i32.add
                                    (local.get $l18)
                                    (i32.const -1))
                                  (select
                                    (i32.const 45)
                                    (i32.const 43)
                                    (i32.lt_s
                                      (local.get $l23)
                                      (i32.const 0))))
                                (br_if $B3
                                  (i32.gt_s
                                    (local.tee $l17
                                      (i32.sub
                                        (local.get $l6)
                                        (local.get $l34)))
                                    (i32.xor
                                      (local.get $l40)
                                      (i32.const 2147483647)))))
                              (br_if $B3
                                (i32.gt_s
                                  (local.tee $l17
                                    (i32.add
                                      (local.get $l17)
                                      (local.get $l40)))
                                  (i32.xor
                                    (local.get $l33)
                                    (i32.const 2147483647))))
                              (local.set $l25
                                (i32.add
                                  (local.get $l17)
                                  (local.get $l33)))
                              (block $B164
                                (br_if $B164
                                  (local.tee $l27
                                    (i32.and
                                      (local.get $l27)
                                      (i32.const 73728))))
                                (br_if $B164
                                  (i32.le_s
                                    (local.get $l24)
                                    (local.get $l25)))
                                (block $B165
                                  (br_if $B165
                                    (i32.eqz
                                      (local.tee $l20
                                        (select
                                          (local.tee $l17
                                            (i32.sub
                                              (local.get $l24)
                                              (local.get $l25)))
                                          (i32.const 256)
                                          (local.tee $l18
                                            (i32.lt_u
                                              (local.get $l17)
                                              (i32.const 256)))))))
                                  (memory.fill
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 608))
                                    (i32.const 32)
                                    (local.get $l20)))
                                (block $B166
                                  (br_if $B166
                                    (local.get $l18))
                                  (loop $L167
                                    (block $B168
                                      (br_if $B168
                                        (i32.and
                                          (i32.load8_u
                                            (local.get $p0))
                                          (i32.const 32)))
                                      (drop
                                        (call $__fwritex
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 608))
                                          (i32.const 256)
                                          (local.get $p0))))
                                    (br_if $L167
                                      (i32.gt_u
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l17)
                                            (i32.const -256)))
                                        (i32.const 255)))))
                                (br_if $B164
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 608))
                                    (local.get $l17)
                                    (local.get $p0))))
                              (block $B169
                                (br_if $B169
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (local.get $l35)
                                    (local.get $l33)
                                    (local.get $p0))))
                              (block $B170
                                (br_if $B170
                                  (i32.ne
                                    (local.get $l27)
                                    (i32.const 65536)))
                                (br_if $B170
                                  (i32.le_s
                                    (local.get $l24)
                                    (local.get $l25)))
                                (block $B171
                                  (br_if $B171
                                    (i32.eqz
                                      (local.tee $l20
                                        (select
                                          (local.tee $l17
                                            (i32.sub
                                              (local.get $l24)
                                              (local.get $l25)))
                                          (i32.const 256)
                                          (local.tee $l18
                                            (i32.lt_u
                                              (local.get $l17)
                                              (i32.const 256)))))))
                                  (memory.fill
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 608))
                                    (i32.const 48)
                                    (local.get $l20)))
                                (block $B172
                                  (br_if $B172
                                    (local.get $l18))
                                  (loop $L173
                                    (block $B174
                                      (br_if $B174
                                        (i32.and
                                          (i32.load8_u
                                            (local.get $p0))
                                          (i32.const 32)))
                                      (drop
                                        (call $__fwritex
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 608))
                                          (i32.const 256)
                                          (local.get $p0))))
                                    (br_if $L173
                                      (i32.gt_u
                                        (local.tee $l17
                                          (i32.add
                                            (local.get $l17)
                                            (i32.const -256)))
                                        (i32.const 255)))))
                                (br_if $B170
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 608))
                                    (local.get $l17)
                                    (local.get $p0))))
                              (br_if $B10
                                (local.get $l37))
                              (local.set $l22
                                (local.tee $l23
                                  (select
                                    (local.get $l29)
                                    (local.get $l19)
                                    (i32.gt_u
                                      (local.get $l19)
                                      (local.get $l29)))))
                              (loop $L175
                                (block $B176
                                  (block $B177
                                    (block $B178
                                      (block $B179
                                        (br_if $B179
                                          (i32.eqz
                                            (local.tee $l17
                                              (i32.load
                                                (local.get $l22)))))
                                        (local.set $l18
                                          (i32.const 8))
                                        (loop $L180
                                          (i32.store8
                                            (i32.add
                                              (i32.add
                                                (local.get $l5)
                                                (i32.const 64))
                                              (local.get $l18))
                                            (i32.or
                                              (i32.sub
                                                (local.get $l17)
                                                (i32.mul
                                                  (local.tee $l19
                                                    (i32.div_u
                                                      (local.get $l17)
                                                      (i32.const 10)))
                                                  (i32.const 10)))
                                              (i32.const 48)))
                                          (local.set $l18
                                            (i32.add
                                              (local.get $l18)
                                              (i32.const -1)))
                                          (local.set $l20
                                            (i32.gt_u
                                              (local.get $l17)
                                              (i32.const 9)))
                                          (local.set $l17
                                            (local.get $l19))
                                          (br_if $L180
                                            (local.get $l20)))
                                        (local.set $l17
                                          (i32.add
                                            (local.tee $l19
                                              (i32.add
                                                (local.get $l18)
                                                (i32.const 1)))
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 64))))
                                        (block $B181
                                          (br_if $B181
                                            (i32.eq
                                              (local.get $l22)
                                              (local.get $l23)))
                                          (br_if $B176
                                            (i32.lt_s
                                              (i32.add
                                                (local.get $l18)
                                                (i32.const 2))
                                              (i32.const 2)))
                                          (br $B177))
                                        (br_if $B176
                                          (i32.ne
                                            (local.get $l18)
                                            (i32.const 8)))
                                        (br $B178))
                                      (local.set $l19
                                        (i32.const 9))
                                      (br_if $B177
                                        (i32.ne
                                          (local.get $l22)
                                          (local.get $l23))))
                                    (i32.store8 offset=72
                                      (local.get $l5)
                                      (i32.const 48))
                                    (local.set $l17
                                      (local.get $l11))
                                    (br $B176))
                                  (br_if $B176
                                    (i32.eqz
                                      (local.tee $l18
                                        (i32.sub
                                          (i32.add
                                            (local.get $l19)
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 64)))
                                          (local.tee $l17
                                            (select
                                              (i32.add
                                                (local.get $l5)
                                                (i32.const 64))
                                              (local.tee $l17
                                                (i32.add
                                                  (local.get $l10)
                                                  (local.get $l19)))
                                              (i32.lt_u
                                                (i32.add
                                                  (local.get $l5)
                                                  (i32.const 64))
                                                (local.get $l17))))))))
                                  (memory.fill
                                    (local.get $l17)
                                    (i32.const 48)
                                    (local.get $l18)))
                                (block $B182
                                  (br_if $B182
                                    (i32.and
                                      (i32.load8_u
                                        (local.get $p0))
                                      (i32.const 32)))
                                  (drop
                                    (call $__fwritex
                                      (local.get $l17)
                                      (i32.sub
                                        (local.get $l12)
                                        (local.get $l17))
                                      (local.get $p0))))
                                (br_if $L175
                                  (i32.le_u
                                    (local.tee $l22
                                      (i32.add
                                        (local.get $l22)
                                        (i32.const 4)))
                                    (local.get $l29))))
                              (block $B183
                                (br_if $B183
                                  (i32.eqz
                                    (local.get $l36)))
                                (br_if $B183
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (i32.const 1106)
                                    (i32.const 1)
                                    (local.get $p0))))
                              (block $B184
                                (block $B185
                                  (br_if $B185
                                    (i32.ge_s
                                      (local.get $l21)
                                      (i32.const 1)))
                                  (local.set $l17
                                    (local.get $l21))
                                  (br $B184))
                                (block $B186
                                  (br_if $B186
                                    (i32.lt_u
                                      (local.get $l22)
                                      (local.get $l26)))
                                  (local.set $l17
                                    (local.get $l21))
                                  (br $B184))
                                (loop $L187
                                  (block $B188
                                    (block $B189
                                      (block $B190
                                        (br_if $B190
                                          (local.tee $l17
                                            (i32.load
                                              (local.get $l22))))
                                        (local.set $l18
                                          (local.get $l12))
                                        (local.set $l19
                                          (local.get $l12))
                                        (br $B189))
                                      (local.set $l19
                                        (local.get $l12))
                                      (local.set $l18
                                        (local.get $l12))
                                      (loop $L191
                                        (i32.store8
                                          (local.tee $l18
                                            (i32.add
                                              (local.get $l18)
                                              (i32.const -1)))
                                          (i32.or
                                            (i32.sub
                                              (local.get $l17)
                                              (i32.mul
                                                (local.tee $l20
                                                  (i32.div_u
                                                    (local.get $l17)
                                                    (i32.const 10)))
                                                (i32.const 10)))
                                            (i32.const 48)))
                                        (local.set $l19
                                          (i32.add
                                            (local.get $l19)
                                            (i32.const -1)))
                                        (local.set $l23
                                          (i32.gt_u
                                            (local.get $l17)
                                            (i32.const 9)))
                                        (local.set $l17
                                          (local.get $l20))
                                        (br_if $L191
                                          (local.get $l23)))
                                      (br_if $B188
                                        (i32.le_u
                                          (local.get $l18)
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 64)))))
                                    (local.set $l18
                                      (i32.sub
                                        (i32.add
                                          (local.get $l18)
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 64)))
                                        (local.get $l19)))
                                    (br_if $B188
                                      (i32.eqz
                                        (local.tee $l17
                                          (i32.sub
                                            (local.get $l19)
                                            (i32.add
                                              (local.get $l5)
                                              (i32.const 64))))))
                                    (memory.fill
                                      (local.get $l18)
                                      (i32.const 48)
                                      (local.get $l17)))
                                  (block $B192
                                    (br_if $B192
                                      (i32.and
                                        (i32.load8_u
                                          (local.get $p0))
                                        (i32.const 32)))
                                    (drop
                                      (call $__fwritex
                                        (local.get $l18)
                                        (select
                                          (local.get $l21)
                                          (i32.const 9)
                                          (i32.lt_s
                                            (local.get $l21)
                                            (i32.const 9)))
                                        (local.get $p0))))
                                  (local.set $l17
                                    (i32.add
                                      (local.get $l21)
                                      (i32.const -9)))
                                  (br_if $B184
                                    (i32.ge_u
                                      (local.tee $l22
                                        (i32.add
                                          (local.get $l22)
                                          (i32.const 4)))
                                      (local.get $l26)))
                                  (local.set $l18
                                    (i32.gt_s
                                      (local.get $l21)
                                      (i32.const 9)))
                                  (local.set $l21
                                    (local.get $l17))
                                  (br_if $L187
                                    (local.get $l18))))
                              (call $pad
                                (local.get $p0)
                                (i32.const 48)
                                (i32.add
                                  (local.get $l17)
                                  (i32.const 9))
                                (i32.const 9)
                                (i32.const 0))
                              (br $B9))
                            (i32.store offset=4152
                              (i32.const 0)
                              (i32.const 28))
                            (br $B1))
                          (local.set $l21
                            (i32.const 0))
                          (local.set $l29
                            (i32.const 1024))
                          (local.set $l17
                            (local.get $l14))
                          (local.set $l26
                            (local.get $l27))
                          (local.set $l23
                            (local.get $l22))
                          (br $B5))
                        (block $B193
                          (br_if $B193
                            (i32.lt_s
                              (local.get $l21)
                              (i32.const 0)))
                          (local.set $l26
                            (select
                              (local.get $l26)
                              (i32.add
                                (local.get $l19)
                                (i32.const 4))
                              (i32.gt_u
                                (local.get $l26)
                                (local.get $l19))))
                          (local.set $l22
                            (local.get $l19))
                          (loop $L194
                            (block $B195
                              (block $B196
                                (br_if $B196
                                  (i32.eqz
                                    (local.tee $l17
                                      (i32.load
                                        (local.get $l22)))))
                                (local.set $l18
                                  (local.get $l12))
                                (loop $L197
                                  (i32.store8
                                    (local.tee $l18
                                      (i32.add
                                        (local.get $l18)
                                        (i32.const -1)))
                                    (i32.or
                                      (i32.sub
                                        (local.get $l17)
                                        (i32.mul
                                          (local.tee $l20
                                            (i32.div_u
                                              (local.get $l17)
                                              (i32.const 10)))
                                          (i32.const 10)))
                                      (i32.const 48)))
                                  (local.set $l23
                                    (i32.lt_u
                                      (local.get $l17)
                                      (i32.const 10)))
                                  (local.set $l17
                                    (local.get $l20))
                                  (br_if $L197
                                    (i32.eqz
                                      (local.get $l23)))
                                  (br $B195)))
                              (i32.store8 offset=72
                                (local.get $l5)
                                (i32.const 48))
                              (local.set $l18
                                (local.get $l11)))
                            (block $B198
                              (block $B199
                                (br_if $B199
                                  (i32.eq
                                    (local.get $l22)
                                    (local.get $l19)))
                                (br_if $B198
                                  (i32.le_u
                                    (local.get $l18)
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 64))))
                                (block $B200
                                  (br_if $B200
                                    (i32.eqz
                                      (local.tee $l17
                                        (i32.sub
                                          (local.get $l18)
                                          (i32.add
                                            (local.get $l5)
                                            (i32.const 64))))))
                                  (memory.fill
                                    (i32.add
                                      (local.get $l5)
                                      (i32.const 64))
                                    (i32.const 48)
                                    (local.get $l17)))
                                (local.set $l18
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 64)))
                                (br $B198))
                              (block $B201
                                (br_if $B201
                                  (i32.and
                                    (i32.load8_u
                                      (local.get $p0))
                                    (i32.const 32)))
                                (drop
                                  (call $__fwritex
                                    (local.get $l18)
                                    (i32.const 1)
                                    (local.get $p0))))
                              (local.set $l18
                                (i32.add
                                  (local.get $l18)
                                  (i32.const 1)))
                              (block $B202
                                (br_if $B202
                                  (local.get $l39))
                                (br_if $B198
                                  (i32.lt_s
                                    (local.get $l21)
                                    (i32.const 1))))
                              (br_if $B198
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.const 1106)
                                  (i32.const 1)
                                  (local.get $p0))))
                            (local.set $l17
                              (i32.sub
                                (local.get $l12)
                                (local.get $l18)))
                            (block $B203
                              (br_if $B203
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (local.get $l18)
                                  (select
                                    (local.get $l17)
                                    (local.get $l21)
                                    (i32.lt_s
                                      (local.get $l17)
                                      (local.get $l21)))
                                  (local.get $p0))))
                            (local.set $l21
                              (i32.sub
                                (local.get $l21)
                                (local.get $l17)))
                            (br_if $B193
                              (i32.ge_u
                                (local.tee $l22
                                  (i32.add
                                    (local.get $l22)
                                    (i32.const 4)))
                                (local.get $l26)))
                            (br_if $L194
                              (i32.gt_s
                                (local.get $l21)
                                (i32.const -1)))))
                        (call $pad
                          (local.get $p0)
                          (i32.const 48)
                          (i32.add
                            (local.get $l21)
                            (i32.const 18))
                          (i32.const 18)
                          (i32.const 0))
                        (br_if $B9
                          (i32.and
                            (i32.load8_u
                              (local.get $p0))
                            (i32.const 32)))
                        (drop
                          (call $__fwritex
                            (local.get $l34)
                            (i32.sub
                              (local.get $l6)
                              (local.get $l34))
                            (local.get $p0))))
                      (block $B204
                        (br_if $B204
                          (i32.ne
                            (local.get $l27)
                            (i32.const 8192)))
                        (br_if $B204
                          (i32.le_s
                            (local.get $l24)
                            (local.get $l25)))
                        (block $B205
                          (br_if $B205
                            (i32.eqz
                              (local.tee $l19
                                (select
                                  (local.tee $l17
                                    (i32.sub
                                      (local.get $l24)
                                      (local.get $l25)))
                                  (i32.const 256)
                                  (local.tee $l18
                                    (i32.lt_u
                                      (local.get $l17)
                                      (i32.const 256)))))))
                          (memory.fill
                            (i32.add
                              (local.get $l5)
                              (i32.const 608))
                            (i32.const 32)
                            (local.get $l19)))
                        (block $B206
                          (br_if $B206
                            (local.get $l18))
                          (loop $L207
                            (block $B208
                              (br_if $B208
                                (i32.and
                                  (i32.load8_u
                                    (local.get $p0))
                                  (i32.const 32)))
                              (drop
                                (call $__fwritex
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 608))
                                  (i32.const 256)
                                  (local.get $p0))))
                            (br_if $L207
                              (i32.gt_u
                                (local.tee $l17
                                  (i32.add
                                    (local.get $l17)
                                    (i32.const -256)))
                                (i32.const 255)))))
                        (br_if $B204
                          (i32.and
                            (i32.load8_u
                              (local.get $p0))
                            (i32.const 32)))
                        (drop
                          (call $__fwritex
                            (i32.add
                              (local.get $l5)
                              (i32.const 608))
                            (local.get $l17)
                            (local.get $p0))))
                      (local.set $l17
                        (select
                          (local.get $l24)
                          (local.get $l25)
                          (i32.gt_s
                            (local.get $l24)
                            (local.get $l25))))
                      (br $B7))
                    (local.set $l21
                      (i32.add
                        (local.get $l35)
                        (i32.and
                          (i32.shr_s
                            (i32.shl
                              (local.get $l28)
                              (i32.const 26))
                            (i32.const 31))
                          (i32.const 9))))
                    (block $B209
                      (br_if $B209
                        (i32.gt_u
                          (local.get $l22)
                          (i32.const 11)))
                      (block $B210
                        (block $B211
                          (br_if $B211
                            (local.tee $l18
                              (i32.and
                                (local.tee $l17
                                  (i32.sub
                                    (i32.const 12)
                                    (local.get $l22)))
                                (i32.const 7))))
                          (local.set $l41
                            (f64.const 0x1p+4 (;=16;)))
                          (br $B210))
                        (local.set $l17
                          (i32.add
                            (local.get $l22)
                            (i32.const -12)))
                        (local.set $l41
                          (f64.const 0x1p+4 (;=16;)))
                        (loop $L212
                          (local.set $l17
                            (i32.add
                              (local.get $l17)
                              (i32.const 1)))
                          (local.set $l41
                            (f64.mul
                              (local.get $l41)
                              (f64.const 0x1p+4 (;=16;))))
                          (br_if $L212
                            (local.tee $l18
                              (i32.add
                                (local.get $l18)
                                (i32.const -1)))))
                        (local.set $l17
                          (i32.sub
                            (i32.const 0)
                            (local.get $l17))))
                      (block $B213
                        (br_if $B213
                          (i32.gt_u
                            (local.get $l22)
                            (i32.const 4)))
                        (loop $L214
                          (local.set $l41
                            (f64.mul
                              (f64.mul
                                (f64.mul
                                  (f64.mul
                                    (f64.mul
                                      (f64.mul
                                        (f64.mul
                                          (f64.mul
                                            (local.get $l41)
                                            (f64.const 0x1p+4 (;=16;)))
                                          (f64.const 0x1p+4 (;=16;)))
                                        (f64.const 0x1p+4 (;=16;)))
                                      (f64.const 0x1p+4 (;=16;)))
                                    (f64.const 0x1p+4 (;=16;)))
                                  (f64.const 0x1p+4 (;=16;)))
                                (f64.const 0x1p+4 (;=16;)))
                              (f64.const 0x1p+4 (;=16;))))
                          (br_if $L214
                            (local.tee $l17
                              (i32.add
                                (local.get $l17)
                                (i32.const -8))))))
                      (block $B215
                        (br_if $B215
                          (i32.ne
                            (i32.load8_u
                              (local.get $l21))
                            (i32.const 45)))
                        (local.set $l32
                          (f64.neg
                            (f64.add
                              (local.get $l41)
                              (f64.sub
                                (f64.neg
                                  (local.get $l32))
                                (local.get $l41)))))
                        (br $B209))
                      (local.set $l32
                        (f64.sub
                          (f64.add
                            (local.get $l32)
                            (local.get $l41))
                          (local.get $l41))))
                    (block $B216
                      (block $B217
                        (br_if $B217
                          (i32.eqz
                            (local.tee $l23
                              (i32.load offset=92
                                (local.get $l5)))))
                        (local.set $l17
                          (i32.sub
                            (i32.xor
                              (local.get $l23)
                              (local.tee $l17
                                (i32.shr_s
                                  (local.get $l23)
                                  (i32.const 31))))
                            (local.get $l17)))
                        (local.set $l18
                          (local.get $l6))
                        (loop $L218
                          (i32.store8
                            (local.tee $l18
                              (i32.add
                                (local.get $l18)
                                (i32.const -1)))
                            (i32.or
                              (i32.sub
                                (local.get $l17)
                                (i32.mul
                                  (local.tee $l19
                                    (i32.div_u
                                      (local.get $l17)
                                      (i32.const 10)))
                                  (i32.const 10)))
                              (i32.const 48)))
                          (local.set $l20
                            (i32.lt_u
                              (local.get $l17)
                              (i32.const 10)))
                          (local.set $l17
                            (local.get $l19))
                          (br_if $L218
                            (i32.eqz
                              (local.get $l20)))
                          (br $B216)))
                      (i32.store8 offset=63
                        (local.get $l5)
                        (i32.const 48))
                      (local.set $l18
                        (local.get $l9)))
                    (local.set $l26
                      (i32.or
                        (local.get $l33)
                        (i32.const 2)))
                    (local.set $l19
                      (i32.and
                        (local.get $l28)
                        (i32.const 32)))
                    (i32.store8
                      (local.tee $l25
                        (i32.add
                          (local.get $l18)
                          (i32.const -2)))
                      (i32.add
                        (local.get $l28)
                        (i32.const 15)))
                    (i32.store8
                      (i32.add
                        (local.get $l18)
                        (i32.const -1))
                      (select
                        (i32.const 45)
                        (i32.const 43)
                        (i32.lt_s
                          (local.get $l23)
                          (i32.const 0))))
                    (local.set $l20
                      (i32.and
                        (i32.eqz
                          (i32.and
                            (local.get $l27)
                            (i32.const 8)))
                        (i32.lt_s
                          (local.get $l22)
                          (i32.const 1))))
                    (local.set $l18
                      (i32.add
                        (local.get $l5)
                        (i32.const 64)))
                    (loop $L219
                      (i32.store8
                        (local.tee $l17
                          (local.get $l18))
                        (i32.or
                          (i32.load8_u
                            (i32.add
                              (local.tee $l18
                                (i32.trunc_sat_f64_s
                                  (local.get $l32)))
                              (i32.const 3520)))
                          (local.get $l19)))
                      (local.set $l32
                        (f64.mul
                          (f64.sub
                            (local.get $l32)
                            (f64.convert_i32_s
                              (local.get $l18)))
                          (f64.const 0x1p+4 (;=16;))))
                      (block $B220
                        (br_if $B220
                          (i32.ne
                            (i32.sub
                              (local.tee $l18
                                (i32.add
                                  (local.get $l17)
                                  (i32.const 1)))
                              (i32.add
                                (local.get $l5)
                                (i32.const 64)))
                            (i32.const 1)))
                        (br_if $B220
                          (i32.and
                            (local.get $l20)
                            (f64.eq
                              (local.get $l32)
                              (f64.const 0x0p+0 (;=0;)))))
                        (i32.store8 offset=1
                          (local.get $l17)
                          (i32.const 46))
                        (local.set $l18
                          (i32.add
                            (local.get $l17)
                            (i32.const 2))))
                      (br_if $L219
                        (f64.ne
                          (local.get $l32)
                          (f64.const 0x0p+0 (;=0;)))))
                    (br_if $B3
                      (i32.gt_s
                        (local.get $l22)
                        (i32.sub
                          (i32.const 2147483645)
                          (local.tee $l17
                            (i32.add
                              (local.tee $l29
                                (i32.sub
                                  (local.get $l6)
                                  (local.get $l25)))
                              (local.get $l26))))))
                    (local.set $l18
                      (i32.add
                        (local.tee $l23
                          (select
                            (select
                              (i32.add
                                (local.get $l22)
                                (i32.const 2))
                              (local.tee $l19
                                (i32.sub
                                  (local.get $l18)
                                  (i32.add
                                    (local.get $l5)
                                    (i32.const 64))))
                              (i32.lt_s
                                (i32.add
                                  (local.get $l19)
                                  (i32.const -2))
                                (local.get $l22)))
                            (local.get $l19)
                            (local.get $l22)))
                        (local.get $l17)))
                    (block $B221
                      (br_if $B221
                        (local.tee $l20
                          (i32.and
                            (local.get $l27)
                            (i32.const 73728))))
                      (br_if $B221
                        (i32.le_s
                          (local.get $l24)
                          (local.get $l18)))
                      (block $B222
                        (br_if $B222
                          (i32.eqz
                            (local.tee $l27
                              (select
                                (local.tee $l17
                                  (i32.sub
                                    (local.get $l24)
                                    (local.get $l18)))
                                (i32.const 256)
                                (local.tee $l22
                                  (i32.lt_u
                                    (local.get $l17)
                                    (i32.const 256)))))))
                        (memory.fill
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (i32.const 32)
                          (local.get $l27)))
                      (block $B223
                        (br_if $B223
                          (local.get $l22))
                        (loop $L224
                          (block $B225
                            (br_if $B225
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 608))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L224
                            (i32.gt_u
                              (local.tee $l17
                                (i32.add
                                  (local.get $l17)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B221
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (local.get $l17)
                          (local.get $p0))))
                    (block $B226
                      (br_if $B226
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (local.get $l21)
                          (local.get $l26)
                          (local.get $p0))))
                    (block $B227
                      (br_if $B227
                        (i32.ne
                          (local.get $l20)
                          (i32.const 65536)))
                      (br_if $B227
                        (i32.le_s
                          (local.get $l24)
                          (local.get $l18)))
                      (block $B228
                        (br_if $B228
                          (i32.eqz
                            (local.tee $l26
                              (select
                                (local.tee $l17
                                  (i32.sub
                                    (local.get $l24)
                                    (local.get $l18)))
                                (i32.const 256)
                                (local.tee $l22
                                  (i32.lt_u
                                    (local.get $l17)
                                    (i32.const 256)))))))
                        (memory.fill
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (i32.const 48)
                          (local.get $l26)))
                      (block $B229
                        (br_if $B229
                          (local.get $l22))
                        (loop $L230
                          (block $B231
                            (br_if $B231
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 608))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L230
                            (i32.gt_u
                              (local.tee $l17
                                (i32.add
                                  (local.get $l17)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B227
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (local.get $l17)
                          (local.get $p0))))
                    (block $B232
                      (br_if $B232
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 64))
                          (local.get $l19)
                          (local.get $p0))))
                    (block $B233
                      (br_if $B233
                        (i32.lt_s
                          (local.tee $l17
                            (i32.sub
                              (local.get $l23)
                              (local.get $l19)))
                          (i32.const 1)))
                      (block $B234
                        (br_if $B234
                          (i32.eqz
                            (local.tee $l23
                              (select
                                (local.get $l17)
                                (i32.const 256)
                                (local.tee $l19
                                  (i32.lt_u
                                    (local.get $l17)
                                    (i32.const 256)))))))
                        (memory.fill
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (i32.const 48)
                          (local.get $l23)))
                      (block $B235
                        (br_if $B235
                          (local.get $l19))
                        (loop $L236
                          (block $B237
                            (br_if $B237
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 608))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L236
                            (i32.gt_u
                              (local.tee $l17
                                (i32.add
                                  (local.get $l17)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B233
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (local.get $l17)
                          (local.get $p0))))
                    (block $B238
                      (br_if $B238
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (local.get $l25)
                          (local.get $l29)
                          (local.get $p0))))
                    (block $B239
                      (br_if $B239
                        (i32.ne
                          (local.get $l20)
                          (i32.const 8192)))
                      (br_if $B239
                        (i32.le_s
                          (local.get $l24)
                          (local.get $l18)))
                      (block $B240
                        (br_if $B240
                          (i32.eqz
                            (local.tee $l20
                              (select
                                (local.tee $l17
                                  (i32.sub
                                    (local.get $l24)
                                    (local.get $l18)))
                                (i32.const 256)
                                (local.tee $l19
                                  (i32.lt_u
                                    (local.get $l17)
                                    (i32.const 256)))))))
                        (memory.fill
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (i32.const 32)
                          (local.get $l20)))
                      (block $B241
                        (br_if $B241
                          (local.get $l19))
                        (loop $L242
                          (block $B243
                            (br_if $B243
                              (i32.and
                                (i32.load8_u
                                  (local.get $p0))
                                (i32.const 32)))
                            (drop
                              (call $__fwritex
                                (i32.add
                                  (local.get $l5)
                                  (i32.const 608))
                                (i32.const 256)
                                (local.get $p0))))
                          (br_if $L242
                            (i32.gt_u
                              (local.tee $l17
                                (i32.add
                                  (local.get $l17)
                                  (i32.const -256)))
                              (i32.const 255)))))
                      (br_if $B239
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 608))
                          (local.get $l17)
                          (local.get $p0))))
                    (local.set $l17
                      (select
                        (local.get $l24)
                        (local.get $l18)
                        (i32.gt_s
                          (local.get $l24)
                          (local.get $l18)))))
                  (br_if $L4
                    (i32.ge_s
                      (local.get $l17)
                      (i32.const 0)))
                  (br $B3))
                (i32.store8 offset=39
                  (local.get $l5)
                  (local.get $l17))
                (local.set $l21
                  (i32.const 0))
                (local.set $l29
                  (i32.const 1024))
                (local.set $l23
                  (i32.const 1))
                (local.set $l18
                  (local.get $l8))
                (local.set $l17
                  (local.get $l14)))
              (br_if $B3
                (i32.gt_s
                  (local.tee $l25
                    (select
                      (local.get $l23)
                      (local.tee $l22
                        (i32.sub
                          (local.get $l17)
                          (local.get $l18)))
                      (i32.gt_s
                        (local.get $l23)
                        (local.get $l22))))
                  (i32.xor
                    (local.get $l21)
                    (i32.const 2147483647))))
              (br_if $B3
                (i32.gt_s
                  (local.tee $l17
                    (select
                      (local.get $l24)
                      (local.tee $l20
                        (i32.add
                          (local.get $l21)
                          (local.get $l25)))
                      (i32.gt_s
                        (local.get $l24)
                        (local.get $l20))))
                  (local.get $l19)))
              (block $B244
                (br_if $B244
                  (local.tee $l26
                    (i32.and
                      (local.get $l26)
                      (i32.const 73728))))
                (br_if $B244
                  (i32.le_s
                    (local.get $l24)
                    (local.get $l20)))
                (block $B245
                  (br_if $B245
                    (i32.eqz
                      (local.tee $l39
                        (select
                          (local.tee $l19
                            (i32.sub
                              (local.get $l17)
                              (local.get $l20)))
                          (i32.const 256)
                          (local.tee $l27
                            (i32.lt_u
                              (local.get $l19)
                              (i32.const 256)))))))
                  (memory.fill
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (i32.const 32)
                    (local.get $l39)))
                (block $B246
                  (br_if $B246
                    (local.get $l27))
                  (loop $L247
                    (block $B248
                      (br_if $B248
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 96))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L247
                      (i32.gt_u
                        (local.tee $l19
                          (i32.add
                            (local.get $l19)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B244
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (local.get $l19)
                    (local.get $p0))))
              (block $B249
                (br_if $B249
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (local.get $l29)
                    (local.get $l21)
                    (local.get $p0))))
              (block $B250
                (br_if $B250
                  (i32.ne
                    (local.get $l26)
                    (i32.const 65536)))
                (br_if $B250
                  (i32.le_s
                    (local.get $l24)
                    (local.get $l20)))
                (block $B251
                  (br_if $B251
                    (i32.eqz
                      (local.tee $l29
                        (select
                          (local.tee $l19
                            (i32.sub
                              (local.get $l17)
                              (local.get $l20)))
                          (i32.const 256)
                          (local.tee $l21
                            (i32.lt_u
                              (local.get $l19)
                              (i32.const 256)))))))
                  (memory.fill
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (i32.const 48)
                    (local.get $l29)))
                (block $B252
                  (br_if $B252
                    (local.get $l21))
                  (loop $L253
                    (block $B254
                      (br_if $B254
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 96))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L253
                      (i32.gt_u
                        (local.tee $l19
                          (i32.add
                            (local.get $l19)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B250
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (local.get $l19)
                    (local.get $p0))))
              (block $B255
                (br_if $B255
                  (i32.le_s
                    (local.get $l23)
                    (local.get $l22)))
                (block $B256
                  (br_if $B256
                    (i32.eqz
                      (local.tee $l25
                        (select
                          (local.tee $l19
                            (i32.sub
                              (local.get $l25)
                              (local.get $l22)))
                          (i32.const 256)
                          (local.tee $l23
                            (i32.lt_u
                              (local.get $l19)
                              (i32.const 256)))))))
                  (memory.fill
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (i32.const 48)
                    (local.get $l25)))
                (block $B257
                  (br_if $B257
                    (local.get $l23))
                  (loop $L258
                    (block $B259
                      (br_if $B259
                        (i32.and
                          (i32.load8_u
                            (local.get $p0))
                          (i32.const 32)))
                      (drop
                        (call $__fwritex
                          (i32.add
                            (local.get $l5)
                            (i32.const 96))
                          (i32.const 256)
                          (local.get $p0))))
                    (br_if $L258
                      (i32.gt_u
                        (local.tee $l19
                          (i32.add
                            (local.get $l19)
                            (i32.const -256)))
                        (i32.const 255)))))
                (br_if $B255
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (i32.add
                      (local.get $l5)
                      (i32.const 96))
                    (local.get $l19)
                    (local.get $p0))))
              (block $B260
                (br_if $B260
                  (i32.and
                    (i32.load8_u
                      (local.get $p0))
                    (i32.const 32)))
                (drop
                  (call $__fwritex
                    (local.get $l18)
                    (local.get $l22)
                    (local.get $p0))))
              (br_if $L4
                (i32.ne
                  (local.get $l26)
                  (i32.const 8192)))
              (br_if $L4
                (i32.le_s
                  (local.get $l24)
                  (local.get $l20)))
              (block $B261
                (br_if $B261
                  (i32.eqz
                    (local.tee $l20
                      (select
                        (local.tee $l18
                          (i32.sub
                            (local.get $l17)
                            (local.get $l20)))
                        (i32.const 256)
                        (local.tee $l19
                          (i32.lt_u
                            (local.get $l18)
                            (i32.const 256)))))))
                (memory.fill
                  (i32.add
                    (local.get $l5)
                    (i32.const 96))
                  (i32.const 32)
                  (local.get $l20)))
              (block $B262
                (br_if $B262
                  (local.get $l19))
                (loop $L263
                  (block $B264
                    (br_if $B264
                      (i32.and
                        (i32.load8_u
                          (local.get $p0))
                        (i32.const 32)))
                    (drop
                      (call $__fwritex
                        (i32.add
                          (local.get $l5)
                          (i32.const 96))
                        (i32.const 256)
                        (local.get $p0))))
                  (br_if $L263
                    (i32.gt_u
                      (local.tee $l18
                        (i32.add
                          (local.get $l18)
                          (i32.const -256)))
                      (i32.const 255)))))
              (br_if $L4
                (i32.and
                  (i32.load8_u
                    (local.get $p0))
                  (i32.const 32)))
              (drop
                (call $__fwritex
                  (i32.add
                    (local.get $l5)
                    (i32.const 96))
                  (local.get $l18)
                  (local.get $p0)))
              (br $L4))))
        (i32.store offset=4152
          (i32.const 0)
          (i32.const 61)))
      (local.set $l16
        (i32.const -1)))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l5)
        (i32.const 864)))
    (local.get $l16))
  (func $pop_arg (type $t16) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (block $B10
                          (block $B11
                            (block $B12
                              (block $B13
                                (block $B14
                                  (block $B15
                                    (block $B16
                                      (block $B17
                                        (block $B18
                                          (br_table $B1 $B18 $B17 $B14 $B16 $B15 $B13 $B12 $B11 $B10 $B9 $B8 $B7 $B6 $B5 $B4 $B3 $B2 $B0
                                            (i32.add
                                              (local.get $p1)
                                              (i32.const -9))))
                                        (i32.store
                                          (local.get $p2)
                                          (i32.add
                                            (local.tee $p1
                                              (i32.load
                                                (local.get $p2)))
                                            (i32.const 4)))
                                        (i64.store
                                          (local.get $p0)
                                          (i64.load32_s
                                            (local.get $p1)))
                                        (return))
                                      (i32.store
                                        (local.get $p2)
                                        (i32.add
                                          (local.tee $p1
                                            (i32.load
                                              (local.get $p2)))
                                          (i32.const 4)))
                                      (i64.store
                                        (local.get $p0)
                                        (i64.load32_u
                                          (local.get $p1)))
                                      (return))
                                    (i32.store
                                      (local.get $p2)
                                      (i32.add
                                        (local.tee $p1
                                          (i32.load
                                            (local.get $p2)))
                                        (i32.const 4)))
                                    (i64.store
                                      (local.get $p0)
                                      (i64.load32_s
                                        (local.get $p1)))
                                    (return))
                                  (i32.store
                                    (local.get $p2)
                                    (i32.add
                                      (local.tee $p1
                                        (i32.load
                                          (local.get $p2)))
                                      (i32.const 4)))
                                  (i64.store
                                    (local.get $p0)
                                    (i64.load32_u
                                      (local.get $p1)))
                                  (return))
                                (i32.store
                                  (local.get $p2)
                                  (i32.add
                                    (local.tee $p1
                                      (i32.and
                                        (i32.add
                                          (i32.load
                                            (local.get $p2))
                                          (i32.const 7))
                                        (i32.const -8)))
                                    (i32.const 8)))
                                (i64.store
                                  (local.get $p0)
                                  (i64.load
                                    (local.get $p1)))
                                (return))
                              (i32.store
                                (local.get $p2)
                                (i32.add
                                  (local.tee $p1
                                    (i32.load
                                      (local.get $p2)))
                                  (i32.const 4)))
                              (i64.store
                                (local.get $p0)
                                (i64.load16_s
                                  (local.get $p1)))
                              (return))
                            (i32.store
                              (local.get $p2)
                              (i32.add
                                (local.tee $p1
                                  (i32.load
                                    (local.get $p2)))
                                (i32.const 4)))
                            (i64.store
                              (local.get $p0)
                              (i64.load16_u
                                (local.get $p1)))
                            (return))
                          (i32.store
                            (local.get $p2)
                            (i32.add
                              (local.tee $p1
                                (i32.load
                                  (local.get $p2)))
                              (i32.const 4)))
                          (i64.store
                            (local.get $p0)
                            (i64.load8_s
                              (local.get $p1)))
                          (return))
                        (i32.store
                          (local.get $p2)
                          (i32.add
                            (local.tee $p1
                              (i32.load
                                (local.get $p2)))
                            (i32.const 4)))
                        (i64.store
                          (local.get $p0)
                          (i64.load8_u
                            (local.get $p1)))
                        (return))
                      (i32.store
                        (local.get $p2)
                        (i32.add
                          (local.tee $p1
                            (i32.and
                              (i32.add
                                (i32.load
                                  (local.get $p2))
                                (i32.const 7))
                              (i32.const -8)))
                          (i32.const 8)))
                      (i64.store
                        (local.get $p0)
                        (i64.load
                          (local.get $p1)))
                      (return))
                    (i32.store
                      (local.get $p2)
                      (i32.add
                        (local.tee $p1
                          (i32.load
                            (local.get $p2)))
                        (i32.const 4)))
                    (i64.store
                      (local.get $p0)
                      (i64.load32_u
                        (local.get $p1)))
                    (return))
                  (i32.store
                    (local.get $p2)
                    (i32.add
                      (local.tee $p1
                        (i32.and
                          (i32.add
                            (i32.load
                              (local.get $p2))
                            (i32.const 7))
                          (i32.const -8)))
                      (i32.const 8)))
                  (i64.store
                    (local.get $p0)
                    (i64.load
                      (local.get $p1)))
                  (return))
                (i32.store
                  (local.get $p2)
                  (i32.add
                    (local.tee $p1
                      (i32.and
                        (i32.add
                          (i32.load
                            (local.get $p2))
                          (i32.const 7))
                        (i32.const -8)))
                    (i32.const 8)))
                (i64.store
                  (local.get $p0)
                  (i64.load
                    (local.get $p1)))
                (return))
              (i32.store
                (local.get $p2)
                (i32.add
                  (local.tee $p1
                    (i32.load
                      (local.get $p2)))
                  (i32.const 4)))
              (i64.store
                (local.get $p0)
                (i64.load32_s
                  (local.get $p1)))
              (return))
            (i32.store
              (local.get $p2)
              (i32.add
                (local.tee $p1
                  (i32.load
                    (local.get $p2)))
                (i32.const 4)))
            (i64.store
              (local.get $p0)
              (i64.load32_u
                (local.get $p1)))
            (return))
          (i32.store
            (local.get $p2)
            (i32.add
              (local.tee $p1
                (i32.and
                  (i32.add
                    (i32.load
                      (local.get $p2))
                    (i32.const 7))
                  (i32.const -8)))
              (i32.const 8)))
          (f64.store
            (local.get $p0)
            (f64.load
              (local.get $p1)))
          (return))
        (call $long_double_not_supported)
        (unreachable))
      (i32.store
        (local.get $p2)
        (i32.add
          (local.tee $p1
            (i32.load
              (local.get $p2)))
          (i32.const 4)))
      (i32.store
        (local.get $p0)
        (i32.load
          (local.get $p1)))))
  (func $pad (type $t17) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32)
    (local $l5 i32)
    (global.set $__stack_pointer
      (local.tee $l5
        (i32.sub
          (global.get $__stack_pointer)
          (i32.const 256))))
    (block $B0
      (br_if $B0
        (i32.le_s
          (local.get $p2)
          (local.get $p3)))
      (br_if $B0
        (i32.and
          (local.get $p4)
          (i32.const 73728)))
      (block $B1
        (br_if $B1
          (i32.eqz
            (local.tee $p4
              (select
                (local.tee $p3
                  (i32.sub
                    (local.get $p2)
                    (local.get $p3)))
                (i32.const 256)
                (local.tee $p2
                  (i32.lt_u
                    (local.get $p3)
                    (i32.const 256)))))))
        (memory.fill
          (local.get $l5)
          (local.get $p1)
          (local.get $p4)))
      (block $B2
        (br_if $B2
          (local.get $p2))
        (loop $L3
          (block $B4
            (br_if $B4
              (i32.and
                (i32.load8_u
                  (local.get $p0))
                (i32.const 32)))
            (drop
              (call $__fwritex
                (local.get $l5)
                (i32.const 256)
                (local.get $p0))))
          (br_if $L3
            (i32.gt_u
              (local.tee $p3
                (i32.add
                  (local.get $p3)
                  (i32.const -256)))
              (i32.const 255)))))
      (br_if $B0
        (i32.and
          (i32.load8_u
            (local.get $p0))
          (i32.const 32)))
      (drop
        (call $__fwritex
          (local.get $l5)
          (local.get $p3)
          (local.get $p0))))
    (global.set $__stack_pointer
      (i32.add
        (local.get $l5)
        (i32.const 256))))
  (func $long_double_not_supported (type $t8)
    (drop
      (call $fputs
        (i32.const 1194)
        (i32.const 3536)))
    (call $abort)
    (unreachable))
  (func $memchr (type $t0) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l3 i32) (local $l4 i32) (local $l5 i32)
    (local.set $l3
      (i32.ne
        (local.get $p2)
        (i32.const 0)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (i32.and
                  (local.get $p0)
                  (i32.const 3))))
            (br_if $B3
              (i32.eqz
                (local.get $p2)))
            (block $B4
              (br_if $B4
                (i32.ne
                  (i32.load8_u
                    (local.get $p0))
                  (i32.and
                    (local.get $p1)
                    (i32.const 255))))
              (local.set $l4
                (local.get $p0))
              (local.set $l5
                (local.get $p2))
              (br $B1))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -1)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 1)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -2)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 2)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -3)))
                (i32.const 0)))
            (br_if $B2
              (i32.eqz
                (i32.and
                  (local.tee $l4
                    (i32.add
                      (local.get $p0)
                      (i32.const 3)))
                  (i32.const 3))))
            (br_if $B2
              (i32.eqz
                (local.get $l5)))
            (br_if $B1
              (i32.eq
                (i32.load8_u
                  (local.get $l4))
                (i32.and
                  (local.get $p1)
                  (i32.const 255))))
            (local.set $l4
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (local.set $l3
              (i32.ne
                (local.tee $l5
                  (i32.add
                    (local.get $p2)
                    (i32.const -4)))
                (i32.const 0)))
            (br $B2))
          (local.set $l5
            (local.get $p2))
          (local.set $l4
            (local.get $p0)))
        (br_if $B0
          (i32.eqz
            (local.get $l3)))
        (block $B5
          (br_if $B5
            (i32.eq
              (i32.load8_u
                (local.get $l4))
              (i32.and
                (local.get $p1)
                (i32.const 255))))
          (br_if $B5
            (i32.lt_u
              (local.get $l5)
              (i32.const 4)))
          (local.set $p0
            (i32.mul
              (i32.and
                (local.get $p1)
                (i32.const 255))
              (i32.const 16843009)))
          (loop $L6
            (br_if $B1
              (i32.ne
                (i32.and
                  (i32.or
                    (i32.sub
                      (i32.const 16843008)
                      (local.tee $p2
                        (i32.xor
                          (i32.load
                            (local.get $l4))
                          (local.get $p0))))
                    (local.get $p2))
                  (i32.const -2139062144))
                (i32.const -2139062144)))
            (local.set $l4
              (i32.add
                (local.get $l4)
                (i32.const 4)))
            (br_if $L6
              (i32.gt_u
                (local.tee $l5
                  (i32.add
                    (local.get $l5)
                    (i32.const -4)))
                (i32.const 3)))))
        (br_if $B0
          (i32.eqz
            (local.get $l5))))
      (local.set $p2
        (i32.and
          (local.get $p1)
          (i32.const 255)))
      (loop $L7
        (block $B8
          (br_if $B8
            (i32.ne
              (i32.load8_u
                (local.get $l4))
              (local.get $p2)))
          (return
            (local.get $l4)))
        (local.set $l4
          (i32.add
            (local.get $l4)
            (i32.const 1)))
        (br_if $L7
          (local.tee $l5
            (i32.add
              (local.get $l5)
              (i32.const -1))))))
    (i32.const 0))
  (func $strlen (type $t4) (param $p0 i32) (result i32)
    (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (local.set $l1
      (local.get $p0))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.get $p0)
              (i32.const 3))))
        (block $B2
          (br_if $B2
            (i32.load8_u
              (local.get $p0)))
          (return
            (i32.sub
              (local.get $p0)
              (local.get $p0))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 1)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 2)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B1
          (i32.eqz
            (i32.and
              (local.tee $l1
                (i32.add
                  (local.get $p0)
                  (i32.const 3)))
              (i32.const 3))))
        (br_if $B0
          (i32.eqz
            (i32.load8_u
              (local.get $l1))))
        (br_if $B0
          (i32.and
            (local.tee $l1
              (i32.add
                (local.get $p0)
                (i32.const 4)))
            (i32.const 3))))
      (local.set $l2
        (i32.add
          (local.get $l1)
          (i32.const -4)))
      (local.set $l1
        (i32.add
          (local.get $l1)
          (i32.const -5)))
      (loop $L3
        (local.set $l1
          (i32.add
            (local.get $l1)
            (i32.const 4)))
        (br_if $L3
          (i32.eq
            (i32.and
              (i32.or
                (i32.sub
                  (i32.const 16843008)
                  (local.tee $l3
                    (i32.load
                      (local.tee $l2
                        (i32.add
                          (local.get $l2)
                          (i32.const 4))))))
                (local.get $l3))
              (i32.const -2139062144))
            (i32.const -2139062144))))
      (loop $L4
        (local.set $l1
          (i32.add
            (local.get $l1)
            (i32.const 1)))
        (local.set $l3
          (i32.load8_u
            (local.get $l2)))
        (local.set $l2
          (i32.add
            (local.get $l2)
            (i32.const 1)))
        (br_if $L4
          (local.get $l3))))
    (i32.sub
      (local.get $l1)
      (local.get $p0)))
  (func $strnlen (type $t2) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l2 i32)
    (select
      (i32.sub
        (local.tee $l2
          (call $memchr
            (local.get $p0)
            (i32.const 0)
            (local.get $p1)))
        (local.get $p0))
      (local.get $p1)
      (local.get $l2)))
  (table $T0 4 4 funcref)
  (memory $memory (export "memory") 2)
  (global $__stack_pointer (mut i32) (i32.const 69744))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (global $GOT.data.internal._CLOCK_REALTIME i32 (i32.const 1328))
  (global $GOT.data.internal.errno i32 (i32.const 4152))
  (global $GOT.data.internal.stderr i32 (i32.const 1332))
  (elem $e0 (i32.const 1) func $__stdio_close $__stdio_write $__stdio_seek)
  (data $.rodata (i32.const 1024) "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00inf\00clock_gettime(CLOCK_REALTIME) failed\00NAN\00INF\00.\00(null)\00system_error was thrown in -fno-exceptions mode with error %i and message \22%s\22\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00\00\00\00\00\00\00\00\d0\0d\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\00\00\00\00\19\00\0b\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\0a\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0b\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $.data (i32.const 3536) "\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\00L\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d0\0d\00\00"))
