-- // Ensure is Da Hood (put in autoexec)
if (game.PlaceId ~= 2788229376) then
    return
end

-- // Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- // Vars
local MainEvent = ReplicatedStorage.MainEvent

-- // Configuration
local Flags = {
    "CHECKER_1",
    "TeleportDetect",
    "OneMoreTime"
}

-- // namecall hook
local namecall
namecall = hookmetamethod(game, "namecall", function(...)
    -- // Vars
    local args = {...}
    if #args < 3 then return namecall(...) end
    local self, method, flag = args[1], getnamecallmethod(), args[2]

    -- // See if the game is trying to alert the server
    if method == "FireServer" and self == MainEvent then
        for _, v in ipairs(Flags) do
            if flag == v then
                return
            end
        end
    end

    -- // Anti Crash
    if not checkcaller() and getfenv(2).crash then
        -- // Set the crash function (hooking can cause stutters)
        local fenv = getfenv(2)
        fenv.crash = function() end
        setfenv(2, fenv)
    end

    -- //
    return namecall(...)
end)

-- // newindex hook (stops game from setting ws/jp)
local newindex
newindex = hookmetamethod(game, "newindex", function(t, k, v)
    -- // Make sure it's trying to set our humanoid's ws/jp
    if not checkcaller() and t:IsA("Humanoid") and (k == "WalkSpeed" or k == "JumpPower") then
        -- // Disallow the set
        return
    end

    -- //
    return newindex(t, k, v)
end)
