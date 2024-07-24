# thatus-wi-2024-helloworld

This repository demonstrates the use of GitHub Actions to
- build a simple C program
- create a Debian Package
- upload to GitHub Releases
- Creates an Apt repository on GitHub Pages


## Triggering the workflow
- workflow is triggered by a tag starting with `v` followed by a number

## Repo 
The repo lives on [https://sebst.github.io/thatus-wi-2024-helloworld/repo/](https://sebst.github.io/thatus-wi-2024-helloworld/repo/).

Since directory listing is disabled on GH Pages, here is a direct link to the `Releases` file: [https://sebst.github.io/thatus-wi-2024-helloworld/repo/dists/noble/Release](https://sebst.github.io/thatus-wi-2024-helloworld/repo/dists/noble/Release).

## Testing with Docker:

```bash
docker build -t my-helloworld-image .
docker run --rm my-helloworld-image 
```


