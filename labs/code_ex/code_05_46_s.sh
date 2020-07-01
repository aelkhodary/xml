#!/bin/bash
#To run this batch file:
#Start a terminal window
#cd /home/oracle/labs/code_ex
#code_05_46_s.sh
export CLASSPATH=/home/oracle/Oracle/Middleware/oracle_common/modules/oracle.xdk_11.1.0/xmlparserv2.jar
#Classpath exported
java oracle.xml.parser.v2.oraxml -schema code_05_46_test.xml
