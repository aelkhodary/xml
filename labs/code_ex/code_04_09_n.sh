#!/bin/bash
#To run this batch file:
#Start a terminal window
#cd labs/code_ex
#./code_07_09_n.sh
#In Firefox, double click the generated file: code_07_09_n.html
#export classpath
export CLASSPATH=/home/oracle/Oracle/Middleware/oracle_common/modules/oracle.xdk_11.1.0/xmlparserv2.jar
#classpath exported
java oracle.xml.parser.v2.oraxsl code_07_09_s.xml code_07_07_s.xsl code_07_09_n.html