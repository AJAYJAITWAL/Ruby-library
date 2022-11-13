# Setup the project

1. Need to run bundle

# When run characters list api

2. Then call the api from console
    - first need to create an obeject of this class
    - then call the get_all_characters_list method

    Example: MarvelApi.new.get_all_characters_list

# When run the character api

3. Then call the api from console
    - first need to create an obeject of this class
    - then call the get_character method with character_id

    Example: MarvelApi.new({character_id: 1011334}).get_all_characters_list

# When run the test cases

4. Run the command
    Example: ruby test/tc_marvel_api.rb
