# Criando gêneros
genre1 = Genre.create(name: 'Action')
genre2 = Genre.create(name: 'Romance')
genre3 = Genre.create(name: 'Science Fiction')

# Criando diretores
director1 = Director.create(name: 'John Doe', nationality: 'American', date_of_birth: '1970-01-01', favorite_genre: genre1.name)
director2 = Director.create(name: 'Jane Smith', nationality: 'British', date_of_birth: '1980-02-02', favorite_genre: genre2.name)

# Criando filmes
Film.create(title: 'Action Movie', release_year: 2020, synopsis: 'An action-packed adventure.', country_of_origin: 'USA', duration: 120, director: director1, genre: genre1)
Film.create(title: 'Romantic Drama', release_year: 2021, synopsis: 'A love story set in the 1950s.', country_of_origin: 'UK', duration: 130, director: director2, genre: genre2)