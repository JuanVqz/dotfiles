lua << EOF
require('indent_blankline').setup {
  char = '┊',
  filetype_exclude = {'help', 'ruby'}
}
EOF
