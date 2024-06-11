const { solutionHandler } = require("./handler");

const routes = [
    {
        // mengambil data solusi
        method: 'POST',
        path: '/solution',
        handler: solutionHandler
    }
];

module.exports = routes;