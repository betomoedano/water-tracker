// Reexport the native module. On web, it will be resolved to ExpoWatchConnectivityModule.web.ts
// and on native platforms to ExpoWatchConnectivityModule.ts
export { default } from "./src/ExpoWatchConnectivityModule";
export * from "./src/ExpoWatchConnectivity.types";
