if not game:IsLoaded() then
    game.Loaded:Wait()
end

local SCRIPT_URL = 'https://raw.githubusercontent.com/businessramie-collab/ArchHub/refs/heads/main/ArcHub%20Enhancements.txt'
    return game:HttpGet(SCRIPT_URL)
end)

if not ok or type(src) ~= 'string' or src == '' then
    warn('[ArchHub Enhancements] failed to download script')
    return
end

local fn, err = loadstring(src)
if not fn then
    warn('[ArchHub Enhancements] loadstring error: ' .. tostring(err))
    return
end

fn()
