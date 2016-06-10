#!/usr/bin/env ruby

require "slack"

Slack.configure do |config|
  config.token = 'xoxp-15487817223-15487257361-49006720579-73582208dd'
end

message = case Time.now.hour
            when  8 then ' 8時: おはようございます！今日も1日がんばりましょう！'
            when  9 then ' 9時: 朝活しましょう！！'
            when 10 then '10時: それではお仕事開始でーす！'
            when 11 then '11時: もうそろそろランチです！あと少し頑張りましょう！'
            when 12 then '12時: ランチタイムです！健康には気を付けましょう！'
            when 13 then '13時: 午後になりました。時間が早く流れるので気をつけて下さい！'
            when 14 then '14時: 集中力がきれてきていませんか？そんな時はチョコとコーヒーです！'
            when 15 then '15時: おやつなんて食べている場合ではありません。働いて下さい笑。'
            when 16 then '16時: 午後も3時間経過、今日の目標の達成具合を確認しましょう。'
            when 17 then '17時: ここから切り替えてさらにもうワンステップ先にいきましょう！'
            when 18 then '18時: PDCAまわせてますか？自分に厳しく！ラストスパートです！！'
            when 19 then '19時: 今日もあと少しで1日がおわります！！納得がいくまでとことん戦いましょう！'
            when 20 then '20時: おつかれさまでした。目標と現状を振り返りましょう！'
          end

Slack.chat_postMessage(text: message,
                       channel: '#time_signal',
                       username: '時報bot',
                       icon_url: 'https://i.gyazo.com/763d65291a1bef993f7dac57ce7ec643.png'
                      )
