require 'bundler'
Bundler.require()


def fake_movie(name, release_year, description)
{:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end

get '/api/lazerCats' do
  cross_origin
  fake_movie('lazerCats','2020','Anyone who wants to see cats with lazers. what can get better than that!')
end

get '/api/tom_the_runner' do
  cross_origin
  fake_movie('tom_the_runner','2010','Thee tom became one of the most respected runners in the history of sports.')

end

get '/api/half_bacon' do
  cross_origin
  fake_movie('half_bacon', '2121','whoever can eat the most bacon wins the title is just the beginning.')
end
