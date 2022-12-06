window.performance.getEntriesByType('resource')
  // only consider the blocking ones
  .filter(({renderBlockingStatus}) => 
      renderBlockingStatus === 'blocking')
  // log their names
  .forEach(({name}) => console.log(name))
