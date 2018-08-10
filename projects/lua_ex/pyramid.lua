--[[ 超過一行以上的註解
程式名稱: pyramid.lua
Lua 為解譯語言, 並且為動態型別, 使用變數之前
可以無需宣告
每一行程式最後, 可以有 ; 符號, 也可以省略
--]]
-- lua 列印漸增與漸減
 
-- printC 用來列印 num 個驚嘆號
-- 函式與迴圈範圍, 利用 end 來加以界定
function printC(num)
  for i=0,num do
    io.write("!")
  end
end
 
-- 金字塔資料列印, 最大數列印為 num
function pyramid(num)
  for i=0,num,1 do
    -- io.write 不會自動跳行
    io.write("第"..(i+1).."行")
    -- 以 i 作為輸入變數, 呼叫 printC 函式
    printC(i)
    io.write("\n")
    -- print 會自動跳行
    -- print("第"..(i+1).."行")
    -- .. 用來連接字串與變數
  end
 
  -- 列印漸減的函式呼叫
  for i=num-1,0,-1 do
    -- write 不會自動跳行
    io.write("第"..(i+1).."行")
    printC(i)
    io.write("\n")
    -- print 會自動跳行
    -- print("第"..(i+1).."行")
  end
end
 
-- 呼叫 pyramid 函式
pyramid(10)