# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tbl_states = TblState.create([{ long_name: 'Alaska', short_name: 'AK' }, { long_name: 'Alabama', short_name: 'AL' }, { long_name: 'Arkansas', short_name: 'AR' }, { long_name: 'American Samoa', short_name: 'AS' }, { long_name: 'Arizona', short_name: 'AZ' }, { long_name: 'California', short_name: 'CA' }, { long_name: 'Colorado', short_name: 'CO' }, { long_name: 'Connecticut', short_name: 'CT' }, { long_name: 'District of Columbia', short_name: 'DC' }, { long_name: 'Delaware', short_name: 'DE' }, { long_name: 'Florida', short_name: 'FL' }, { long_name: 'Federated States of Micronesia', short_name: 'FM' }, { long_name: 'Georgia', short_name: 'GA' }, { long_name: 'Guam', short_name: 'GU' }, { long_name: 'Hawaii', short_name: 'HI' }, { long_name: 'Iowa', short_name: 'IA' }, { long_name: 'Idaho', short_name: 'ID' }, { long_name: 'Illinois', short_name: 'IL' }, { long_name: 'Indiana', short_name: 'IN' }, { long_name: 'Kansas', short_name: 'KS' }, { long_name: 'Kentucky', short_name: 'KY' }, { long_name: 'Louisiana', short_name: 'LA' }, { long_name: 'Massachusetts', short_name: 'MA' }, { long_name: 'Maryland', short_name: 'MD' }, { long_name: 'Maine', short_name: 'ME' }, { long_name: 'Marshall Islands', short_name: 'MH' }, { long_name: 'Michigan', short_name: 'MI' }, { long_name: 'Minnesota', short_name: 'MN' }, { long_name: 'Missouri', short_name: 'MO' }, { long_name: 'Northern Mariana Islands', short_name: 'MP' }, { long_name: 'Mississippi', short_name: 'MS' }, { long_name: 'Montana', short_name: 'MT' }, { long_name: 'North Carolina', short_name: 'NC' }, { long_name: 'North Dakota', short_name: 'ND' }, { long_name: 'Nebraska', short_name: 'NE' }, { long_name: 'New Hampshire', short_name: 'NH' }, { long_name: 'New Jersey', short_name: 'NJ' }, { long_name: 'New Mexico', short_name: 'NM' }, { long_name: 'New York', short_name: 'NY' }, { long_name: 'Nevada', short_name: 'NV' }, { long_name: 'Ohio', short_name: 'OH' }, { long_name: 'Oklahoma', short_name: 'OK' }, { long_name: 'Oregon', short_name: 'OR' }, { long_name: 'Pennsylvania', short_name: 'PA' }, { long_name: 'Puerto Rico', short_name: 'PR' }, { long_name: 'Palau', short_name: 'PW' }, { long_name: 'Rhode Island', short_name: 'RI' }, { long_name: 'South Carolina', short_name: 'SC' }, { long_name: 'South Dakota', short_name: 'SD' }, { long_name: 'Tennessee', short_name: 'TN' }, { long_name: 'Texas', short_name: 'TX' }, { long_name: 'Utah', short_name: 'UT' }, { long_name: 'Virginia', short_name: 'VA' }, { long_name: 'Virgin Islands', short_name: 'VI' }, { long_name: 'Vermont', short_name: 'VT' }, { long_name: 'Washington', short_name: 'WA' }, { long_name: 'Wisconsin', short_name: 'WI' }, { long_name: 'West Virginia', short_name: 'WV' }, { long_name: 'Wyoming', short_name: 'WY' }])

tbl_contact_info_types = TblContactInfoType.create([{ name: 'Phone' }, { name: 'Mobile Phone' }, { name: 'Home Phone' }, { name: 'Work Phone' }, { name: 'Company Phone' }, { name: 'Office Phone' }, { name: 'Desk Phone' }, { name: 'Fax' }, { name: 'Email' }, { name: 'Home Email' }, { name: 'Personal Email' }, { name: 'Work Email' }, { name: 'Company Email' }, { name: 'Office Email' }])