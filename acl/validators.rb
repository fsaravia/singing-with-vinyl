ALLOWED_USERS=[
  'John',
  'Frank',
  'Alice'
]

Vinyl.add_validator 'authorized_user', lambda{
  return false if user.nil?
  return ALLOWED_USERS.include? user
}

Vinyl.add_validator 'guess_a_number', lambda{
  return false if guess.nil?
  return Random.rand(0..1).to_s == guess
}