R:AddToggle({
    Name = "Auto Turn On Race v3",
    Default = false,
    Flag = "Auto Turn On Race v3",
    Save = true,
    Callback = function(Value)
        _G.V3 = Value
    end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.V3 then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
            end
        end)
    end
end)
