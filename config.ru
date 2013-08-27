use Rack::Static,
  :urls => ['/stylesheets', '/images', '/js', '/downloads'],
  :root => 'site'

run lambda { |env|
  file = "site/#{env['PATH_INFO']}.html"
  file = 'site/index.html' unless File.exists? file

  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open(file, File::RDONLY)
  ]
}
