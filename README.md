[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/khmer-typing)
<a href='//www.microsoft.com/store/apps/9MZTL2KK24P7?cid=storebadge&ocid=badge'><img src='https://assets.windowsphone.com/13484911-a6ab-4170-8b7e-795c1e8b4165/English_get_L_InvariantCulture_Default.png' alt='English badge' width='128px' height=' 56px'/></a>

# khmer-typing

> Learn Khmer Typing with a Visual Keyboard and games

<img width="500" height="363" src="https://raw.githubusercontent.com/passerelles-numeriques/khmer-typing/master/docs/screenshot.png">

A free and open source cross platform and a progressive web application:
 - Online and PWA (you can install it on ChromeOS): https://khmer-typing.passerellesnumeriques.org/
 - [Snapcraft](https://snapcraft.io/khmer-typing)
 - [Windows Store](https://www.microsoft.com/store/apps/9MZTL2KK24P7)
 - Portable Windows Application (see releases tab)
 - Linux AppImage (see releases tab)
 - Debian/Ubuntu package (see releases tab)
 - RPM Package (coming soon)

 Khmer Typing is based on VueJS and Electron (for desktop versions). It requires an x64 Operating System with 2GB of RAM.

---

#### Web Server

To run the application on a Node.js web server, follow these steps:

1.  **Install dependencies:**
    ```bash
    yarn install
    ```
2.  **Build the web application:**
    ```bash
    yarn build:web
    ```
3.  **Start the server:**
    ```bash
    yarn start:web
    ```
    The application will be available at http://localhost:8080.

#### Docker image

The web application is a client side only VueJS SPA. You can build and run a Docker image with the provided `Dockerfile`.

    docker build -t typing_image .
    docker run -p 8080:8080 typing_image

And then open your browser on http://localhost:8080

## Credits

- Icon by [**icon lauk**](https://www.iconfinder.com/andhikairfani) - Attribution 3.0 Unported (CC BY 3.0)
- NIDA Keyboard layout by [**Kiensvay**](https://commons.wikimedia.org/wiki/File:Khmer_unicode_NiDA_layout.svg) Attribution 3.0 Unported (CC BY 3.0)
- Texts in Khmer are an altered copy from [Wapatao website](https://wapatoa.com/km/) with the authorization of the authors.
