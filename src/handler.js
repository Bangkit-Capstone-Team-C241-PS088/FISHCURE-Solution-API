require('dotenv').config();

const { request } = require('http');
const { insertQuery, selectAQuery } = require("./db_query");

const solutionHandler = async (request, h) => {
    try {
        const { diseaseName } = request.payload;

        const sql = `SELECT * FROM disease_info WHERE name = '${diseaseName}'`;
        const result = await selectAQuery(sql);

        if (result[0] !== undefined) {
            let disease = result[0];

            // Normalize specific properties
            function normalize(property) {
                let rowData = disease[property];
                rowData = rowData.slice(1, -1);
                rowData = rowData.split("],[");
                rowData = rowData.map(item => item.trim());

                let objectConverted = {};
                rowData.forEach((item, index) => {
                    // if (item.startsWith('[')) { item = item.slice(1); };
                    // if (item.endsWith(']')) { item = item.slice(0, -1); };
                    objectConverted[index + 1] = item;
                });

                disease[property] = objectConverted;
            }

            normalize('gejala');
            normalize('langkah_penanganan');
            normalize('obat');

            const response = h.response({
                status: 'success',
                message: 'Data solusi berhasil didapatkan',
                data: { data: disease }
            });

            response.code(201);
            return response;
        };

        const response = h.response({
            status: 'failed',
            message: 'Penyakit yang anda cari tidak ditemukan'
        });

        response.code(401);
        return response;

    } catch (err) {
        console.log("Error:", err);
        return h.response({ message: "Server error" }).code(500);
    }
};

module.exports = { solutionHandler };