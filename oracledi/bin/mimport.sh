#!/bin/sh
if [ "$1" = "-help" ] || [ "$1" =  "--help" ] || [ "$1" =  "-h" ]; then
    echo
    echo "(c) Copyright Oracle.  All rights reserved."
    echo
    echo "PRODUCT"
    echo "  Oracle Data Integrator"
    echo
    echo "FILENAME"
    echo "  mimport.sh"
    echo
    echo "DESCRIPTION"
    echo "  Starts the Master Repository Import wizard."
    echo
    echo "SYNTAX"
    echo "  . mimport.sh"
    echo
else
    if [ "$ODI_HOME" = "" ]; then
        ODI_HOME=..
        export ODI_HOME
    fi
    . $ODI_HOME/bin/odiparams.sh

    echo "OracleDI: Starting Master Repository Import wizard ..."
    $ODI_JAVA_START  oracle.odi.MImport
fi
