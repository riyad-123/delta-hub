-- Delta Hub GitHub distribution loader.
local mainUrl = "https://raw.githubusercontent.com/riyad-123/delta-hub/main/main.luau"

local compiler = loadstring or load
assert(compiler, "This environment does not support Luau code loading.")

local source = game:HttpGet(mainUrl)
local chunk, compileError = compiler(source)
assert(chunk, compileError)
return chunk()