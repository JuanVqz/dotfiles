" Custom iTox Theme

" Normal mode
let s:N1 = ['#ffffff', '#65737d', 23,  250, 'bold']
let s:N2 = ['#9e9e9e', '#2d4755', 247, 240, 'none']
let s:N3 = ['#9e9e9e', '#2d4755', 247, 240]

" Insert mode
let s:I1 = ['#ffffff', '#9ac696', 16,  4, 'bold']
let s:I2 = ['#9e9e9e', '#2d4755', 247,  240]
let s:I3 = ['#9e9e9e', '#2d4755', 247, 240]

" Visual mode
let s:V1 = ['#ffffff', '#ea606a', 232, 9, 'bold']

" Replace mode
let s:RE = ['#ffffff', '#fc1780', 231, 160, 'bold']

" Ale Error Colors
let s:EC = ['#e60000', '#f63418', 231, 160]

" Ale Warning Colors
let s:WC = ['#ff4600', '#66290d', 231, 1]

let g:airline#themes#itox#palette = {}

let g:airline#themes#itox#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#itox#palette.normal.airline_error = s:EC
let g:airline#themes#itox#palette.normal.airline_warning = s:WC

let g:airline#themes#itox#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#itox#palette.insert.airline_error = s:EC
let g:airline#themes#itox#palette.insert.airline_warning = s:WC

let g:airline#themes#itox#palette.insert_replace = {'airline_a': [ s:RE[0], s:I1[1], s:RE[1], s:I1[3], '']}
let g:airline#themes#itox#palette.insert_replace.airline_error = s:EC
let g:airline#themes#itox#palette.insert_replace.airline_warning = s:WC

let g:airline#themes#itox#palette.visual = {'airline_a': [ s:V1[0], s:V1[1], s:V1[2], s:V1[3], '']}
let g:airline#themes#itox#palette.visual.airline_error = s:EC
let g:airline#themes#itox#palette.visual.airline_warning = s:WC

let g:airline#themes#itox#palette.replace = copy(airline#themes#itox#palette.normal)
let g:airline#themes#itox#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '']
let g:airline#themes#itox#palette.replace.airline_error = s:EC
let g:airline#themes#itox#palette.replace.airline_warning = s:WC

let s:IA = ['#555555', '#222222', s:N2[2], s:N3[3], '']
let g:airline#themes#itox#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Remove bold text from line numbers
call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')

" Remove the hideous red color on the readonly indicator
"call airline#parts#define_accent('readonly', 'none')

" Prevent filetype from ever truncating
let g:airline_section_x = '%{&filetype}'

" Remove file format
let g:airline_section_y = ''

" Remove cursor percentage position
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr', g:airline_symbols.space.':%3v'])

" Using Ale for warnings and errors
" TESTING: I don't think I need this anymore
" let g:airline_section_warning = ''
" let g:airline_section_error = ''
" let g:airline_section_warning = airline#section#create(['ale_warning_count'])
" let g:airline_section_error = airline#section#create(['ale_error_count'])
