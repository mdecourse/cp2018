a = 10;
b = 3;
sum = a + b;
-- .. 用來連接字串與變數
--[[
使用多行的註解之用
--]]
print("Sum = " .. sum );

vecA = {x=2.0, y=-1.0, z=0.0};
vecB = {x=-4.0, y=0.0, z=-2.0};	
vecSum = vecB;
vecSum.x = vecA.x + vecB.x;
vecSum.y = vecA.y + vecB.y;
vecSum.z = vecA.z + vecB.z;
print(vecSum.x);
-- Array creation.
myArray = {}; 

-- Array initialization.
myArray[0] = 10.0;
myArray[1] = 20.0;
myArray[3] = "Hello";
vecA = {x=-4.0, y=0.0, z=-2.0};	
myArray[4] = vecA;

function add( a, b)
	local sum = a + b;
	print( "Sum = " .. sum );
end

add(12, 45);
add(548.02, 14587.2298);
add(-1, 1);

local sum = add(12, 45);
sum = add(548.02, 14587.2298);
sum = add(-1, 1);

function createVec(_x, _y, _z)
	local out = {x = _x, y = _y, z = _z};
	return(out);
end

function addVec( u, v )
	local out = {x=0.0, y=0.0, z=0.0};
	out.x = u.x + v.x;
	out.y = u.y + v.y;
	out.z = u.z + v.z;
	return(out);
end

function printVec( v )
	print( "vector: <" .. v.x .. ", " .. v.y .. "," .. v.z .. ">" );
end

local vecA = createVec(0.22, 0.45, -0.66);
local vecB = createVec(-012, 0.55, 0.59);
local vecSum = addVec(vecA, vecB);
printVec( vecSum );

--
-- Solving of the quadratic equation: ax^2 + bx + c =0
--

text = "";
a = 2.0;
b = 1.0;
c = -2.0;

print( "\nEquation " .. a .. "x^2 + " .. b .. "x + " .. c .. " = 0\n" );

-- 1)  Determinant calculus
--
delta = b*b - (4 * a * c );

-- 2)  Solutions depending on the determinant
--
if( delta<0 ) then
	text = "There is no real solution."
elseif( delta == 0 ) then
	x = -b / (2 * a);
	text = "There is one real solution: x=" .. x;
else
	x1 = (-b + math.sqrt(delta)) / (2*a);
	x2 = (-b - math.sqrt(delta)) / (2*a);
	text = "There are two real solutions: x1=" .. x1 .. "et x2=" .. x2;
end

print( text );

sum = 0;
loop_counter = 0;
limit_sup = 100;
while( loop_counter<limit_sup ) do
	sum = sum + loop_counter;
	loop_counter = loop_counter + 1;
	print( "Intermediate sum = " .. sum );
end

print( "The sum of the " .. limit_sup .. " first integers is: " .. sum );

for j=0,10 do
	for i=0,10 do
		print( "j=" .. j .. " i=" .. i );
	end
end

-- 1) creation and initilisation of a table
--
myArray = {};
MAX_SIZE = 10;
i = 0;
while( i<MAX_SIZE ) do
	myArray[i] = math.random(200);
	print( "myArray[" .. i .. "]=" .. myArray[i] );
	i = i + 1;
end

-- 2) sorting the array with the bubbleSort algorithm
--
num_swaps = 0;
i = 0;
while( i<MAX_SIZE ) do 
	j = i+1;
	while( j<MAX_SIZE ) do 
		if( myArray[j] > myArray[i] ) then
			tmp = myArray[j];
			myArray[j] = myArray[i];
			myArray[i] = tmp;
			num_swaps = num_swaps + 1;
		end
		j = j + 1;
	end
	i = i + 1;
end

-- 3) display of the sorted array
--
print( "And here is the sorted array:" );
i = 0;
while( i<MAX_SIZE ) do
	print( "myArray[" .. i .. "]=" .. myArray[i] );
	i = i + 1;
end

print( "\nthere has been " .. num_swaps .. " swaps to sort this array" );
