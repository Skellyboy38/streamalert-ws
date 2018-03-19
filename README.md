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
### How to view parsed data sources (PM1.1) ###

Request a HTTP GET to any of the following:
`/StreamAlert/MarfcatInput`
`/StreamAlert/MarfcatOuput`
`/StreamAlert/NeuralNetwork`
`/StreamAlert/WsdlParser`
`/StreamAlert/LeDevoir`

### How to use XML SOAP Service (PM1.2) ###

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

### How to use Stream Alert (PM1.3) ###

##### Deployment instructions #####

https://www.streamalert.io/getting-started.html

Outputs can be found in our `#streamalert` channel @ `soen487-w18-team01.slack.com`

###### What are schemas?
Also known as logs, schemas define structures which are used to analyze records.
Define schemas in `conf/logs.json`

###### How to define a rule:
Create a .py file under `rules/community/{rule_folder}/`

###### How to define a test:
Create a .json file under `tests/integration/rules/{rule_folder}/`

###### How to push tests, schemas, rules to AWS?
Depending on the function we want to push updates to, use: 
`python manage.py lambda deploy --processor {function}`

where `{function}` can be `rule` or `alert`

###### How to test a rule:
`python manage.py live-test --cluster prod --rules send_xml_to_slack`
`python manage.py lambda test --processor rule --test-rules send_nn_to_slack --debug`

###### How is our SOAP XML service sending data to Slack
When sending a POST request for any of the supported types, an upload of resource is done to our Amazon Web Service S3 bucket.

### How to run RESTful Web Services (PM2.1 and 2.2) ###

##### CustomerDB #####

1. Run PM2CustomerDB REStful Web Service
2. Run PM2CustomerDB Client
3. Navigate to `http://localhost:8080/PM2CustomerDBClient/pm2.html`
4. Test Customer Table, Discount and FindByState

##### Temperature #####

1. Run PM2Temperature Project
2. Navigate to `http://localhost:8080/PM2Temperature/pm2_2_c.html`
3. Test GET and PUT actions

### Testing StreamAlert for alerts, Facebook, Github, etc.(PM2.3) ###
All output can be found the our repository's Slack Channel

##### GET on GitHub user feeds #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/feeds` with Basic Authentication headers for GitHub.

##### PUT and POST on /alert #####
Using Postman or cURL, send a HTTP POST or PUT request to `http://localhost:8000/StreamAlert/alert` with a Content-Type header of type `application/json` or `application/xml`.

JSON:
```
{
  "title": "string",
  "message: "string"
}
```

XML:
```
<alert>
  <title></title>
  <message></message>
</alert>
```

##### GET /pull/github/repo/issue #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/pull/github/{username}/{repository}/{issue-id}`

URI Path:
```
username: string
repository: string
issue-id: integer
```

##### GET /pull/facebook/account #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/pull/facebook/{account-id}` with a valid Facebook Graph API `access_token` header.

To find your account-id and access token, visit: https://developers.facebook.com/tools/explorer/

URI Path:
```
account-id: integer
```

##### GET latest team feed: splints #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/splints`.

##### GET latest team feed: wscgen #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/wscgen`.

##### GET feed from from https://www.facebook.com/cciff.ca #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/cciff` with a valid Facebook Graph API `access_token` header.

##### GET feed from from https://www.facebook.com/canadachinaarttech #####
Using Postman or cURL, send a HTTP GET request to `http://localhost:8000/StreamAlert/canadaChinaArtTech` with a valid Facebook Graph API `access_token` header.


### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Serguei
* Other community or team contact