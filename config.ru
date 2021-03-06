use Rack::Static,
    :urls => ["/images", "/js", "/css", "/font-awesome-4.2.0", "/fonts"],
    :root => "public"

run lambda { |env|
  [
      200,
      {
          'Content-Type'  => 'text/html',
          'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
  ]
}