
import Foundation

func fib_dp(n: Int) -> UInt {
  precondition(n < 94, "should be less than 94 as it appears to maxed out the Int64's capacity")
  var f = [UInt](repeating: 0, count: n + 1)
  f[0] = 0
  f[1] = 1
  
  for index in 2 ... n {
    f[index] = (f[index - 1] + f[index - 2])
  }
  return f[n]
}

// It appears we do not need to store all the intermediate value for the entire period of execution.
// Because the recurrence depends on two arguments, we only need to retain the alst two values we have seen earlier.

func fib_dp2(value: Int) -> UInt {
  var back2: UInt = 0 // last two values of f[n]
  var back1: UInt = 1
  var next: UInt
  
  for _ in 2 ..< value {
    next = UInt(back1 + back2)
    back2 = back1
    back1 = next
  }
  return back1 + back2
}

print(fib_dp(n: 93))
print(fib_dp2(value: 93))
