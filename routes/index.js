import express from "express";
import { 
    getAllOrder,
    createOrder,
    cancelOrder,
    getOrderById
} from "../controllers/orderController.js";
 
import { 
    createPayment, 
    getAllPaymentList, 
    getPaymentListById 
} from "../controllers/paymentController.js";

const router = express.Router()

router.get('/order', getAllOrder);
router.get('/order/:id', getOrderById);
router.post('/order/', createOrder);
router.patch('/order/:id', cancelOrder);

router.get('/payment', getAllPaymentList);
router.get('/payment/:id', getPaymentListById);
router.post('/payment/', createPayment);

export default router;