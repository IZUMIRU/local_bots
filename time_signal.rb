#!/usr/bin/env ruby

require "slack"

Slack.configure do |config|
  config.token = 'xoxp-15487817223-15487257361-49006720579-73582208dd'
end

text = case Time.now.hour
       when 10 then '10時: 今日も頑張りましょう'
       when 11 then '11時: 午前中もうひと踏ん張り!!'
       when 12 then '12時: ++ ランチタイム ++'
       when 13 then '13時: 午後も頑張りましょう'
       when 14 then '14時'
       when 15 then '15時: ++ おやつの時間 ++'
       when 16 then '16時: 午後も3時間経過、今日の目標の達成具合を確認しよう'
       when 17 then '17時'
       when 18 then '18時: 一日もあと少し、集中しましょう!!'
       end

Slack.chat_postMessage(text: text, channel: '#time_signal', username: '時報bot', icon_emoji: ':clock3:')
