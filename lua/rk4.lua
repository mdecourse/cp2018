-- 'classical' 4th-order Runge-Kutta, or 'RK4'
runge_kutta = function (f, timestep)
  local timestep = timestep or 0.1
  return function (start_x, start_y, time)
           local x = start_x
           local y = start_y
           local t = time
           -- loop until i >= t
           for i = 0, t, timestep do
             local k1 = f(x, y)
             local k2 = f(x + (timestep/2), y + (timestep/2)*k1)
             local k3 = f(x + (timestep/2), y + (timestep/2)*k2)
             local k4 = f(x + timestep, y + timestep*k3)
             y = y + (timestep/6)*(k1 + 2*k2 + 2*k3 + k4)
             x = x + timestep
           end
           return y
         end
end
