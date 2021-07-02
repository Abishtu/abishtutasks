abishtutasks_sources = [
    'widgets/Main.vala',
    'widgets/App.vala',
    'widgets/Window.vala',
    'widgets/TaskCard/TaskCard.vala',
    'widgets/TaskCard/ColourBar.vala',
    'widgets/TaskCard/TaskCardText.vala',
    'widgets/TaskCard/TaskCardButton.vala',
]

abishtutasks_deps = [
    dependency('gtk4'),
    dependency('pango'),
    dependency('glib-2.0'),
]

executable (
    meson.project_name(),
    abishtutasks_sources,
    dependencies: abishtutasks_deps,
    install: true
)