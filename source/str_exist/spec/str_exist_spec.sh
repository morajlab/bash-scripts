Describe "Test 'str_exist' module"
  text="This text is for test"

  It "Test for a non-exist file"
    alias str_exist="./str_exist.sh '$text' 'fsdfsdfkljsdf.fsdf' 2> /dev/null"
    When call eval str_exist
    The status should not be success
  End

  It "Test for a empty file"
    temp_file_path=$(mktemp)

    alias str_exist="./str_exist.sh '$text' '$temp_file_path'"
    When call eval str_exist
    The status should not be success

    rm "$temp_file_path"
  End

  It "Test for a file containing target string"
    temp_file_path=$(mktemp)

    echo "$text" >> "$temp_file_path"
    alias str_exist="./str_exist.sh '$text' '$temp_file_path'"
    When call eval str_exist
    The status should be success

    rm "$temp_file_path"
  End
End
