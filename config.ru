use Rack::Static, 
  :urls => ["/css", "/images", "/contact.html", "/about.html", "/info.html", "/tasteprofile.html"]

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