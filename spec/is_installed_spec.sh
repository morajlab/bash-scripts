Describe 'Test "is_installed.sh" module'
  is_installed() {
    ./source/is_installed.sh $*
  }

  It 'Test "bash" is installed'
    When call is_installed "bash"
    The status should be success
  End

  It 'Test "asdgdfg" is not installed'
    When call is_installed "asdgdfg"
    The status should not be success
  End
End
