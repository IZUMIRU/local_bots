# 毎日8時〜20時に実行
every '0 8-20 * * 1-7' do
  command '~/local_bots/time_signal.rb'
end
