ls -1 *.json | sed 's/.json$//' | while read col; do
mongoimport --db name_db --collection $col --file $col.json
echo $cmd
done
