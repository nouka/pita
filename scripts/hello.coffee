module.exports = (robot) => {
    robot.respond(/.*(おはよう|お早う|good morning).*/, (msg) => {
        msg.send('おはようございます。');
    });
}
