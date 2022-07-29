const Sequelize = require('sequelize');


const sequelize  = new Sequelize({
  dialect: 'mssql',
  database: 'connectech_db',
  server: process.env.DB_HOST,
  port: process.env.DB_PORT,
  username: process.env.DB_USER,
  password: process.env.DB_PASS,
  logging: true,
  dialectOptions: {
    authentication: {
      type: 'default',
    },
    options: {
      encrypt: true,
    }
  }
})


module.exports = sequelize