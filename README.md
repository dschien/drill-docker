# Run
`docker run -it -p 8047:8047 -v `pwd`:/data dschien/drill`

# Operation
## set default fs for local operation
`use dfs;`
## show files
`show files;`

## run queries
Assumign there is a file `data.json`
`select temp from `data/data.json` limit 3;`

`select distinct temp from `data/data.json` order by temp;`

# Web UI
[http://192.168.99.100:8047/query]


## select workspace
inspect workspaces in storage settings (default root)

`use dfs.root`



`select distinct temp from dfs.root.`/data/data.json` order by temp;`