/**
 * Freeze Chrome to debug hover / transient UI
 *
 * Use as a DevTools Snippet (Sources > Snippets) or paste in Console.
 *
 * Workflow:
 * 1. Run this snippet (e.g. run the snippet in DevTools).
 * 2. Click on the UI that shows content, or hover over it (tooltip, menu, etc.).
 * 3. When the timeout fires (after 5s), the debugger will open.
 * 4. The hover/transient component is still visible because execution is paused,
 *    so you can inspect its elements in the Elements panel.
 *
 * Adjust the delay (5000 = 5 seconds) if you need more or less time to hover.
 */

setTimeout(function () {
  debugger;
}, 5000);
