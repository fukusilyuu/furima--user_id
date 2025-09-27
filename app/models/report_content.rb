class ReportContent < ActiveHash::Base
  include ActiveHash::Associations
  has_one :report

  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '性的なコンテンツ' },
    { id: 2, name: '攻撃的または差別的' },
    { id: 3, name: 'スパムや誤解を招く内容' },
    { id: 4, name: '有害または危険な商品' },
    { id: 5, name: '詐欺または膨大説明' },
    { id: 6, name: 'その他' },

]
end