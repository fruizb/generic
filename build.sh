#!/bin/bash

	echo "···································································································"
	echo "CREACIÓN DE AMBIENTES: WILDFLY - JBOSS - TOMCAT | PROCESO AUTOMATIZADO | FACUNDO RUIZ"
	echo "···································································································"
	echo "···································································································"
	echo "¡BIENVENIDO" $USER"!"
	echo "···································································································"
        echo "INGRESE EL NÓMERO DE VERSIÓN DE JAVA A UTILIZAR:"
        echo "11"
        echo "8"
        echo "···································································································"
        read JDK_VERSION
        if [ $JDK_VERSION = 11 ];
        then
                echo "USTED ELIGIÓ LA VERSION 11 DE JAVA"
                export JDK_VERSION="java-11-openjdk"
        elif [ $JDK_VERSION = "8" ];
        then
                echo "USTED ELIGIÓ LA VERSION 8 DE JAVA"
                export JDK_VERSION="java-1.8.0-openjdk"
        else
                echo "NO SELECCIONÓ OPCIONES CORRECTAS, INTENTE NUEVAMENTE"
        fi
	echo "···································································································"
	echo "INGRESE LA LETRA DEL SERVIDOR DE APLICACIONES A UTILIZAR"
	echo "W - WILDFLY"
	echo "J - JBOSS"
	echo "T - TOMCAT"
	echo "···································································································"
	read SERVER
	if [ $SERVER = "W" ] || [ $SERVER = "w" ]; 
	then
		echo "USTED ELIGIÓ WILDFLY"
		echo "INGRESE EL NÓMERO DE VERSIÓN A UTILIZAR:"
		echo "19"
		echo "20"
		echo "21"
		echo "···································································································"
		read VERSION
		if [ $VERSION = 19 ];
        	then
       	        	echo "USTED ELIGIÓ LA VERSION 19.1.0.Final"
			export URL="https://download.jboss.org/wildfly/19.1.0.Final/wildfly-19.1.0.Final.tar.gz"
			docker-compose build --build-arg URL --build-arg JDK_VERSION wildfly
			echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
			echo "docker-compose up -d wildfly;docker-compose logs -f wildfly"
       	 	elif [ $VERSION = "20" ];
       	 	then
       	        	echo "USTED ELIGIÓ LA VERSION 20.0.1.Final"
			export URL="https://download.jboss.org/wildfly/20.0.1.Final/wildfly-20.0.1.Final.tar.gz"
			docker-compose build --build-arg URL --build-arg JDK_VERSION wildfly
			echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
			echo "docker-compose up -d wildfly;docker-compose logs -f wildfly"
	        elif [ $VERSION = "21" ];
	        then
	                echo "USTED ELIGIÓ LA VERSION 21.0.2.Final"
			export URL="https://download.jboss.org/wildfly/21.0.2.Final/wildfly-21.0.2.Final.tar.gz"
			docker-compose build --build-arg URL --build-arg JDK_VERSION wildfly
			echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
			echo "docker-compose up -d wildfly;docker-compose logs -f wildfly"
	        else
	                echo "NO SELECCIONÓ OPCIONES CORRECTAS, INTENTE NUEVAMENTE"
	        fi
	elif [ $SERVER = "J" ] || [ $SERVER = "j" ];
	then
		echo "USTED ELIGIÓ JBOSS"
		echo "NO TERMINADO"
	elif [ $SERVER = "T" ] || [ $SERVER = "t" ];
	then
		echo "USTED ELIGIÓ TOMCAT"
                echo "INGRESE EL NÚMERO DE VERSIÓN A UTILIZAR:"
                echo "10"
                echo "9"
                echo "8"
                echo "···································································································"
                read VERSION
                if [ $VERSION = 10 ];
                then
			echo "USTED ELIGIÓ LA VERSION 10.0.6"
                        export URL="https://downloads.apache.org/tomcat/tomcat-10/v10.0.6/bin/apache-tomcat-10.0.6.tar.gz"
                        docker-compose build --build-arg URL --build-arg JDK_VERSION tomcat
                        echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
                        echo "docker-compose up -d tomcat;docker-compose logs -f tomcat"
                elif [ $VERSION = "9" ];
                then
			echo "USTED ELIGIÓ LA VERSION 9.0.46"
                        export URL="https://downloads.apache.org/tomcat/tomcat-9/v9.0.46/bin/apache-tomcat-9.0.46.tar.gz"
                        docker-compose build --build-arg URL --build-arg JDK_VERSION tomcat
                        echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
                        echo "docker-compose up -d tomcat;docker-compose logs -f tomcat"
		elif [ $VERSION = "8" ];
                then
                
			echo "USTED ELIGIÓ LA VERSION 8.5.66"
                        export URL="https://downloads.apache.org/tomcat/tomcat-8/v8.5.66/bin/apache-tomcat-8.5.66.tar.gz"
                        docker-compose build --build-arg URL --build-arg JDK_VERSION tomcat
                        echo "A CONTINUACIÓN, EJECUTAR LO SIGUIENTE:"
                        echo "docker-compose up -d tomcat;docker-compose logs -f tomcat"
                else
                        echo "NO SELECCIONÓ OPCIONES CORRECTAS, INTENTE NUEVAMENTE"
                fi
	else
		echo "NO SELECCIONÓ OPCIONES CORRECTAS, INTENTE NUEVAMENTE"
	fi
	echo "···································································································"
