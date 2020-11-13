require('util')

function quickbar_select(event)
    local player = game.players[event.player_index]

    local qbar = util.split(event.input_name, "%-")
    local page = (player.get_active_quick_bar_page(3) * 10) - 10 + tonumber(qbar[2])
    local item = player.get_quick_bar_slot(page)

    player.clean_cursor()
    local inventory = player.get_main_inventory()
    if inventory then
        local stack = inventory.find_item_stack(item.name)
        if stack then
            stack.swap_stack(player.cursor_stack)
        end
    end
end

script.on_event("quickbar3-1", quickbar_select)
script.on_event("quickbar3-2", quickbar_select)
script.on_event("quickbar3-3", quickbar_select)
script.on_event("quickbar3-4", quickbar_select)
script.on_event("quickbar3-5", quickbar_select)
script.on_event("quickbar3-6", quickbar_select)
script.on_event("quickbar3-7", quickbar_select)
script.on_event("quickbar3-8", quickbar_select)
script.on_event("quickbar3-9", quickbar_select)
script.on_event("quickbar3-10", quickbar_select)