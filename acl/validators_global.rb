Vinyl.add_global_validator 'consumer_present', lambda{
  return consumer == '1'
}