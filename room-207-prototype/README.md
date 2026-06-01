# Light Shape 2D (Baked)

An optimized 2D lighting tool for Godot 4. Design complex light shapes with gizmos and bake them into textures to eliminate real-time overhead.

## Key Features
* **Interactive Gizmos:** Real-time viewport handles for radius, rotation, and arc spread.
* **Baked Performance:** Converts math-heavy lights into optimized `ImageTexture` resources.
* **Scene Optimization:** Unique `.res` file saving to prevent `.tscn` bloat.

## How to Use
1. **Setup:** Add a `PointLightShape2D` node.
2. **Design:** Use viewport handles to shape the light.
3. **Bake:** Click `BAKE_LIGHT_NOW` after using Inspector sliders.
4. **Save:** Click `SAVE_TO_DISK` to create a permanent asset in `addons/light_shape_2d/baked_lights/`.

## Workflow Tips
* **Optimization:** Use node **Scale** for large areas instead of increasing **Radius**.
* **Reset:** Use `RESET_SHAPE` to return to a 360° point light.
* **Dynamic:** Color, Energy, and Z-Index can still be changed in real-time.

---
**Author:** Batuhan Dikmen | **License:** MIT
