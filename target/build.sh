#/bin/bash

mkdir -p junit/4.12
cd junit/4.12
wget http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar
cd .. ..
mkdir -p org/hamcrest/hamcrest-core/1.3
cd org/hamcrest/hamcrest-core/1.3
wget http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar
cd .. .. .. ..
mkdir check
mkdir -p target/classes
mkdir -p target/test-classes
cd src
javac -d ../target/classes MyStack.java
javac -d ../target/classes MyStackDemo.java
javac -d ../target/test-classes -cp ../org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:../junit/4.12/junit-4.12.jar:../target/classes MyStackTest.java
cd ..
cd target/test-classes
java -cp  ../../org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:../../junit/4.12/junit-4.12.jar:../classes:. org.junit.runner.JUnitCore MyStackTest
