# Architecture Examples – Real Code

Each folder shows the complete structure with actual Dart code.

## Folders

| Folder | Structure | Key Additions |
|--------|-----------|---------------|
| [small/](./small/) | `user_feature/` | Repository + datasources |
| [medium/](./medium/) | `user_feature/` | **+ domain/use_cases/** |
| [large/](./large/) | `user_feature/` | **+ entities, models, mappers** |
| [enterprise/](./enterprise/) | `core/` + `features/user/` | **+ core/, di/, ui state** |

## Tree Overview

### Small
```
user_feature/
├── bindings/
├── controllers/
├── views/
├── domain/repositories/
└── data/
    ├── datasources/
    └── repositories/
```

### Medium (adds use_cases)
```
user_feature/
├── ...
└── domain/
    ├── repositories/
    └── use_cases/        ← NEW
```

### Large (adds entities, models, mappers)
```
user_feature/
├── ...
└── domain/
    ├── entities/         ← NEW
    ├── repositories/
    └── use_cases/
└── data/
    ├── models/           ← NEW
    ├── mappers/          ← NEW
    ├── datasources/
    └── repositories/
```

### Enterprise (full structure)
```
core/
├── config/
├── errors/
└── use_cases/
features/user/
├── di/                   ← Feature DI module
├── domain/
├── data/
│   └── datasources/
│       ├── remote/
│       └── local/
└── presentation/
    ├── bindings/
    ├── controllers/
    ├── models/           ← UI state
    ├── views/
    └── widgets/          ← Feature widgets
```

## Your App

Your `home` and `profile` modules match the **small** structure.
