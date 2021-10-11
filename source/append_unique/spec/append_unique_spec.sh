Describe "Test 'append_unique' module"
  It "Create a new file and append data to it"
    append_unique() {
      temp_file_path=/tmp/$(uuidgen)
      text="This text is for test"

      ./append_unique.sh "$text" "$temp_file_path" && \
      cat "$temp_file_path" && \
      rm "$temp_file_path"
    }

    When call append_unique
    The status should be success
    The output should eq "$text"
  End

  It "Execute same command twice"
    append_unique() {
      temp_file_path=$(mktemp)
      text="This text is for test"

      ./append_unique.sh "$text" "$temp_file_path" && \
      ./append_unique.sh "$text" "$temp_file_path" && \
      cat "$temp_file_path" && \
      rm "$temp_file_path"
    }

    When call append_unique
    The status should be success
    The output should eq "$text"
  End
End
