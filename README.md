# reactome_to_celldesigner_converter

## Script purpose: convert Reactome SBML files into CellDesigner SBML files.
## Date: 27.04.2024
## Author: Luiz Ladeira

Scaling up the Reactome to CellDesigner converter from the minervar package to convert files in batches. This script converts all the files in the /data folder at once. More files take more time to process.

Download Reactome pathways as SBML files.

Copy then into the /data folder.

Run the script to get the CellDesigner compatible .xml files.

Manual work to improve layout and visualization might be needed. This converter preserves all the MIRIAM annotations from Reactome.
