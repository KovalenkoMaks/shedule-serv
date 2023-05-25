const express = require("express");
const Pool = require('../../../src/db/db')

const trainsRouter = express.Router();
trainsRouter.get("/", async (req, res, next) => {
    const { departureValue, arrivalValue, day } = req.query;

    try {
        const result = await Pool.query(`SELECT * FROM trips WHERE departure = ? AND arrival = ?;`, [departureValue, arrivalValue]);
        if (result[0] && result[0].length > 0 && day) {
            const train = result[0].filter((e) => {
                const array = e.day.split(',').map(Number);
                return array.includes(Number(day));
            });
            res.json(train);
        } else {
            res.json(result[0]);
        }
    } catch (error) {
        next(error);
    }
});

module.exports = trainsRouter;