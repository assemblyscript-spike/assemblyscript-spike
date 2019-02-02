(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 0)
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "_f" (func $assembly/index/_f))
 (export "f" (func $assembly/index/f))
 (func $assembly/index/_f (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
  call $assembly/index/_f
  get_local $0
  i32.const 2
  i32.sub
  call $assembly/index/_f
  i32.add
 )
 (func $assembly/index/f (; 1 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $null (; 2 ;) (type $v)
  nop
 )
)
