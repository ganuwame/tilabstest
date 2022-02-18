import { Sequelize } from "sequelize";
import db from "../config/db.js";

const { DataTypes } = Sequelize;

const Order = db.define( 'tbl_order',{
    trx_code:{
        type: DataTypes.STRING
    },
    amount:{
        type: DataTypes.DOUBLE
    },
    status:{
        type: DataTypes.STRING
    },
    createBy:{
        type: DataTypes.STRING
    }
},{
    freezeTableName: true
})

export default Order;