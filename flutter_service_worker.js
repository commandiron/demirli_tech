'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "3e30926f77d818f9d165f6a7fde36598",
"manifest.json": "b4a936819b06488c7f8eb9a036e3c93a",
"CNAME": "53d292177762d49ed50165b8c7b9b3e1",
"version.json": "361cd03fc9c1d62bc5918add730ed237",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/assets/images/construction_technology_.jpg": "b9bd09e8e4fca374ada90f1b9fcd24c1",
"assets/assets/images/badges/development_badge.png": "2fddcb6afb59b0119a3fac7275217e15",
"assets/assets/images/badges/app_store_badge.png": "e9687ef4af87939e8ab597794ec2829c",
"assets/assets/images/badges/google_play_badge.png": "1e55d17f7c89e1e806f48d32d31b7f89",
"assets/assets/images/badges/research_badge.png": "f6b2b36989445816d89b0aed07c4cf0f",
"assets/assets/images/service/smart_construction_icon_256.png": "81d10b663a11d0f737059379a4fa8d6f",
"assets/assets/images/service/robot_icon_256.png": "d58a5ab4f642ce8d00d848c17747951b",
"assets/assets/images/service/design_development_icon_256.png": "3420f0c8cc75cc617401c59f63e395c2",
"assets/assets/images/contact/facebook_icon_20.png": "6fe7fc6284cec37915198933bb86debb",
"assets/assets/images/contact/instagram_icon_20.png": "30e3521d6f5400fc9ccc158ce3045b90",
"assets/assets/images/contact/whatsapp_icon_20.png": "7f1d0c336322f92f0fee2931d6eace08",
"assets/assets/images/contact/linkedin_icon_20.png": "ada71808adb68c266eab970b5887b8b0",
"assets/assets/images/product/qr_projem/qr_projem_cover.png": "b662e3f29b1944cd6911e2dfe52b1db9",
"assets/assets/images/product/qr_projem/qr_projem_logo_100.png": "8f8ff5d89b7b761c4ba149ca74a4856a",
"assets/assets/images/product/kost/kost_logo_100.png": "e9785256c18d3332ba4a9c3f2669426c",
"assets/assets/images/product/kost/cost_cover.png": "45cd88956e0317f36cce7f0f3d2d6a50",
"assets/assets/images/product/planok/planok_cover.png": "31fbf23354d079c374a9c7559bcc4af9",
"assets/assets/images/product/planok/planok_logo_100.png": "64d97aca443750d7b767a461a12913ef",
"assets/assets/images/product/reb_ar/reb_ar_cover.png": "f460cb7ffba9339000ce2866fd6965e9",
"assets/assets/images/product/reb_ar/reb_ar_logo_100.png": "12e64428862e53da59b23d860ee641b6",
"assets/assets/images/logo/demirli_tech_only_logo_web_icon.png": "8d1b4470a3d76d223e52fd5c7a9da7f8",
"assets/assets/images/logo/demirli_tech_text_logo_black.png": "e36d77e73343cb6c2a32966e267dbd6d",
"assets/assets/images/logo/demirli_tech_logo_white.png": "9bacc438425481e70ec7a315e02a73a1",
"assets/assets/images/logo/demirli_tech_text_logo_white.png": "f7a02f515dddcb1ecb3eea6d0c60aee0",
"assets/assets/images/logo/demirli_tech_only_logo.png": "2b15a54ca01c9a3168437e337c7fe04c",
"assets/assets/images/logo/demirli_tech_logo_black.png": "f21df6bb7281447873c876968715cca2",
"assets/NOTICES": "c51860cf045891a812c099a9780abc6a",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/AssetManifest.json": "da88f22067bbb28b4808877715e82f23",
"index.html": "87b8b80070756de0c6064cfda04fe35c",
"/": "87b8b80070756de0c6064cfda04fe35c",
"main.dart.js": "3cd4da61f9e33a83ebf93ecc9af743ef",
"icons/Icon-512.png": "9966fcb6e77a4281d5bbd5e1e08efc03",
"icons/Icon-maskable-192.png": "17516756dd97e7deb2a88f148638bde8",
"icons/Icon-maskable-512.png": "9966fcb6e77a4281d5bbd5e1e08efc03",
"icons/Icon-192.png": "17516756dd97e7deb2a88f148638bde8"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
