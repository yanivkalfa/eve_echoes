co = coroutine.create(function()
    error('aaaaaaaaaaaaaaa'..'|'..Region(0,325, 550,500):highlight('whatever', 3))
end)
local status, err = coroutine.resume(co);
print(status)
print(err)
print(coroutine.status(co))