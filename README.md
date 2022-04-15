# SQL Server with FTS
SQL server dockerfile with full-text-search installed

Build the container by running 
  
    docker build . -t nstubbe/mssql-fts
    
Start the container by running

    docker run --name mssql -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Password123" -e "MSSQL_AGENT_ENABLED=true" -p 1433:1433 -d nstubbe/mssql-fts
