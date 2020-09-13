class Price < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1,000' },
    { id: 3, name: '1,500' }
  ]
end
