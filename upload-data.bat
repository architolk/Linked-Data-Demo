@echo off
echo Empty graph
curl.exe -X PUT -T empty-graph.xml http://localhost:8890/sparql-graph-crud?graph-uri=http://dotwebstack.org/doc/demo
cd data
for /R %%y in (*) do (
	echo %%~ny
	curl.exe -X POST -T "%%y" http://localhost:8890/sparql-graph-crud?graph-uri=http://dotwebstack.org/doc/demo
)
pause
