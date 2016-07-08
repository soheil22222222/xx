do

local function run(msg, matches)
  if matches[1] == "send" then
    local folder = matches[2]
    local file = matches[3]
    local mod = matches[4]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "send"..folder, ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^(send)(.*)$"
  },
  run = run
}
end
