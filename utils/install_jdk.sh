#!/bin/sh

echo "\tINSTALLING JDK..."
echo "\tNote: Must have jdk tarball in the current directory"

tar -xvf jdk*
sudo mkdir -p /usr/lib/jvm
sudo mv ./jdk-9.0.4 /usr/lib/jvm/

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-9.0.4/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-9.0.4/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk-9.0.4/bin/javaws" 1

sudo chmod a+x /usr/bin/java
sudo chmod a+x /usr/bin/javac
sudo chmod a+x /usr/bin/javaws