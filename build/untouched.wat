(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "f" (func $assembly/index/f))
 (func $assembly/index/f (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1
  i32.eq
  tee_local $1
  if (result i32)
   get_local $1
  else   
   get_local $0
   i32.const 2
   i32.eq
  end
  if
   i32.const 1
   return
  end
  get_local $0
  i32.const 1
  i32.sub
  call $assembly/index/f
  get_local $0
  i32.const 2
  i32.sub
  call $assembly/index/f
  i32.add
 )
 (func $null (; 1 ;) (type $v)
 )
)
