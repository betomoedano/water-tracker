import { NativeModule, requireNativeModule } from "expo";

import { ExpoWatchConnectivityModuleEvents } from "./ExpoWatchConnectivity.types";

declare class ExpoWatchConnectivityModule extends NativeModule<ExpoWatchConnectivityModuleEvents> {
  PI: number;
  hello(): string;
  setValueAsync(value: string): Promise<void>;
  isReachable(): boolean;
}

// This call loads the native module object from the JSI.
export default requireNativeModule<ExpoWatchConnectivityModule>(
  "ExpoWatchConnectivity"
);
