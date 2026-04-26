import {defineConfig} from 'vite'

export default defineConfig({
    build: {
        outDir: './dist',
        emptyOutDir: true,
        manifest: false,
        sourcemap: true,
        rollupOptions: {
            input: {
                'bundle': './javascripts/index.js',
            },
            output: {
                entryFileNames: '[name].js',
                chunkFileNames: '[name].js',
                assetFileNames: (assetInfo) => {
                    // Rename the main CSS file to main.css (instead of index.css)
                    if (assetInfo.name === 'index.css') {
                        return 'main.css';
                    }
                    return '[name].[ext]';
                }
            }
        },
    },
    css: {
        devSourcemap: true,
    },
})
