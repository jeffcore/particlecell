<script context="module">
	export function preload({ params }) {
		return {
			p: +params.p
		};
	}
</script>

<script>
	import Home from './_components/Home.svelte';
	export let p=1;
	console.log("p in p slug " + p);
	
</script>

<Home {p}/>