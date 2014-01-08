if exists("b:current_syntax")
    finish
endif
let b:current_syntax = "potion"

syntax keyword potionKeyword loop times to while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return
syntax keyword potionFunction print join string

syntax match potionNumber	"-\=\<\d\+\>"
syntax match potionNumber	"\<0x\x\{1,8}\>"
syntax match potionFloat	"\(-\=\<\d+\|-\=\)\.\d\+\>"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator

highlight link potionNumber Number
highlight link potionNumber Float
highlight link potionString String

