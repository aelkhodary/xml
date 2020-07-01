#!/bin/bash
#To run this batch file:
#Start a terminal window
#cd labs/code_ex
#./code_07_39_n.sh
#In Firefox, double click the generated file: code_07_38_n.html
#Exporting classpath
export CLASSPATH=/home/oracle/Oracle/Middleware/oracle_common/modules/oracle.xdk_11.1.0/xmlparserv2.jar
#Classpth imported
java oracle.xml.parser.v2.oraxsl code_07_38.xml code_07_38.xsl code_07_38.html
