class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '教育' },
    { id: 3, name: 'スポーツ' }
  ]
end
