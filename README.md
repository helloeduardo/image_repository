# Image Searcher

## About

This is an image searching application that utilizes the Microsoft Bing Image Search API and the Visual Search API.

Users may search by keywords, in addition to characteristics like the dominant color and aspect ratio. Users may also search for similar images by providing an original image url.

## Getting Started

After cloning locally, from the command line, run:

```
$ bundle install
$ rails db:create
$ figaro install
```

Then add your Bing subscription key to the `application.yml` file as `BING_KEY_1: <your-api-key>`

Start up a rails server using:
```
$ rails s
```

Then navigate to `localhost:3000` on your browser to view the app. Success! 🎉

## Functionality Screenshots

### Homepage

![Screen Shot 2021-01-17 at 1 06 02 PM](https://user-images.githubusercontent.com/56360157/104854901-8a2e6f80-58c6-11eb-8a51-be5c88199f47.png)

### Search by Text

![Screen Shot 2021-01-17 at 1 15 16 PM](https://user-images.githubusercontent.com/56360157/104854899-88fd4280-58c6-11eb-94d3-4629e2725367.png)

### Search by Characteristics

![Screen Shot 2021-01-17 at 1 15 52 PM](https://user-images.githubusercontent.com/56360157/104854895-87cc1580-58c6-11eb-9b42-1d199986a107.png)

### Search by Similar Image

![Screen Shot 2021-01-17 at 1 16 40 PM](https://user-images.githubusercontent.com/56360157/104854890-8569bb80-58c6-11eb-9d8f-b94b1f665078.png)
