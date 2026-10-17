# Contador (Tauri)

Requisitos: Rust (https://rustup.rs), Node.js y las dependencias de sistema de Tauri v2
(https://v2.tauri.app/start/prerequisites/).

    npm install
    npm run icon     # genera los iconos desde app-icon.png (una sola vez)
    npm run dev      # probar
    npm run build    # instalador en src-tauri/target/release/bundle/

La ventana queda siempre encima del juego (alwaysOnTop). Para quitarlo, poné
"alwaysOnTop": false en src-tauri/tauri.conf.json.

## Sin instalar nada
- abrir-rapido.bat: abre el contador en una ventana de app con Chrome, Brave, Vivaldi o Edge (el primero que encuentre). Con otro navegador, como Firefox, se abre en una pestaña normal.

## Obtener contador.exe sin instalar Rust
1. Subí esta carpeta a un repositorio nuevo de GitHub (rama main).
2. En la pestaña Actions, ejecutá "Compilar contador.exe" (o esperá a que corra sola).
3. Cuando termine, descargá el artefacto "contador-exe": adentro está contador.exe, portable.
Necesita el runtime de WebView2, que ya viene en Windows 11 y en Windows 10 actualizado. Si lo borraste junto con Edge, instalá "WebView2 Runtime" (Evergreen) desde la web de Microsoft.
