Describe "Test 'str_exist' module"
  text="This text is for test"

  Include ./str_exist.sh

  It "Test for a non-exist file"
    str_exist_test() {
      echo $(str_exist "$text" fsdfsdfkljsdf.fsdf 2> /dev/null)
    }

    When call str_exist_test
    The output should not eq 0
  End

  It "Test for a empty file"
    str_exist_test() {
      temp_file_path=$(mktemp) && \
      echo $(str_exist "$text" $temp_file_path 2> /dev/null)
    }

    When call str_exist_test
    The output should not eq 0

    rm "$temp_file_path"
  End

  It "Test for a file containing target string"
    str_exist_test() {
      temp_file_path=$(mktemp) && \
      echo "$text" >> "$temp_file_path" && \
      echo $(str_exist "$text" $temp_file_path 2> /dev/null)
    }

    When call str_exist_test
    The output should eq 0

    rm "$temp_file_path"
  End
End
