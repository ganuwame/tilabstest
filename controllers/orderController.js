import Order from "../models/orderModel.js";

export const getAllOrder = async (req, res) => {
    try {
        const orders = await Order.findAll()
        res.json(orders)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getOrderById = async (req, res) => {
    try {
        const orders = await Order.findAll({
            where: {
                id: req.params.id
            }
        });
        res.json(orders[0]);
    } catch (error) {
        res.json({ message: error.message });
    }  
}

export const createOrder = async (req, res) => {
    try {
        await Order.create(req.body);
        res.json({ "message" : "order created" })
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const cancelOrder = async (req, res) => {
    try {
        await Order.update(req.body,{
            where: {
                id: req.params.id
            }
        });
        res.json({ "message" : "order cancelled" })
    } catch (error) {
        res.json({ message: error.message })
    }
}