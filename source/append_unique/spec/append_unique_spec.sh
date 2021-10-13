Describe "Test 'append_unique' module"
  STR_EXIST_ROOT=$(pwd)/../../str_exist

  Include ./append_unique.sh

  It "Create a new file and append data to it"
    append_unique_test() {
      temp_file_path=/tmp/$(uuidgen)
      text="This text is for test"

      append_unique "$text" "$temp_file_path" && \
      cat "$temp_file_path" && \
      rm "$temp_file_path"
    }

    When call append_unique_test
    The status should be success
    The output should eq "$text"
  End

  It "Execute same command twice"
    append_unique_test() {
      temp_file_path=$(mktemp)
      text="This text is for test"

      append_unique "$text" "$temp_file_path" && \
      append_unique "$text" "$temp_file_path" && \
      cat "$temp_file_path" && \
      rm "$temp_file_path"
    }

    When call append_unique_test
    The status should be success
    The output should eq "$text"
  End
End
