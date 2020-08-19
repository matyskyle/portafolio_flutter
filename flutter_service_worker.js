'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "27f465d7a15b3b5753d47d5ed19e2b9d",
"index.html": "45d1883104df171886d45577241ee158",
"/": "45d1883104df171886d45577241ee158",
"manifest.json": "a4097a31cff9b5d52916e989ae2fd7a8",
"assets/FontManifest.json": "eef081e8787bd44b5ff5b05212a6c728",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "6a2ddad1092a0a1c326b6d0e738e682b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/AssetManifest.json": "193848cf9ef14fe8182d26dfb9573124",
"assets/NOTICES": "4443303b311d22844508e782d03ca971",
"assets/assets/icons/logo.png": "e92d75da68b0db510c0ce50855b2de47",
"assets/assets/icons/cat.png": "260e9c17bd0465aaf229b988bdf4fb41",
"assets/assets/icons/marioblock.gif": "9965bf4f14aa651a8485c02f4aaa088c",
"assets/assets/icons/github.png": "dd24e5cbdc77ae6eac2c09f96de0c293",
"assets/assets/icons/stackoverflow.png": "a98705e04fe86d3e24077ab10d2c6690",
"assets/assets/icons/linkedin.png": "999884973598daa12d66dff106ed5721",
"assets/assets/icons/mail.xml": "fe09310bea9fe6b6cef4acb201d27079",
"assets/assets/icons/flutter.png": "94b8139a9f1f2c226184af4106495c66",
"assets/assets/icons/linkedin.xml": "79e8d69625653314605753d8c84e0c3a",
"assets/assets/icons/github.xml": "75d5b7f3372f0617dbe7dadbe336b9c8",
"assets/assets/icons/mail.png": "fb6fa33c8fd3d335bf99bd7a6e259900",
"assets/assets/fonts/OpenSans-Regular.ttf": "3ed9575dcc488c3e3a5bd66620bdf5a4",
"assets/assets/fonts/OpenSans-ExtraBold.ttf": "fb7e3a294cb07a54605a8bb27f0cd528",
"assets/assets/fonts/Oxygen-Regular.ttf": "61d9daf063ba38f2d05f8adb7267e6fd",
"assets/assets/fonts/Oxygen-Bold.ttf": "3ada7a9482cb9a123ad501e45053adb3",
"assets/assets/fonts/IBMPlexMono-Bold.ttf": "36183581f89e93328498c9073e402f85",
"assets/assets/fonts/MyFlutterApp.ttf": "20186b122acac58412a43aa0949693ba",
"assets/assets/fonts/Poppins-Light.ttf": "2a47a29ceb33c966c8d79f8d5a5ea448",
"assets/assets/images/technological-draw.png": "7ec25385859d3d9aa777f29467a13625",
"assets/assets/images/night.gif": "13354a54a7023ec7e0b64a8017a93466",
"assets/assets/images/bg5.png": "74b3547d4884fbd03da55a7d5d3714e2",
"assets/assets/images/weather.dart": "cffdbf552371016ccca8dc502cffad26",
"assets/assets/images/bg2.png": "1ef5e1ce802af4711df901f1e0cb30b5",
"assets/assets/images/bg1.png": "29cf0e000d266e8244b71e8d0c4f4e81",
"assets/assets/images/bg.png": "5ca0849246e769b9ccf3b59d8e97eea8",
"assets/assets/images/developer-draw.png": "28cfd6e4e1a811af7d19a90c3a97fa9b",
"assets/assets/images/sunny.gif": "80c706001b66894587c5a0b5ccf3e13f",
"assets/assets/images/rainy.gif": "81db470a8dbbf60acf2665a69605d051"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
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
    return self.skipWaiting();
  }

  if (event.message === 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
