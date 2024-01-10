# # Конструируем хеш для хранения вместимости номеров, взяв в качестве
# # ключа тип номера
# capacity_by_style = {}
# rooms = Room.all
# for room in rooms
#     total_count = capacity_by_style[room.style]
#     capacity_by_style[room.style] = total_count.to_i + room.capacity
# end
# puts total_count