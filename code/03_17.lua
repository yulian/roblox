local str1 = "Lua"
local str2 = "Programming"

-- 문자열 형식을 %s로 출력
print(string.format("%s %s", str1, str2))


-- 문자열 포맷으로 날짜 출력
local date = 1
local month = 12
local year = 2022
print(string.format("%02d/%02d/%04d", date, month, year))

-- 문자열 포맷으로 소수점 출력
print(string.format("%.4f", 1/3))
