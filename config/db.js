import { Sequelize } from "sequelize";

const db = new Sequelize('dborder', 'root', '',{
    host : 'localhost',
    dialect: "mysql"
})

export default db