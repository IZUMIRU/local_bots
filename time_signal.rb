#!/usr/bin/env ruby

require "rubygems"
require "slack"

Slack.configure do |config|
  config.token = 'xoxp-172951701027-173842403815-352138423553-ac5ca3fe8597e6319e0915b84c1b0389'
end

case Time.now.hour
when 0 then
  message = '9時: おはようございます！今日の目標を明確にしましょう！'
when 1 then
  message = '10時: 午前は捗りますね。その調子です。今日１日101%成長していきましょう！'
when 2 then
  message = '11時: もうそろそろランチタイムです。あと少し頑張りましょう！'
when 3 then
  message = '12時: ランチタイムです。コンビニばかりにならないように！'
when 4 then
  message = '13時: 午後が始まりました。時間が早く流れるので気をつけて下さい！'
when 5 then
  message = '14時: 集中力が切れていませんか？そんな時はチョコとコーヒーです！'
when 6 then
  message = '15時: おやつなんて食べている場合ではありません。働いてください！'
when 7 then
  message = '16時: 午後も3時間経過、今日の目標は達成できていますか？'
when 8 then
  message = '17時: ここから切り替えて、さらにもうワンステップ先にいきましょう！'
when 9 then
  message = '18時: お疲れ様です。業務時間は終了です。今日の振り返りをしましょう。'
end

Slack.chat_postMessage(text: message,
                       channel: '#05zatsudan',
                       username: '時報bot',
                       icon_url: 'https://i.gyazo.com/763d65291a1bef993f7dac57ce7ec643.png'
                      )
