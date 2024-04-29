let commonLib = {
    toPlain: function (dataCont) {
        if (dataCont) {
            return JSON.parse(JSON.stringify(dataCont));
        }
        return dataCont;
    },
    generateBalls_backup: function (color, count, volume) {
        const balls = [];
        for (let i = 0; i < count; i++) {
            balls.push({ color, volume, id: i + 1 /* Temporary - replace with real IDs */ });
        }
        return balls;
    },
    generateBalls: function (inputdata, balls) {
        const ballsSt = [];
        balls.forEach((value, index) => {
            let noBaall = inputdata[index];
            let color = value.color;
            let volume = value.volume
            for (let i = 0; i < noBaall; i++) {
                ballsSt.push({ color, volume, id: i + 1 });
            }
        })
        return ballsSt;
    }

}

module.exports = commonLib;