/* Check whether the current browser supports Webp
 * @return boolean indication whether the browser supports Webp
 */
function checkWebpSupport() {
    var elem = document.createElement('canvas');
        if (elem.getContext && elem.getContext('2d')) {
        // was able or not to get WebP representation
        return elem.toDataURL('image/webp').indexOf('data:image/webp') == 0;
    } else {
        // very old browser like IE 8, canvas not supported
        return false;
    }
}

/* Execute the Webp check and apply a matching class to the background for webp loading
 */
function applyWebpIfApplicable(){
    if(checkWebpSupport())
        document.getElementsByClassName("hero")[0].classList.add("hero-webp")
    else 
        document.getElementsByClassName("hero")[0].classList.add("hero-nowebp")
}

document.addEventListener('DOMContentLoaded', function() {
    applyWebpIfApplicable();
}, false);