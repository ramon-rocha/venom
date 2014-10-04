cp lib/ICSharpCode.NRefactory.dll .
cp lib/Mono.Cecil.dll .

cobra -test \
-lib:lib \
-lib:bin/Debug \
-reference:ICSharpCode.NRefactory.dll \
-reference:Mono.Cecil.dll \
*.cobra \
TypeSystem/*.cobra \
CobraSyntax/*.cobra \
CobraSyntax/Parser/*.cobra \
CobraSyntax/Tokens/*.cobra \
CobraSyntax/Comments/*.cobra \
CobraSyntax/Expressions/*.cobra \
CobraSyntax/Statements/*.cobra \
CobraSyntax/Statements/DeclarationStatements/*.cobra \
CobraSyntax/Statements/ExpressionStatements/*.cobra \
TestData/TestData.cobra

rm test-*
rm ICSharpCode.NRefactory.dll
rm Mono.Cecil.dll
