Describe "Test 'is_installed' module"
  Include ./is_installed.sh

  It "Test 'bash' is installed"
    alias is_installed_test="result=$(is_installed bash) & echo \$result"
    When call eval is_installed_test
    The output should eq 0
  End

  It "Test 'hjksdfjsdhf' is not installed"
    alias is_installed_test="result=$(is_installed hjksdfjsdhf) & echo \$result"
    When call eval is_installed_test
    The output should not eq 0
  End
End
