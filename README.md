# Chanllenge API

This is a API for knowledge demostration.

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.1.0
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      7.0.4.3
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      PostgreSQL
    </td>
  </tr>
</table>

# Configuration

```bash
git clone https://github.com/MatheusFern/api-challenge.git
cd api-challenge

# installation of dependencies
bundle install

# creation of database and tables
# change the database.yml for personal enviroment 
# user: postgres
# host: localhost
# password: your personal postgresql password
rails db:create
rails db:migrate
# seed of database 
rails db:seed

# run the project
rails s
```

### Using Insomnia to test the API
 
I personally recommend using the Insomnia for test the API Endpoints.
Use the file `Insomnia.json` at the root of this project.
