# Scripts

## Create Module (Clean Architecture)

Creates a new module with Clean Architecture structure (domain, data, presentation).

### Usage

```bash
dart run scripts/create_module.dart <module_name>
```

### Examples

```bash
dart run scripts/create_module.dart profile
dart run scripts/create_module.dart settings
dart run scripts/create_module.dart chat
```

### Generated Structure (Get CLI Compatible)

```
lib/app/modules/<module_name>/
├── bindings/           ← Get CLI expects this
├── controllers/
├── views/
├── domain/repositories/
└── data/
    ├── datasources/
    └── repositories/
```

### After Running

1. **Add route** in `lib/app/routes/app_routes.dart`
2. **Add page** in `lib/app/routes/app_pages.dart`
3. **Update** endpoint and model in remote_data_source if needed

### Alternative: Get CLI

Get CLI creates a simpler structure. To use our Clean Architecture:

- **Option A**: Use this script instead of `get create page`
- **Option B**: Run `get create page:profile`, then manually restructure to domain/data/presentation
