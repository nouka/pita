
module.exports = (robot) ->
  robot.router.get "/test/html", (req, res) ->

    html = """
<!DOCTYPR html>
<html>
<head>
</head>
<body>
<div style="position: fixed; width: 100%; display: flex; justify-content: center; background-color: rgb(249, 249, 249); height: 56px; bottom: 0px; border-top: 1px solid rgb(254, 239, 0); box-shadow: rgba(0, 0, 0, 0.4) 0px -1px 0px 0px; z-index: 1000; text-align: center;">
    <a style="border: 10px none; box-sizing: border-box; display: inline-block; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;游ゴシック Medium&quot;, YuGothic, YuGothicM, &quot;Hiragino Kaku Gothic ProN&quot;, メイリオ, Meiryo, sans-serif; cursor: pointer; text-decoration: none; margin: 0px; padding: 8px 12px 10px; outline: medium none currentcolor; font-size: inherit; font-weight: inherit; position: relative; transition: padding-top 0.3s ease 0s; min-width: 20vw; max-width: 168px; line-height: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;" tabindex="0" href="#/">
        <div>
            <svg width="40.953px" height="33.853px" accentcolor="#F4E629" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: currentcolor; height: 24px; width: 24px; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; -moz-user-select: none;" viewBox="0 0 40.953 33.853">
                <path d="M5.205,0.908v32.037c0,0.498-0.407,0.908-0.907,0.908h-3.39C0.409,33.853,0,33.442,0,32.944V0.908 C0,0.41,0.409,0,0.908,0h3.39C4.798,0,5.205,0.41,5.205,0.908z M40.042,14.325H28.693V0.908C28.693,0.41,28.286,0,27.785,0h-3.389 c-0.5,0-0.908,0.41-0.908,0.908v13.417H11.322c-0.499,0-0.909,0.404-0.909,0.909v3.384c0,0.504,0.41,0.91,0.909,0.91h12.167v13.416 c0,0.498,0.408,0.908,0.908,0.908h3.389c0.501,0,0.908-0.41,0.908-0.908V19.528h11.349c0.5,0,0.911-0.406,0.911-0.91v-3.384 C40.953,14.729,40.542,14.325,40.042,14.325z"></path>
                <rect x="23.488" y="14.325" fill="#F4E629" width="5.206" height="5.204"></rect>
            </svg>
            <div style="font-size: 10px; transition: color 0.3s ease 0s, font-size 0.3s ease 0s; color: rgba(0, 0, 0, 0.54);">ホーム</div>
        </div>
    </a>
    <button style="border: 10px none; box-sizing: border-box; display: inline-block; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;游ゴシック Medium&quot;, YuGothic, YuGothicM, &quot;Hiragino Kaku Gothic ProN&quot;, メイリオ, Meiryo, sans-serif; cursor: pointer; text-decoration: none; margin: 0px; padding: 8px 12px 10px; outline: medium none currentcolor; font-size: inherit; font-weight: inherit; position: relative; transition: padding-top 0.3s ease 0s; min-width: 20vw; max-width: 168px; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;" tabindex="0" type="button">
        <div>
            <div style="position: relative; display: inline-block; padding: 0px;">
                <svg width="30.89px" height="37.726px" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: currentcolor; height: 24px; width: 24px; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; -moz-user-select: none;" viewBox="0 0 30.89 37.726">
                    <path d="M15.445,19.387c-5.345,0-9.693-4.35-9.693-9.694S10.1,0,15.445,0c5.347,0,9.696,4.348,9.696,9.692 S20.792,19.387,15.445,19.387 M15.445,2.904c-3.743,0-6.788,3.047-6.788,6.788c0,3.745,3.045,6.791,6.788,6.791 s6.791-3.046,6.791-6.791C22.236,5.951,19.188,2.904,15.445,2.904 M30.89,37.726c0-8.517-6.929-15.446-15.445-15.446 C6.928,22.279,0,29.209,0,37.726h2.906c0-6.916,5.624-12.541,12.539-12.541c6.917,0,12.542,5.625,12.542,12.541H30.89"></path>
                </svg>
                <span style="display: flex; flex-flow: row wrap; place-content: center; align-items: center; position: absolute; top: -17px; right: -24px; font-weight: 500; font-size: 12px; width: 24px; height: 24px; border-radius: 50%; background-color: rgb(0, 188, 212); color: rgb(255, 255, 255);">82</span>
            </div>
            <div style="font-size: 10px; transition: color 0.3s ease 0s, font-size 0.3s ease 0s; color: rgba(0, 0, 0, 0.54);">マイページ</div>
        </div>
    </button>
    <button style="border: 10px none; box-sizing: border-box; display: inline-block; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;游ゴシック Medium&quot;, YuGothic, YuGothicM, &quot;Hiragino Kaku Gothic ProN&quot;, メイリオ, Meiryo, sans-serif; cursor: pointer; text-decoration: none; margin: 0px; padding: 8px 12px 10px; outline: medium none currentcolor; font-size: inherit; font-weight: inherit; position: relative; transition: padding-top 0.3s ease 0s; min-width: 20vw; max-width: 168px; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;" tabindex="0" type="button">
        <div>
            <svg width="38.075px" height="36.327px" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: currentcolor; height: 24px; width: 24px; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; -moz-user-select: none;" viewBox="0 0 38.075 36.327">
                <path d="M8.039,36.325c-0.254,0-0.509-0.078-0.728-0.237c-0.434-0.313-0.616-0.874-0.45-1.384l3.922-12.073 L0.511,15.169c-0.434-0.316-0.616-0.876-0.449-1.387c0.166-0.51,0.641-0.855,1.179-0.855h12.694l3.927-12.068 C18.027,0.345,18.502,0,19.041,0c0.535,0,1.012,0.345,1.18,0.858l3.922,12.068h12.691c0.537,0,1.014,0.346,1.18,0.855 c0.166,0.511-0.014,1.07-0.449,1.387l-10.268,7.462l3.922,12.073c0.166,0.51-0.014,1.071-0.447,1.384 c-0.434,0.318-1.023,0.318-1.459,0L19.041,28.63L8.771,36.088C8.552,36.247,8.295,36.325,8.039,36.325 M5.057,15.405l7.913,5.751 c0.434,0.317,0.615,0.877,0.451,1.386l-3.02,9.297l7.914-5.745c0.434-0.316,1.02-0.316,1.453,0l7.914,5.744l-3.021-9.296 c-0.168-0.509,0.014-1.068,0.447-1.386l7.91-5.751h-9.775c-0.537,0-1.014-0.348-1.18-0.856l-3.021-9.297l-3.027,9.297 c-0.164,0.509-0.64,0.856-1.179,0.856H5.057z"></path>
            </svg>
            <div style="font-size: 10px; transition: color 0.3s ease 0s, font-size 0.3s ease 0s; color: rgba(0, 0, 0, 0.54);">お気に入り</div>
        </div>
    </button>
    <button style="border: 10px none; box-sizing: border-box; display: inline-block; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;游ゴシック Medium&quot;, YuGothic, YuGothicM, &quot;Hiragino Kaku Gothic ProN&quot;, メイリオ, Meiryo, sans-serif; cursor: pointer; text-decoration: none; margin: 0px; padding: 8px 12px 10px; outline: medium none currentcolor; font-size: inherit; font-weight: inherit; position: relative; transition: padding-top 0.3s ease 0s; min-width: 20vw; max-width: 168px; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;" tabindex="0" type="button">
        <div>
            <svg width="34.815px" height="28.337px" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: currentcolor; height: 24px; width: 24px; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; -moz-user-select: none;" viewBox="0 0 34.815 28.337">
                <path d="M0,0h4.187v3.136H0V0z M0,19.86h4.187v-3.136H0V19.86z M0,11.613h4.187V8.475H0V11.613z M0,28.337h4.187 v-3.136H0V28.337z M7.795,0v3.136h27.021V0H7.795z M7.795,11.613h27.021V8.475H7.795V11.613z M7.795,28.337h27.021v-3.136H7.795 V28.337z M7.795,19.86h27.021v-3.136H7.795V19.86z"></path>
            </svg>
            <div style="font-size: 10px; transition: color 0.3s ease 0s, font-size 0.3s ease 0s; color: rgba(0, 0, 0, 0.54);">カテゴリ</div>
        </div>
    </button>
    <button style="border: 10px none; box-sizing: border-box; display: inline-block; font-family: -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, &quot;游ゴシック Medium&quot;, YuGothic, YuGothicM, &quot;Hiragino Kaku Gothic ProN&quot;, メイリオ, Meiryo, sans-serif; cursor: pointer; text-decoration: none; margin: 0px; padding: 8px 12px 10px; outline: medium none currentcolor; font-size: inherit; font-weight: inherit; position: relative; transition: padding-top 0.3s ease 0s; min-width: 20vw; max-width: 168px; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;" tabindex="0" type="button">
        <div>
            <svg width="30.349px" height="32.569px" style="display: inline-block; color: rgba(0, 0, 0, 0.87); fill: currentcolor; height: 24px; width: 24px; transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; -moz-user-select: none;" viewBox="0 0 30.349 32.569">
                <path d="M30.349,30.131l-7.604-8.745c1.818-2.102,2.915-4.714,3.113-7.536c0.244-3.45-0.875-6.783-3.141-9.393 c-2.638-3.032-6.447-4.65-10.455-4.438c-2.91,0.152-5.605,1.246-7.809,3.158c-2.607,2.269-4.18,5.416-4.422,8.869 c-0.242,3.446,0.873,6.784,3.146,9.393c2.629,3.027,6.439,4.646,10.453,4.435c2.276-0.119,4.425-0.824,6.311-2.042l7.6,8.738 L30.349,30.131z M13.503,23.395c-3.248,0.172-6.326-1.133-8.455-3.583c-1.832-2.108-2.738-4.806-2.541-7.593 c0.195-2.793,1.465-5.336,3.578-7.17c1.777-1.547,3.957-2.428,6.307-2.551c3.242-0.169,6.32,1.136,8.451,3.587 c1.834,2.109,2.742,4.806,2.543,7.593c-0.191,2.79-1.461,5.333-3.574,7.167C18.029,22.39,15.847,23.273,13.503,23.395z"></path>
            </svg>
            <div style="font-size: 10px; transition: color 0.3s ease 0s, font-size 0.3s ease 0s; color: rgba(0, 0, 0, 0.54);">検索</div>
        </div>
    </button>
</div>
</body>
</html>
    """

    res.type 'html'
    res.send html
