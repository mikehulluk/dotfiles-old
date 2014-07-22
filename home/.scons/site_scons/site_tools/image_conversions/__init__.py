import SCons.Builder





_svg_to_pdf_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui $SOURCE --export-pdf=$TARGET --export-area-page 2>&1', 
                suffix='.pdf', 
                src_suffix='.svg')

_svg_to_eps_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui $SOURCE --export-dpi=250 --export-eps=$TARGET --export-area-page 2>&1', 
                suffix='.eps', 
                src_suffix='.svg')



_svg_to_png_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui --export-dpi=250 $SOURCE --export-png=$TARGET --export-area-page 2>&1', 
                suffix='.png', 
                src_suffix='.svg')



_png_to_tiff_builder = SCons.Builder.Builder(
                action = 'convert $SOURCE  -compress lzw $TARGET', 
                suffix='.tiff', 
                src_suffix='.svg')




def generate(env):
    """Add builders to the environment:"""

    env['BUILDERS']['MHPDF'] = _svg_to_pdf_builder
    env['BUILDERS']['MHPNG'] = _svg_to_png_builder
    
    
    env['BUILDERS']['toPDF'] = _svg_to_pdf_builder
    env['BUILDERS']['toPNG'] = _svg_to_png_builder
    env['BUILDERS']['toEPS'] = _svg_to_eps_builder
    env['BUILDERS']['toTIFF'] = _png_to_tiff_builder
    
    

def exists(env):
    return 1

