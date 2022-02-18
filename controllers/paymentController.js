import Payment from "../models/paymentModel.js";

export const getAllPaymentList = async (req, res) => {
    try {
        const payments = await Payment.findAll()
        res.json(payments)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getPaymentListById = async (req, res) => {
    try {
        const payments = await Payment.findAll({
            where: {
                id: req.params.id
            }
        });
        res.json(payments[0]);
    } catch (error) {
        res.json({ message: error.message });
    }  
}

export const createPayment = async (req, res) => {
    try {
        await Payment.create(req.body);
        res.json({ "message" : "payment created" })
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const cancelPayment = async (req, res) => {
    try {
        await Payment.update(req.body,{
            where: {
                id: req.params.id
            }
        });
        res.json({ "message" : "payment cancelled" })
    } catch (error) {
        res.json({ message: error.message })
    }
}