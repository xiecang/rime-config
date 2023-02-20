-- select_character_processor: 以词定字
-- 详见 `lua/select_character.lua`

-- 需要以词定字插件打开第5行注释
select_character_processor = require("select_character")

-- date_translator: 将 `date` 翻译为当前日期
 -- 详见 `lua/date.lua`:
date_translator = require("date")

-- --- 过滤器：单字在先
-- function single_char_first_filter(input)
--     local l = {}
--     for cand in input:iter() do
--         if (utf8.len(cand.text) == 1) then
--             yield(cand)
--         else
--             table.insert(l, cand)
--         end
--     end
--     for cand in ipairs(l) do
--         yield(cand)
--     end
-- end
