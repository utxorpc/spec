export * as v1 from "./v1.js";
export * as v1alpha from "./v1alpha.js";
export * as v1beta from "./v1beta.js";

// Back-compat: before the interface held side-by-side versions, this package
// re-exported v1alpha's modules at the root. Keep resolving them there so
// existing `spec.sync` / `spec.cardano` callers are unaffected.
export * from "./v1alpha.js";
