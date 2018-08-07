class apache {

       package { 'apache2' :
       ensure => present
}

      file { '/var/www/html/index.html':
      ensure  => file,
      content => '<html>
  <head>
  <title>Hello  World</title>
  </head>
  <body>
  <h1>Hello
  World!</h1>
  </body>
</html>
  ',
}

    service { apache2 :
    ensure => running,
    subscribe => File["/var/www/html/index.html"],
}
}
