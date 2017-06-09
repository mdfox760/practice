module State

  def states

    states = [
    'Alabama Alaska Arkansas Arizona California Colorado Connecticut
    Delaware Florida Georgia Hawaii Idaho Illinois Indiana Iowa
    Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan
     Minnesota Missouri Montana Nebraska "New York" "New Hampshire"
    "New Mexico" "New Jersey" Nevada "North Carolina" "North Dakota" Ohio
    Oklahoma Oregon Pennsylvania "Rhode Island" "South Carolina"
    "South Dakota" Tennessee Texas Utah Vermont Virginia
    Washington Wisconsin "West Virginia" Wyoming' ]

  end

  def territories

    territories = [ "American Samoa", "Northern Mariana Islands", "Virgin Islands",
                    "Marshall Islands", "Puerto Rico", "Guam" ]
  end

  def states_postal_code

    states_postal_code = {
      'Alaska' => 'AK',
      'Arkansas' => 'AR',
      'Arizona' => 'AZ',
      'Alabama' => 'AL',
      'California' => 'CA',
      'Colorado' => 'CO',
      'Connecticut' => 'CT',
      'Delaware' => 'DE',
      'Florida' => 'FL',
      'Georgia' => 'GA',
      'Guam' => 'GU',
      'Hawaii' => 'HI',
      'Idaho' => 'ID',
      'Illinois' => 'IL',
      'Indiana' => 'ID',
      'Iowa' => 'IA',
      'Kansas' => 'KS',
      'Kentucky' => 'KY',
      'Louisiana' => 'LA',
      'Maine' => 'ME',
      'Maryland' => 'MD',
      'Massachusetts' => 'MA',
      'Marshall Islands' => 'MH',
      'Michigan' => 'MI',
      'Minnesota' => 'MN',
      'Missouri' => 'MO',
      'Mississippi' => 'MS',
      'Montana' => 'MT',
      'Nebraska' => 'NE',
      'New York' => 'NY',
      'Nevada' => 'NV',
      'New Hampshire' => 'NH',
      'New Jersey' => 'NJ',
      'New Mexico' => 'NM',
      'North Carolina' => 'NC',
      'North Dakota' => 'ND',
      'Ohio' => 'OH',
      'Oklahoma' => 'OK',
      'Oregon' => 'OR',
      'Pennsylvania' => 'PA',
      'Puerto Rico' => 'PR',
      'Rhode Island' => 'RI',
      'South Carolina' => 'SC',
      'South Dakota' => 'SD',
      'Tennessee' => 'TN',
      'Texas' => 'TX',
      'Utah' => 'UT',
      'Vermont' => 'VT',
      'Virginia' => 'VA',
      'Virgin Islands' => 'VI',
      'Washington' => 'WA',
      'West Virginia' => 'WV',
      'Wisconsin' => 'WI',
      'Wyoming' => 'WY'
      }
  end

  def state_capitals

    state_capitals = {
      'Alabama' => 'Montgomery',
      'Alaska' => 'Juneau',
      'Arkansas' => 'Little Rock',
      'Arizona' => 'Phoenix',
      'California' => 'Sacramento',
      'Colorado' => 'Denver',
      'Connecticut' => 'Hartford',
      'Delaware' => 'Dover',
      'Florida' => 'Tallahassee',
      'Georgia' => 'Atlanta',
      'Hawaii' => 'Honolulu',
      'Idaho' => 'Boise',
      'Illinois' => 'Springfield',
      'Indiana' => 'Indianapolis',
      'Iowa' => 'Des Moines',
      'Kansas' => 'Topeka',
      'Kentucky' => 'Frankfort',
      'Louisiana' => 'Baton Rouge',
      'Maine' => 'Augusta',
      'Maryland' => 'Annapolis',
      'Massachusetts' => 'Boston',
      'Michigan' => 'Lansing',
      'Minnesota' => 'Saint Paul',
      'Mississippi' => 'Jackson',
      'Missouri' => 'Jefferson City',
      'Montana' => 'Helena',
      'Nebraska' => 'Lincoln',
      'New York' => 'Albany',
      'New Hampshire' => 'Concord',
      'New Mexico' => 'Santa Fe',
      'New Jersey' => 'Trenton',
      'Nevada' => 'Carson City',
      'North Carolina' => 'Raleigh',
      'North Dakota' => 'Bismark',
      'Ohio' => 'Columbus',
      'Oklahoma' => 'Oklahoma City',
      'Oregon' => 'Salem',
      'Pennsylvania' => 'Harrisburg',
      'Rhode Island' => 'Providence',
      'South Carolina' => 'Columbia',
      'South Dakota' => 'Pierre',
      'Tennessee' => 'Nashville',
      'Texas' => 'Austin',
      'Utah' => 'Salt Lake City',
      'Vermont' => 'Montpelier',
      'Virginia' => 'Richmond',
      'Washington' => 'Olympia',
      'Wisconsin' => 'Madison',
      'West Virginia' => 'Charleston',
      'Wyoming' => 'Cheyenne'
      }
  end

  def capital_cities

    capital_cities = {
      'AZ' => 'Phoenix',
      'AK' => 'Juneau',
      'AR' => 'Little Rock',
      'AL' => 'Montgomery',
      'CA' => 'Sacramento',
      'CO' => 'Denver',
      'CT' => 'Hartford',
      'DE' => 'Dover',
      'FL' => 'Tallahassee',
      'GA' => 'Atlanta',
      'GU' => 'Hagatna',
      'HI' => 'Honolulu',
      'ID' => 'Boise',
      'IN' => 'Indianapolis',
      'IL' => 'Springfield',
      'IO' => 'Des Moines',
      'KS' => 'Topeka',
      'KY' => 'Frankfort',
      'LA' => 'Baton Rouge',
      'ME' => 'Augusta',
      'MN' => 'Saint Paul',
      'MI' => 'Lansing',
      'MD' => 'Annapolis',
      'MA' => 'Boston',
      'MH' => 'Majuro',
      'MT' => 'Helena',
      'MO' => 'Jefferson City',
      'MS' => 'Jackson',
      'NH' => 'Concord',
      'NC' => 'Raleigh',
      'ND' => 'Bismark',
      'NJ' => 'Trenton',
      'NV' => 'Carson City',
      'NY' => 'Albany',
      'OH' => 'Columbus',
      'OK' => 'Oklahoma City',
      'OR' => 'Salem',
      'PA' => 'Harrisburg',
      'PR' => 'San Juan',
      'RI' => 'Providence',
      'SC' => 'Columbia',
      'SD' => 'Pierre',
      'TN' => 'Nashville',
      'TX' => 'Austin',
      'UT' => 'Salt Lake City',
      'VI' => 'Charlotte Amalie',
      'VT' => 'Montpelier',
      'VA' => 'Richmond',
      'WI' => 'Madison',
      'WY' => 'Cheyenne',
      'WA' => 'Olympia',
      'WV' => 'Charleston'
       }
  end

end