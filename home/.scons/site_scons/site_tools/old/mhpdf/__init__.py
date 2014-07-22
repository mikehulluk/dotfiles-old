import SCons.Builder



_pdf_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui $SOURCE --export-pdf=$TARGET --export-area-page 2>&1', 
                suffix='.pdf', 
                src_suffix='.svg')


def generate(env):
    """Add builder to the environment:"""
    env['BUILDERS']['MHPDF'] = _pdf_builder

def exists(env):
    return 1
