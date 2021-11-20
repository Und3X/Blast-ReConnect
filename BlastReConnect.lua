script_name("Blast ReConnect") 
script_author("Und3X")
script_version("0.1.0")
script_moonloader(20)
script_url("github.com/Und3X/HouseFinder")
script_dependencies("SAMPFUNCS, SAMP")

-- Load libraries
require "moonloader"

-- Global variables
local DEFAULT_TIMEOUT = 15          -- Timeout connection in seconds (for samp-rp)
local CMD = "rec"                   -- Command for run reconnect

function main()
    if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(100) end
    sampAddChatMessage(" Blast ReConnect {FFFFFF} Использование: {ffd700}Shift+0{ffffff} быстрый реконнект. {ffd700}/"..CMD.." {00ff00}N{ffffff} через {00ff00}N{ffffff} сек.",0xffd700)

    -- Register commands
    sampRegisterChatCommand(CMD, cmd_reconnect)

    while true do
        wait(0)
        if isKeyDown(VK_SHIFT) and isKeyJustPressed(VK_0) and not sampIsChatInputActive() then
            reconnect(DEFAULT_TIMEOUT)
        end
    end
end

-- Commands
function cmd_reconnect(param)
    local timeout = string.match(param, "(%d+)")
    if timeout ~= nil then
        reconnect(timeout)
    else
        reconnect(DEFAULT_TIMEOUT)
    end
end

-- Procedures
function reconnect(timeout)
    lua_thread.create(function()
        sampAddChatMessage(" Blast ReConnect {ffffff}- Перезаходим...",0xffd700)
        sampSetGamestate(5)
        sampDisconnectWithReason(1)
        wait(timeout*1000)
        sampSetGamestate(1)
    end)
end