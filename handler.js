// ------------------------
// Bolt App Initialization
// ------------------------
const { App, ExpressReceiver } = require('@slack/bolt');
const expressReceiver = new ExpressReceiver({
  signingSecret: process.env.SLACK_SIGNING_SECRET,
  processBeforeResponse: true,
});
const app = new App({
  token: process.env.SLACK_BOT_TOKEN,
  receiver: expressReceiver,
  processBeforeResponse: true,
});

// ------------------------
// Application Logic
// ------------------------
const Axios = require('axios');
const axios = Axios.create({
  headers: {
    'Content-Type': 'application/json',
    'X-Requested-With': 'XMLHttpRequest',
  },
  responseType: 'json',
  timeout: 1000,
});
const moment = require('moment-timezone');

const postAkashiStamp = async (type) => {
  const baseUrl = 'https://atnd.ak4.jp/api/cooperation/';
  try {
    console.info('api request: ozvision/stamps', { type });
    await axios.post(`${baseUrl}ozvision/stamps`, {
      type: type,
      token: process.env.AKASHI_API_KEY,
    });
  } catch (e) {
    console.error(e);
  }
};

const getTime = () => {
  const m = moment().tz('Asia/Tokyo');
  return `${m.hour()}:${m.minute()}`;
};

app.message(/(おはよ|お早う)/i, async ({ message, say }) => {
  try {
    await postAkashiStamp(11);
    await say(`出勤時間 ${getTime()}`);
  } catch (e) {
    console.error(e);
  }
});

app.message(
  /((お疲れ|おつかれ)(さま|様)|オツカレ)/i,
  async ({ message, say }) => {
    try {
      await postAkashiStamp(12);
      await say(`退勤時間 ${getTime()}`);
    } catch (e) {
      console.error(e);
    }
  }
);

app.message(/(.+)$/i, async ({ message, say }) => {
  const plainMessage = message.text.slice(message.text.search(/> /i) + 2);
  try {
    const response = await axios.post(
      'https://chatbot-api.userlocal.jp/api/chat',
      {
        message: plainMessage,
        key: process.env.UL_API_KEY,
      }
    );
    await say(`${response.data.result}`);
  } catch (e) {
    console.error(e);
  }
});

// ------------------------
// AWS Lambda handler
// ------------------------
const awsServerlessExpress = require('aws-serverless-express');
const server = awsServerlessExpress.createServer(expressReceiver.app);
module.exports.app = (event, context) => {
  awsServerlessExpress.proxy(server, event, context);
};
