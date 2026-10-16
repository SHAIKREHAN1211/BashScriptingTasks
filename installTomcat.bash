#!/usr/bin/env bash

if sudo find / -name "catalina.sh" -print -quit 2>/dev/null | grep -q .; then
    echo "Tomcat is already installed."
else
    echo "Tomcat is not installed. Installing..."
   echo "Checking if Java is installed…"
    java -version
  if ( $? -ne 0 ); then 
        echo "Java is not installed. Installing..."
	sudo yum install -y java
	if ( $? -nq 0 ); then 
	    echo "Java installation completed."
	fi
  fi
  cd / || exit 1
  # Install Tomcat under /opt
  sudo mkdir -p /opt
  cd /opt || exit 1
  echo "Downloading Tomcat..."
  if ! sudo curl -fLO https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.61/bin/apache-tomcat-10.1.61.tar.gz; then
  	echo "Tomcat download failed."
        exit 1
  fi
  echo "Extracting Tomcat..."
  if ! sudo tar -xzf apache-tomcat-10.1.61.tar.gz; then
        echo "Tomcat extraction failed."
        exit 1
  fi

  sudo mv apache-tomcat-10.1.61 tomcat
  sudo chmod +x /opt/tomcat/bin/startup.sh
  sudo chmod +x /opt/tomcat/bin/shutdown.sh
  echo "Tomcat installation completed."
fi
