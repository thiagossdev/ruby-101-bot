configure :production do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///postgres/oneohone_bot_production')

  set :database, {
    adapter:  'postgresql',
    host:     db.host,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  }
end

configure :test do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'oneohone_bot_test',
    pool: 5,
    host: 'db',
    username: 'postgres',
    password: ENV['DB_PASSWORD']
  }
end

configure :development do
  set :database, {
    adapter: 'postgresql',
    encoding: 'utf8',
    database: 'oneohone_bot_development',
    pool: 5,
    host: 'db',
    username: 'postgres',
    password: ENV['DB_PASSWORD']
  }
end
