local str1 = "Lua"

-- 문자열을 대문자로 변경
print(string.upper(str1))

-- 문자열을 소문자로 변경
print(string.lower(str1))

-- 문자열 치환
local str2 = "Lua Tutorial"
local newString = string.gsub(str2, "Tutorial", "Language")
print(newString)

-- 문자열 찾기
local str3 = "Tutorial"
print(string.find(str2, str3))

-- 문자열 뒤집기
print(string.reverse(str2))
