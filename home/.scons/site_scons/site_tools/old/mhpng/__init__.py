import SCons.Builder



_png_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui --export-dpi=250 $SOURCE --export-png=$TARGET --export-area-page 2>&1', 
                suffix='.png', 
                src_suffix='.svg')


def generate(env):
    """Add builder to the environment:"""
    env['BUILDERS']['PNG'] = _png_builder

def exists(env):
    return 1
