-- Behansa IDE
--
-- Copyright (c) 2024 Tvative
-- All Rights Reserved
--
-- Version v1.0.0

local config_path = os.getenv("BEHANSA_REPOSITORY")
if config_path ~= nil then
    package.path = package.path .. ";" .. config_path .. "/Script/Editor/?.lua"
else
    print("Unable to find Behansa repository path environment variable")
    return
end

local behansa_configuration = os.getenv("BEHANSA_CONFIGURATION")
local behansa_session = os.getenv("BEHANSA_SESSION")

if behansa_configuration == nil then
    print("Unable to find Behansa configuration directory path environment variable")
    return
end

if behansa_session == nil then
    print("Unable to find Behansa session storage directory path environment variable")
    return
end

local flow = require("flow")
flow.Perform()
