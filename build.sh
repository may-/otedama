rm -rf bin
mkdir bin
javac -classpath $PWD/src src/Node.java -d bin/
javac -classpath $PWD/src src/Tree.java -d bin/
javac -classpath $PWD/src src/Rule.java -d bin/
javac -classpath $PWD/src src/ReorderJob.java -d bin/
javac -classpath $PWD/src src/MasterLearner.java -d bin/
javac -classpath $PWD/src src/BatchReorder.java -d bin/
javac -classpath $PWD/src src/ConllToTree.java -d bin/
javac -classpath $PWD/lib/parser/stanford-parser.jar:$PWD/lib/parser/stanford-parser-3.5.2-models.jar:$PWD/src/ src/StanfordParserWrapper.java -d bin/
javac -classpath $PWD/lib/parser/stanford-parser.jar:$PWD/lib/parser/stanford-parser-3.5.2-models.jar:$PWD/src/ src/StanfordParserWrapperChinese.java -d bin/
cd bin
jar cf datatypes.jar *.class
jar cfmev zhparser.jar ../src/Manifest.txt StanfordParserWrapperChinese StanfordParserWrapperChinese.class
jar cfmev parser.jar ../src/Manifest.txt StanfordParserWrapper StanfordParserWrapper.class
jar cfmev learner.jar ../src/Manifest.txt MasterLearner MasterLearner.class
jar cfmev reorder.jar ../src/Manifest.txt BatchReorder BatchReorder.class
jar cfmev conll2tree.jar ../src/Manifest.txt ConllToTree ConllToTree.class
cd ..
