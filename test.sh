cp lib/ICSharpCode.NRefactory.dll .
cp lib/Mono.Cecil.dll .

xbuild

cobra -test \
-color \
-lib:lib \
-lib:bin/Debug \
-reference:ICSharpCode.NRefactory.dll \
-reference:Mono.Cecil.dll \
*.cobra \
TypeSystem/*.cobra \
CobraSyntax/Tokens/*.cobra \
CobraSyntax/SyntaxTree/*.cobra \
CobraSyntax/Parser/*.cobra \
CobraSyntax/SyntaxTree/Expressions/*.cobra \
CobraSyntax/SyntaxTree/Statements/*.cobra \
CobraSyntax/SyntaxTree/Statements/Declarations/*.cobra \
CobraSyntax/SyntaxTree/Statements/Declarations/Members/*.cobra \
TestData/TestData.cobra

rm test-*
rm ICSharpCode.NRefactory.dll
rm Mono.Cecil.dll
