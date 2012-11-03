#Define your routes using just a string
Vinyl.when_route '/test-one', :with_method => 'GET', :get_access_level => 1, :if_pass => ['authorized_user']

#Feel free to use regular expressions
Vinyl.when_route /^\/([a-z]*)\/([a-z]*)/, :with_method => 'GET', :get_access_level => 1, :if_pass => ['guess_a_number']

#Wildcards are also welcome
Vinyl.when_route '/*', :with_method => 'GET', :get_access_level => 1, :if_pass => []#Only runs global validators