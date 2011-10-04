use Rack::Static, 
  :urls => ["/css", "/images", "/info.html", "/contact.html", "/about.html"]

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('index.html', File::RDONLY)
  ]
}