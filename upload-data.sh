#!/bin/bash
echo Empty graph
curl -X PUT -T empty-graph.xml http://localhost:8890/sparql-graph-crud?graph-uri=http://dotwebstack.org/doc/demo
cd data
shopt -s nullglob
for FILE in *.*
do
	echo "$FILE"
 	curl -X POST -T "$FILE" "http://localhost:8890/sparql-graph-crud?graph-uri=http://dotwebstack.org/doc/demo"
done
