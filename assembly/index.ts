// The entry file of your WebAssembly module.
declare namespace window {
  export function alert(v: i32): void;
}

export function _f(x: i32): i32 {
  if (x === 1 || x === 2) {
    return 1;
  }
  return _f(x - 1) + _f(x - 2)
}

export function f(x: i32): void {
  // 直接调用 JS 模块
  // window.alert(_f(x));
}
