export type ExpoWatchConnectivityModuleEvents = {
  onChange: (params: ChangeEventPayload) => void;
  onSessionStateChange: (params: SessionStateChangeEventPayload) => void;
};

export type ChangeEventPayload = {
  value: string;
};

export type SessionStateChangeEventPayload = {
  state: number; // WCSessionActivationState raw value
  error?: string;
};
