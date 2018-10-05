#!/bin/bash
echo Empty graph
curl -X PUT -T empty-graph.xml http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/demo/stage
cd config
shopt -s nullglob
for FILE in *.ttl
do
	echo "$FILE"
 	curl -X POST -T "$FILE" "http://localhost:8890/sparql-graph-crud?graph-uri=http://localhost:8080/demo/stage"
done
