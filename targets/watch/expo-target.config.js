/** @type {import('@bacons/apple-targets/app.plugin').ConfigFunction} */
module.exports = (config) => ({
  type: "watch",
  icon: "https://github.com/expo.png",
  colors: { $accent: "darkcyan" },
  deploymentTarget: "9.4",
  entitlements: {
    "com.apple.security.application-groups":
      config.ios.entitlements["com.apple.security.application-groups"],
  },
  name: "Water Tracker",
  appleTeamId: "T2A8YY9YDW",
});
