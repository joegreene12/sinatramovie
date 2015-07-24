require 'bundler'
Bundler.require()


def fake_movie(name, release_year, description)
{:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end

get '/' do
  cross_origin
  fake_movie{'lazerCats''2020','Anyone who wants to see cats with lazers. what can get better than that!'}
end
