(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00m\00e\00m\00m\00o\00v\00e\00.\00t\00s")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $memmove/dest (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $memmove/memmove (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  set_local $4
  get_local $0
  get_local $1
  i32.eq
  if
   get_local $4
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|0
     get_local $0
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       get_local $4
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
      get_local $0
      tee_local $5
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $5
      get_local $3
      i32.load8_u
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $0
      get_local $1
      i64.load
      i64.store
      get_local $2
      i32.const 8
      i32.sub
      set_local $2
      get_local $0
      i32.const 8
      i32.add
      set_local $0
      get_local $1
      i32.const 8
      i32.add
      set_local $1
      br $continue|1
     end
    end
   end
   loop $continue|2
    get_local $2
    if
     get_local $0
     tee_local $5
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $5
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|2
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|3
     get_local $0
     get_local $2
     i32.add
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       get_local $4
       return
      end
      get_local $0
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $0
      get_local $2
      i32.const 8
      i32.sub
      tee_local $2
      i32.add
      get_local $1
      get_local $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    get_local $2
    if
     get_local $0
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
     i32.add
     get_local $1
     get_local $2
     i32.add
     i32.load8_u
     i32.store8
     br $continue|5
    end
   end
  end
  get_local $4
 )
 (func $start (; 2 ;) (type $v)
  i32.const 8
  i64.const 1229782938247303441
  i64.store
  i32.const 16
  i64.const 2459565876494606882
  i64.store
  i32.const 24
  i64.const 3689348814741910323
  i64.store
  i32.const 32
  i64.const 4919131752989213764
  i64.store
  i32.const 9
  i32.const 24
  i32.const 4
  call $memmove/memmove
  set_global $memmove/dest
  get_global $memmove/dest
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 55
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i64.load
  i64.const 1229783084848853777
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i32.const 8
  i32.const 32
  call $memmove/memmove
  set_global $memmove/dest
  get_global $memmove/dest
  i32.const 8
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 59
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  i64.load
  i64.const 1229783084848853777
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 60
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 16
  i64.load
  i64.const 2459565876494606882
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 61
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 24
  i64.load
  i64.const 3689348814741910323
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 32
  i64.load
  i64.const 4919131752989213764
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 63
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 13
  i32.const 36
  i32.const 3
  call $memmove/memmove
  set_global $memmove/dest
  i32.const 8
  i64.load
  i64.const 4919131679688438545
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 16
  i32.const 24
  i32.const 15
  call $memmove/memmove
  set_global $memmove/dest
  i32.const 8
  i64.load
  i64.const 4919131679688438545
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 16
  i64.load
  i64.const 3689348814741910323
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 24
  i64.load
  i64.const 3694152654344438852
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 71
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 32
  i64.load
  i64.const 4919131752989213764
  i64.ne
  if
   i32.const 0
   i32.const 8
   i32.const 72
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (type $v)
  nop
 )
)
