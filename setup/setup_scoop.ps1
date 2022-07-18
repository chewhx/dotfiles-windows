Function existNode {
  $installed = (node -v | Where { $_ }) -ne $null
  If(-Not $installed) {
    return 0
  } else {
    return 1
  }
}

if (existnode) {
  echo "Node exists"
} else {
  echo "false node"
}
