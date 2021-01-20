--Mort anti-simp
local discordia = require('discordia')
local client = discordia.Client{
  cacheAllMembers = true
}
client:run("Bot <INSERT TOKEN HERE>")
--I don't even know why I made this bot, but enjoy I guess
local filter = {"lamp", "l a m p", "mott", "more-t", "m0rt", "m 0 r t", "m.ör.t", "m o r t", "mort", "t r o m", "trom", "mørt", "bot"}

function isFiltered(message)
  for i,v in pairs(filter) do
    if string.find(message, v) then
      return true
    end
  end
  return false
end

client:on('messageCreate', function(message)
	if isFiltered(message.content) then
    if message.author.id ~= "97122523086340096" and message.author.id ~= "512790820940677169" and message.author.id ~= "700548695430791199" then
      message:delete()
    end
	end
  if message.content:sub(1,9) == "!message " then
    if message.author.id == "97122523086340096" or message.author.id == "512790820940677169" then
      message.channel:send(message.content:sub(10))
      message:delete()
    end
  end
end)
