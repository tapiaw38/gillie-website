# Gillie AI Website

Sitio web estático construido con Astro para promocionar Gillie AI, un asistente inteligente con capacidades avanzadas de procesamiento de documentos, RAG, TTS/STT e integración con WhatsApp.

## 🚀 Características

- **Diseño Moderno**: Interfaz limpia y profesional con gradientes y efectos visuales
- **Totalmente Responsive**: Adaptado para móviles, tablets y desktop
- **Optimizado para SEO**: Meta tags, títulos y descripciones optimizadas
- **Navegación Suave**: Scroll suave entre secciones
- **Menú Mobile**: Navegación adaptada para dispositivos móviles
- **Colores Personalizados**: Paleta de colores Gillie AI (azul, océano, etc.)

## 🎨 Secciones del Sitio

1. **Hero Section**: Presentación principal con CTA
2. **Características**: 6 características principales con iconos
3. **Cómo Funciona**: 3 pasos simples para comenzar
4. **Casos de Uso**: 4 casos de uso específicos (Educación, Negocios, Desarrollo, Personal)
5. **API**: Sección técnica con ejemplo de código
6. **Call to Action**: Sección final para conversión

## 🛠️ Tecnologías

- **Astro 4.0**: Framework estático moderno
- **Tailwind CSS**: Framework CSS utility-first
- **TypeScript**: Tipado estático opcional
- **Google Fonts**: Inter como fuente principal

## 📁 Estructura del Proyecto

```
gillie-website/
├── public/
│   ├── assets/          # Imágenes y logos
│   │   ├── ai-icon.png
│   │   ├── assistant.png
│   │   ├── gillie-ocean.png
│   │   ├── gillie.png
│   │   ├── seller.png
│   │   └── tutor.png
│   └── favicon.svg
├── src/
│   ├── components/      # Componentes Astro
│   │   ├── FeatureCard.astro
│   │   ├── Footer.astro
│   │   ├── Navbar.astro
│   │   └── UseCaseCard.astro
│   ├── layouts/         # Layouts
│   │   └── Layout.astro
│   ├── pages/          # Páginas
│   │   └── index.astro
│   └── styles/         # Estilos CSS
│       └── global.css
├── astro.config.mjs    # Configuración de Astro
├── tailwind.config.mjs # Configuración de Tailwind
├── package.json        # Dependencias
└── README.md          # Este archivo
```

## 🚀 Comenzar

### Prerrequisitos

- Node.js 18+ 
- npm o yarn

### Instalación

1. Clonar el repositorio
2. Instalar dependencias:

```bash
npm install
```

### Desarrollo

```bash
npm run dev
```

Abre http://localhost:4321 en tu navegador.

### Construcción

```bash
npm run build
```

Los archivos estáticos se generan en la carpeta `dist/`.

### Preview

```bash
npm run preview
```

## 🐳 Docker

El proyecto incluye configuración Docker:

```bash
# Construir la imagen
docker build -t gillie-website .

# Ejecutar el contenedor
docker run -p 8080:80 gillie-website
```

## 🎯 Personalización

### Colores

Los colores personalizados están definidos en `tailwind.config.mjs`:

```javascript
gillie: {
  blue: '#2563eb',
  dark: '#1e3a8a',
  light: '#60a5fa',
  ocean: '#0ea5e9',
}
```

### Contenido

- **Página principal**: `src/pages/index.astro`
- **Componentes**: `src/components/`
- **Estilos globales**: `src/styles/global.css`

## 📱 Assets

Los logos y fondos utilizados:

- `gillie.png` - Logo principal
- `gillie-ocean.png` - Imagen hero
- `ai-icon.png`, `assistant.png`, `tutor.png`, `seller.png` - Iconos de características

## 📄 Licencia

Este proyecto es parte de Gillie AI.