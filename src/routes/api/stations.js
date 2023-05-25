const express = require("express");
const Pool = require('../../../src/db/db');

const stationsRouter = express.Router();

stationsRouter.get("/departure", async (req, res, next) => {
    try {
        const result = await Pool.query('SELECT * FROM departureStations');
        res.json(result[0]);
    } catch (error) {
        next(error);
    }
});

stationsRouter.get("/arrival", async (req, res, next) => {
    try {
        const result = await Pool.query('SELECT * FROM arrivalStations');
        res.json(result[0]);
    } catch (error) {
        next(error);
    }
});

module.exports = stationsRouter;