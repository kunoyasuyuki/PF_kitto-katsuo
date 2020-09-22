class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'IT系' },
    { id: 3, name: 'スポーツ系' },
    { id: 4, name: '医療系' },
    { id: 5, name: '公務員系' },
    { id: 6, name: '民間企業全般' },
    { id: 7, name: '自然系' },
  ]
end
