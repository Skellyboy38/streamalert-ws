# README #

## General structure ##

* `doc` is for documentation, report, etc. Create a dir for your team there, e.g., `teamX`, and initialize the report document there.

## Templates ##

* `doc/report/project-report.tex` is the most documented example template in LaTeX, single column, more readable. To be able to compile LaTeX report, install and configure [MiKTeX](http://miktex.org) first (LaTeX backend compiler and styles and packages), then [TeXnicCenter](http://texniccenter.org) (GUI front-end to MikTeX, it will find MikTeX installation when installed after MikTeX). Open `project-report.tcp` project file for TeXnicCenter and compile it using F7 3 times; F5 to preview the PDF.

### What is this repository for? ###

* Quick summary
* Version
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### How do I get set up? ###

##### Summary of set up #####

Docker
Apache Tomcat
nginx

##### Configuration #####

1. Install docker ce
2. Install docker compose
3. Change directory into soen487-w18-team01
4. Run:
```
docker-compose up
```
5. Export StreamAlert.war file:
[StreamAlert](https://i.imgur.com/g4Ni3Wc.png)

##### Dependencies #####
##### Database configuration #####
##### How to run tests #####
##### How to view parsed data sources (PM1.1) #####

Request a HTTP GET to any of the following:
`/StreamAlert/MarfcatInput`
`/StreamAlert/MarfcatOuput`
`/StreamAlert/NeuralNetwork`
`/StreamAlert/WsdlParser`
`/StreamAlert/LeDevoir`

##### How to use XML SOAP Service (PM1.2) #####

Request a HTTP POST to `/StreamAlert/XmlService` with the following SOAP message

```
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
	<soapenv:Body>
		<theRequest>
			<type>neural-network</type>
			<uri></uri>
		</theRequest>
	</soapenv:Body>
</soapenv:Envelope>
```
The following types are supported:

1. marfcat-input
2. marfcat-output
3. le-devoir
4. neural-network
5. wsdl

##### Deployment instructions #####

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Serguei
* Other community or team contact