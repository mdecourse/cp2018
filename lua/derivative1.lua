-- Approximates the derivative of a function by obtaining 
-- the forward difference.
-- f: A function of x (e.g. f(x) = x^2).
-- delta: The interval used in the approximation.
approx_derivative = function (f, delta)
  local delta = delta or 1e-4
  return function (x)
           return (f(x + delta) - f(x))/delta
         end
end
