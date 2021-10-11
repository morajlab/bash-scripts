Describe "Test 'is_installed' module"
  It "Test 'bash' is installed"
    alias bash_is_installed="./is_installed.sh bash"
    When call eval bash_is_installed
    The status should be success
  End

  It "Test 'hjksdfjsdhf' is not installed"
    alias hjksdfjsdhf_is_not_installed="./is_installed.sh hjksdfjsdhf"
    When call eval hjksdfjsdhf_is_not_installed
    The status should not be success
  End
End
