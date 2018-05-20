
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

print(fib_dp(n: 94))
