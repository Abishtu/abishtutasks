abishtutasks_sources = [
    'widgets/Main.vala',
    'widgets/App.vala',
    'widgets/Window.vala',
    'widgets/TaskCard.vala',
]

abishtutasks_deps = [
    dependency('gtk4'),
]

executable (
    meson.project_name(),
    abishtutasks_sources,
    dependencies: abishtutasks_deps,
    install: true
)