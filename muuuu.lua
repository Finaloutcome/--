local function FC(url)
    if type(url) ~= "string" or #url < 10 then
        warn("\n错误：")
        warn("")
        return
    end
    local SC, CT = pcall(function()
        return game:HttpGet(url, true)
    end)
    if SC then
        print("\n获取成功成功 字符数："..#CT)
        print("_")
        print(CT)
        print("-")
    else
        warn("\n获取失败 因为："..tostring(CT))
    end
end

FC((...))