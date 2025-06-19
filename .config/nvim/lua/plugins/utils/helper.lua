local M = {}

function M.test_print()
	print("test")
end

function M.debounce(ms, fn)
	local timer = vim.loop.new_timer()
	return function(...)
		local args = { ... }
		timer:stop()
		timer:start(ms, 0, function()
			timer:stop()
			vim.schedule_wrap(fn)(unpack(args))
		end)
	end
end

function M.readInServers(path)
	local readInServers = {}
	local files = vim.fn.globpath(vim.fn.stdpath("config") .. path, "*.lua", false, true)
	-- vim.notify("Found " .. #files .. " files")
	for _, file in ipairs(files) do
		local server_name = vim.fn.fnamemodify(file, ":t:r")
		local config = require("plugins.lsp." .. server_name)
		readInServers[server_name] = config
		--	vim.notify(vim.inspect(file))
	end
	-- vim.notify("Servers Table: " .. vim.inspect(readInServers))
	return readInServers
end
return M
