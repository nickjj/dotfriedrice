-- Screenshot the current mpv viewport to a file.

local function capture_screenshot()
	local window_id = mp.get_property_number("window-id")

	-- Is vo= set to x11?
	if window_id and window_id > 0 then
		-- Let mpv generate the filename and handle sequence numbering, the intent
		-- is to replace this file with the proper contents later on.
		local screenshot = mp.command_native({ "screenshot", "window" })

		-- Replace mpv's screenshot with the x11 window capture from imagemagick's
		-- import tool, this captures the true viewport of mpv with zooming,
		-- scaling and panning accounted for.
		mp.command_native_async({
			name = "subprocess",
			args = {
				"import",
				"-window",
				string.format("%.0f", window_id),
				screenshot.filename,
			},
			capture_stderr = true,
		}, function(success, result, error)
			if success and result.status == 0 then
				mp.osd_message("Screenshot: '" .. screenshot.filename .. "'")
			else
				local error_message = error or (result and result.stderr) or "Unknown error"
				error_message = error_message:gsub("%s+$", "")

				print("Error:\n" .. error_message)
				mp.osd_message("Screenshot failed, check the console (` key) for details, aborting!", 3)
			end
		end)
	else
		-- Use mpv's built-in screenshot tool (works perfect for vo=gpu/gpu-next).
		local screenshot = mp.command_native({ "screenshot", "window" })

		if screenshot and screenshot.filename then
			mp.osd_message("Screenshot: '" .. screenshot.filename .. "'")
		end
	end
end

mp.add_key_binding(nil, "screenshot_viewport", capture_screenshot)
