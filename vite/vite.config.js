import { defineConfig } from 'vite';
import path from 'path';
// import replace from '@rollup/plugin-replace';
// import babel from '@rollup/plugin-babel';
// import commonjs from '@rollup/plugin-commonjs';
// import resolve from '@rollup/plugin-node-resolve';
// import inject from '@rollup/plugin-inject';
import { viteExternalsPlugin } from 'vite-plugin-externals';

// import legacy from '@vitejs/plugin-legacy';
// https://vitejs.dev/config/
export default defineConfig({
	base: '',
	plugins: [
	
		// replace({
		//     "process.env.NODE_ENV": JSON.stringify("development")
		// }),

		// commonjs(
		// 	{
		// 		// include: /node_modules/,
		// 	}
		// ),
		// babel({
		// 	babelrc: true,
		// 	exclude: 'node_modules/**',
		// 	babelHelpers: 'bundled'
		// }),

		// resolve(),
		// inject({
		// 	$: 'jQuery',
		// 	jquery: 'jQuery'
		// }),
		viteExternalsPlugin({
			prestashop: 'prestashop',
			$: '$',
			jquery: 'jQuery'
		}),
		// legacy({
		// 	targets: [ 'ie >= 11' ],
		// 	additionalLegacyPolyfills: [ 'regenerator-runtime/runtime' ]
		// })
	],

	build: {
		sourcemap: false,
		outDir: '../assets',
		rollupOptions: {
			input: {
				main: './js/main.js'
			},
			output: {
				   entryFileNames: `js/[name].js`,
				   chunkFileNames: `js/[name].js`,
				   assetFileNames: `[ext]/[name].[ext]`
			}
		}
	},
	resolve: {
		alias: {
			 '@': path.resolve(__dirname, 'img'),
			
			//'~bootstrap': 'bootstrap'
		}
	}
});
