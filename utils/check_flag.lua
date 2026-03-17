-- vibe-coded bizhawk lua script to inspect events
-- usage:
--     loadEvents("/path/to/constants/event_constants.asm")
--     checkFlag("EVENT_SOMETHING_HAPPENED")
--     setFlag("EVENT_SOMETHING_HAPPENED")
--     clearFlag("EVENT_SOMETHING_HAPPENED")
--     dumpFlags("/path/to/where_output_is_saved.txt")

local FLAGS = {}
local FLAGS_ORDERED = {}
local wEventFlags = 0x1a30 -- 0xDA30

function loadEvents(path)
  FLAGS = {}
  FLAGS_ORDERED = {}
  local f = io.open(path, "r")
  if not f then console.log("Could not open: " .. path); return end
  local i = 0
  for line in f:lines() do
    local name = line:match("^%s*const%s+(EVENT_%S+)")
    if name then
      FLAGS[name] = i
      table.insert(FLAGS_ORDERED, name)
      i = i + 1
    end
  end
  f:close()
  console.log(string.format("Loaded %d events", i))
end

function checkFlag(key)
  local x = type(key) == "number" and key or FLAGS[key]
  if x == nil then console.log("Unknown flag: " .. tostring(key)); return nil end
  local byteIndex = math.floor(x / 8)       -- x >> 3
  local bitIndex  = x % 8                   -- x & 7
  local byte      = memory.read_u8(wEventFlags + byteIndex, "WRAM")
  return (byte & (1 << bitIndex)) ~= 0
end

function setFlag(key)
  local x = type(key) == "number" and key or FLAGS[key]
  if x == nil then console.log("Unknown flag: " .. tostring(key)); return end
  local addr = wEventFlags + math.floor(x / 8)
  local byte = memory.read_u8(addr, "WRAM")
  memory.write_u8(addr, byte | (1 << (x % 8)), "WRAM")
end

function clearFlag(key)
  local x = type(key) == "number" and key or FLAGS[key]
  if x == nil then console.log("Unknown flag: " .. tostring(key)); return end
  local addr = wEventFlags + math.floor(x / 8)
  local byte = memory.read_u8(addr, "WRAM")
  memory.write_u8(addr, byte & ~(1 << (x % 8)), "WRAM")
end

function dumpFlags(path)
  if #FLAGS_ORDERED == 0 then console.log("No events loaded"); return end
  local out = path and io.open(path, "w") or nil
  local function emit(s)
    if out then out:write(s .. "\n") else console.log(s) end
  end
  local set, unset = 0, 0
  for _, name in ipairs(FLAGS_ORDERED) do
    if checkFlag(name) then
      emit("[XXX] " .. name); set = set + 1
    else
      emit("[   ] " .. name); unset = unset + 1
    end
  end
  emit(string.format("%d set, %d unset", set, unset))
  if out then out:close(); console.log("Dumped to " .. path) end
end