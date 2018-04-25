#!/usr/bin/env ruby

require "slack"

Slack.configure do |config|
  config.token = 'xoxp-172951701027-173842403815-352138423553-ac5ca3fe8597e6319e0915b84c1b0389'
end

message = case Time.now.hour
            when  9 then ' 9時: おはようございます！今日の目標を明確にしましょう！'
            when 10 then '10時: 午前は捗りますね。その調子です。今日１日101%成長していきましょう！'
            when 11 then '11時: もうそろそろランチタイムです。あと少し頑張りましょう！'
            when 12 then '12時: ランチタイムです。コンビニばかりにならないように！'
            when 13 then '13時: 午後が始まりました。時間が早く流れるので気をつけて下さい！'
            when 14 then '14時: 集中力が切れていませんか？そんな時はチョコとコーヒーです！'
            when 15 then '15時: おやつなんて食べている場合ではありません。働いてください！'
            when 16 then '16時: 午後も3時間経過、今日の目標は達成できていますか？'
            when 17 then '17時: ここから切り替えて、さらにもうワンステップ先にいきましょう！'
            when 18 then '18時: お疲れ様です。業務時間は終了です。今日の振り返りをしましょう。'
          end

Slack.chat_postMessage(text: message,
                       channel: '#05zatsudan',
                       username: '時報bot',
                       icon_url: 'https://i.gyazo.com/763d65291a1bef993f7dac57ce7ec643.png'
                      )
