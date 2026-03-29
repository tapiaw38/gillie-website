#!/bin/bash

# Script de configuración para Gillie AI Website

echo "🚀 Configurando Gillie AI Website..."

# Verificar Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js no está instalado. Por favor instala Node.js 18+"
    exit 1
fi

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js versión $NODE_VERSION detectada. Se requiere Node.js 18+"
    exit 1
fi

echo "✅ Node.js $NODE_VERSION detectado"

# Instalar dependencias
echo "📦 Instalando dependencias..."
npm install

# Verificar instalación
if [ $? -eq 0 ]; then
    echo "✅ Dependencias instaladas correctamente"
else
    echo "❌ Error instalando dependencias"
    exit 1
fi

# Crear archivo .env si no existe
if [ ! -f .env ]; then
    echo "📝 Creando archivo .env..."
    cat > .env << EOF
# Configuración de desarrollo
PUBLIC_SITE_URL=http://localhost:4321
PUBLIC_API_URL=https://api.gillie.ai
EOF
    echo "✅ Archivo .env creado"
fi

echo ""
echo "🎉 Configuración completada!"
echo ""
echo "Para iniciar el servidor de desarrollo:"
echo "  npm run dev"
echo ""
echo "Para construir para producción:"
echo "  npm run build"
echo ""
echo "El sitio estará disponible en:"
echo "  Desarrollo: http://localhost:4321"
echo "  Producción: ./dist/"