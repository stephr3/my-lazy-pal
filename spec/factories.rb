FactoryGirl.define do
  factory(:user) do
    username('steph')
    password('1111')
  end

  factory(:show) do
    name('Stranger Things')
    description('80s kids and monsters')
    media_type('TV')
    category('Sci Fi')
  end

  factory(:binge) do
    start('2016-09-21 11:15:00')
    finish('2016-09-21 14:15:00')
    user
    show
  end
end
