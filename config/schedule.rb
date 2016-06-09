# 平日の10時〜18時に実行
every '0 10-18 * * 1-5' do
  command '~/local_bots/time_signal.rb'
end
