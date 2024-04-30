# cycleHCR Workflow

The cycleHCR image processing workflow includes image stitching, RNA localization, cross-round registration, cell segmentation, and spot-to-cell assignment.

The steps may be run interactively (e.g. in Jupyter Notebooks or Fiji), or orchestrated via Nextflow wrapper pipelines for improved scalability, portability, and reproducibility. 

![workflow](https://github.com/liulabspatial/cycleHCR/assets/607324/2af716d0-9987-42d9-8424-6dd61827dcb6)

## Image stitching (BigStitcher)

* Fiji plugin: https://github.com/PreibischLab/BigStitcher
* Nextflow pipeline: https://github.com/liulabspatial/nf-nd2stitcher

## RNA localization (RS-FISH)

* Fiji plugin: https://github.com/PreibischLab/RS-FISH
* Nextflow pipeline: https://github.com/liulabspatial/nf-rsfish

## Cross-round registration (Bigstream)

* Jupyter notebooks
  * [00.mouse_embryo_bigstream_affine_one.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/00.mouse_embryo_bigstream_affine_one.ipynb)
  * [01.mouse_embryo_bigstream_affine_loop.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/01.mouse_embryo_bigstream_affine_loop.ipynb)
  * [04.hippocampus_bigstream_one.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/04.hippocampus_bigstream_one.ipynb)
  * [05.hippocampus_bigstream_loop.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/05.hippocampus_bigstream_loop.ipynb)
* Nextflow pipeline: coming soon

## Cell segmentation (Cellpose)

* Jupyter notebooks
  * [Cellpose_Hippocampus_3D.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/Cellpose_Hippocampus_3D.ipynb)
  * [Cellpose_MouseEmbryo_3D.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/Cellpose_MouseEmbryo_3D.ipynb)
* Nextflow pipeline: coming soon

## Spot-to-cell assignment

* Jupyter notebooks
  * [SpotToMaskAssignment.ipynb](https://github.com/liulabspatial/cycleHCR/blob/main/jupyter_notebook/SpotToMaskAssignment.ipynb)
