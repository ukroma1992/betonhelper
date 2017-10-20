require 'telegram/bot'

token = '385545120:AAE-jufdeK8-PZE3W-p_rgrjP2kTzYPESrY'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Здравствуй, #{message.from.first_name}\n
               Вы можете узнать сколько материалов нужно для производства 1 куб.м бетона.\n
               Напишите какую марку бетона вам нужно.\n
               От марки 100 до 400.\n
               Например М100 или 100. ")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "До свидания, #{message.from.first_name}")
    when '100', 'М100'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '100'
               Цемент: 210кг
               Песок:  780кг
               Щебень: 1320кг
               Вода:   120л")
    when '150', 'М150'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '150'
               Цемент: 250кг
               Песок:  765кг
               Щебень: 1270кг
               Вода:   130л")
    when '200', 'М200'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '200'
               Цемент: 310кг
               Песок:  730кг
               Щебень: 1230кг
               Вода:   140л")
    when '250', 'М250'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '250'
               Цемент: 350кг
               Песок:  665кг
               Щебень: 1230кг
               Вода:   150л")
    when '300', 'М300'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '300'
               Цемент: 390кг
               Песок:  630кг
               Щебень: 1210кг
               Вода:   170л")
    when '350', 'М350'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '350'
               Цемент: 430кг
               Песок:  560кг
               Щебень: 1210кг
               Вода:   195л")
    when '400', 'М400'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Бетон марки '400'
               Цемент: 480кг
               Песок:  540кг
               Щебень: 1170кг
               Вода:   210л")
    end
  end
end
