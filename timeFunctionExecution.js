const timeFunctionExecution = async cb => {
  const formatTime = milliseconds => {
    const seconds = milliseconds / 1000;
    if (seconds < 1) {
      return `${milliseconds.toFixed(2)} ms`;
    } else {
      return `${seconds.toFixed(2)} seconds`;
    }
  };

  const startTime = performance.now();
  await cb();
  const endTime = performance.now();
  const elapsedTime = endTime - startTime;
  const ftime = formatTime(elapsedTime);
  console.log(`Function took ${ftime} to execute`);
  return ftime;
};
