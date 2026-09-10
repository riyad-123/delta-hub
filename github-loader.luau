-- Delta Hub GitHub distribution loader.
local protectedUrl = "https://raw.githubusercontent.com/riyad-123/delta-hub/main/protected.luau"

local compiler = loadstring or load
assert(compiler, "This environment does not support Luau code loading.")

local source = game:HttpGet(protectedUrl)
local chunk, compileError = compiler(source)
assert(chunk, compileError)
return chunk()