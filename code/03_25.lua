-- 테이블초기화
local mytable = {}
print(mytable)

-- 테이블자료구조에값할당
mytable[1] = "Lua"
mytable["Hello"] = "World"
print(mytable[1])
print(mytable["Hello"])

-- 테이블참조제거
mytable = nil
print(mytable)
