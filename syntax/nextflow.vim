if exists("b:current_syntax")
  finish
endif

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

" include groovy syntax
source $VIMRUNTIME/syntax/groovy.vim

syn region  nextflowBlockString          start=+"""+ keepend end=+"""+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell
syn region  nextflowBlockString          start=+'''+ keepend end=+'''+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell

syn match nextflowELExpr "\!{.\{-}}" contained


" Nextflow specifics 

syn region nextflowProcessBlock start="{" end="}" contained contains=nextflowProcess
syn keyword nextflowProcess process skipwhite skipnl skipempty nextgroup=nextflowProcessBlock
syn keyword nextflowProcess workflow skipwhite skipnl skipempty nextgroup=nextflowProcessBlock

" process directives
syn keyword nextflowProcessDirective accelerator afterScript beforeScript cache conda container containerOptions
syn keyword nextflowProcessDirective cpus clusterOptions disk echo errorStrategy executor ext label
syn keyword nextflowProcessDirective machineType maxErrors maxForks maxRetries memory module penv pod publishDir
syn keyword nextflowProcessDirective queue scratch storeDir stageInMode stageOutMode tag time validExitStatus

syn match nextflowBlock "\v(input|output|script|shell|exec|when|stub):"

" Channel factory methods
syn keyword nextflowChannelFactory create of from value fromList fromPath fromFilePairs fromSRA watchPath empty
syn keyword nextflowChannelFactory bind subscribe onNext onComplete onError

" nextflow Operators
syn keyword nextflowOperator filter unique distinct first randomSample take last until
syn keyword nextflowOperator map flatMap reduce groupBy groupTuple buffer collate collect flatten toList toSortedList transpose
syn keyword nextflowOperator splitCsv splitFasta splitFastq splitText
syn keyword nextflowOperator join merge mix phase cross collectFile combine concat spread
syn keyword nextflowOperator branch choice multiMap into tap separate
syn keyword nextflowOperator count countBy min max sum toInteger
syn keyword nextflowOperator dump set ifEmpty print println view close

syn keyword nextflowDLS2Module include

syn keyword nextflowType Channel channel each env file path process stdin tuple val

syn keyword nextflowSpecial params launchDir

syn keyword nextflowConstant   null

" TODO include string methods

" Apply highlighting
let b:current_syntax = "nextflow"

hi def link nextflowELExpr            	Identifier
hi def link groovyELExpr              	Identifier

hi def link nextflowConstant          	Constant
hi def link nextflowProcessDirective    Statement
hi def link nextflowChannelFactory	Operator
hi def link nextflowOperator          	Operator
hi def link nextflowType              	Type
hi def link nextflowSpecial           	Special
hi def link nextflowProcess           	Function
hi def link nextflowBlock             	Function
hi def link nextflowDLS2Module		PreProc

hi def link nextflowBlockString       String

