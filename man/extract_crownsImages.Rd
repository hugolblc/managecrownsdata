% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_crownsImages.R
\name{extract_crownsImages}
\alias{extract_crownsImages}
\title{Extract crowns images}
\usage{
extract_crownsImages(
  path_images,
  crownsFile,
  path_bbox,
  path_out,
  site = NULL,
  dates = NULL,
  N_cores = 1,
  width = 720,
  height = 825
)
}
\arguments{
\item{path_images}{A list with the full paths to the RGB rasters.}

\item{crownsFile}{sf object}

\item{path_bbox}{The path to the non NA Bbox returned by the function \code{extract_bboxImages()}.
The order of the bbox should match with the order of the images in the path_images}

\item{path_out}{chr. The path to the directory use to stored the images. The
function will create the folder, It doesn't need to exists.}

\item{site}{chr. name of the site, p.e 'Mbalmayo'.}

\item{dates}{chr. Vector with dates (format should be '\%Y_\%m_\%d', p.e
'2022_09_25'). The order of the dates should match with the order of the
dates of the image in the path_images}

\item{N_cores}{xx}

\item{width}{num. The width of the device}

\item{height}{num. The height of the device}
}
\description{
The function extracts and save .jpeg images for each crown at
each date.
}
\details{
The extract_crownsImages() create one folder per id and save the
images. The folder names are 'crown_\emph{the id}\emph{\emph{the species name}' for exemple
'crown_5_Lophira alata'. The the images names are 'crown}\emph{the id}\emph{\emph{the species
name}}\emph{the date}.jpeg' for exemple 'crown_5_Lophira alata_2022-11-08.jpeg'.
The function upload square image with neighbouring tree and the title is add
at the top, image size is 720*825 pixels. When specific_quality is TRUE, the
image size can be changed by specifying height and width parameters.
}
\examples{
\dontrun{
library(sf)
library(dplyr)

crownsFile <- sf::st_read(
file.path(
system.file(package="managecrownsdata"),
'crowns/Bouamir_crowns.gpkg'
)
)

check_crownsFile(crownsFile = crownsFile)

crownsFile <- crownsFile \%>\% dplyr::rename(
   geometry = geom
)

check_crownsFile(crownsFile = crownsFile)

extract_crownsImages(
      path_images = rgb_paths,
      crownsFile = crownsFile,
      path_bbox,
      path_out,
      site = NULL,
      dates = NULL,
      N_cores = 1,
      width = 720,
      height = 825
   )
}

}
