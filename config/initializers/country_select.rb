CountrySelect::FORMATS[:with_alpha2] = lambda do |country|
  "#{country.iso_short_name} (#{country.alpha2})"
end

CountrySelect::FORMATS[:with_data_attrs] = lambda do |country|
  [
    country.iso_short_name,
    country.alpha2,
    {
      'data-country-code' => country.country_code,
      'data-alpha3' => country.alpha3
    }
  ]
end
