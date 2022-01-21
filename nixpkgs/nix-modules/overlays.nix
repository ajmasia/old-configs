[
  (self: super: {
    todoist-electron = super.todoist-electron.override {
      electron = super.electron_15;
    };
  })
]
