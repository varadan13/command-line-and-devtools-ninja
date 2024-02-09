const commitsToPushToProd = (commitHash) =>
  $$("a[data-pjax='true']")
    .map((ele) => ({
      title: ele.title,
      hash: ele.href.split("/").pop(),
      href: ele.href,
    }))
    .reduce((p, c) => {
      const k = p.length !== 0 ? p[p.length - 1] : null;
      return (k && k.flag) || c.hash === commitHash
        ? [...p, { ...c, flag: true }]
        : [...p, { ...c, flag: false }];
    }, [])
    .filter((ele) => !ele.flag);
