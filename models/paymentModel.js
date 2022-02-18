import { Sequelize } from "sequelize";
import db from "../config/db.js";

const { DataTypes } = Sequelize;

const Payment = db.define( 'tbl_payment',{
    trx_code:{
        type: DataTypes.STRING
    },
    amount:{
        type: DataTypes.DOUBLE
    },
    status:{
        type: DataTypes.STRING
    }
},{
    freezeTableName: true
})

export default Payment;