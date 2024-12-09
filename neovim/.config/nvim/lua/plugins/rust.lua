return {
	{
		"rcarriga/nvim-dap-ui",
		config = function()
			local dapui = require("dapui")
			dapui.setup()
		end,
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
	},
	{
		"mrcjkb/rustaceanvim",
		config = function()
			local config = require("rustaceanvim.config")
			vim.g.rustacean = {
				dap = {
					-- Sorry for the terrible code. Please change the path in
					-- each device.
					adapter = config.get_codelldb_adapter(
						"/usr/bin/code-lldb",
						"/usr/lib/code-lldb/lldb/lib/liblldb.so"
					),
				},
			}
		end,
	},
}
