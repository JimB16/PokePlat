# ##### BEGIN GPL LICENSE BLOCK #####
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 2
#  of the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#
# ##### END GPL LICENSE BLOCK #####

# <pep8-80 compliant>

bl_info = {
    "name": "BMD0 format",
    "author": "JimB",
    "blender": (2, 76, 0),
    "location": "File > Import-Export",
    "description": "Import-Export BMD, meshes, uvs, materials, textures, "
                   "cameras & lamps",
    "warning": "",
    "wiki_url": "http://wiki.blender.org/index.php/Extensions:2.6/Py/"
                "Scripts/Import-Export/Autodesk_3DS",
    "support": 'TESTING',
    "category": "Import-Export"}

if "bpy" in locals():
    import importlib
    if "import_bmd" in locals():
        importlib.reload(import_bmd)
    if "export_bmd0" in locals():
        importlib.reload(export_bmd0)


import bpy
from bpy.props import (
        BoolProperty,
        EnumProperty,
        FloatProperty,
        StringProperty,
        )
from bpy_extras.io_utils import (
        ImportHelper,
        ExportHelper,
        orientation_helper_factory,
        axis_conversion,
        )


IOBMD0OrientationHelper = orientation_helper_factory("IOBMD0OrientationHelper", axis_forward='Y', axis_up='Z')


class ImportBMD0(bpy.types.Operator, ImportHelper, IOBMD0OrientationHelper):
    """Import from BMD0 file format (.bmd0)"""
    bl_idname = "import_scene.bmd0"
    bl_label = 'Import BMD0'
    bl_options = {'UNDO'}

    filename_ext = ".bmd0"
    filter_glob = StringProperty(default="*.bmd0", options={'HIDDEN'})

    constrain_size = FloatProperty(
            name="Size Constraint",
            description="Scale the model by 10 until it reaches the "
                        "size constraint (0 to disable)",
            min=0.0, max=1000.0,
            soft_min=0.0, soft_max=1000.0,
            default=10.0,
            )
    use_image_search = BoolProperty(
            name="Image Search",
            description="Search subdirectories for any associated images "
                        "(Warning, may be slow)",
            default=True,
            )
    use_apply_transform = BoolProperty(
            name="Apply Transform",
            description="Workaround for object transformations "
                        "importing incorrectly",
            default=True,
            )

    def execute(self, context):
        from . import import_bmd

        keywords = self.as_keywords(ignore=("axis_forward",
                                            "axis_up",
                                            "filter_glob",
                                            ))

        global_matrix = axis_conversion(from_forward=self.axis_forward,
                                        from_up=self.axis_up,
                                        ).to_4x4()
        keywords["global_matrix"] = global_matrix

        return import_bmd.load(self, context, **keywords)


class ExportBMD0(bpy.types.Operator, ExportHelper, IOBMD0OrientationHelper):
    """Export to BMD0 file format (.bmd0)"""
    bl_idname = "export_scene.bmd0"
    bl_label = 'Export BMD0'

    filename_ext = ".bmd0"
    filter_glob = StringProperty(
            default="*.bmd0",
            options={'HIDDEN'},
            )

    use_selection = BoolProperty(
            name="Selection Only",
            description="Export selected objects only",
            default=False,
            )

    def execute(self, context):
        from . import export_bmd0

        keywords = self.as_keywords(ignore=("axis_forward",
                                            "axis_up",
                                            "filter_glob",
                                            "check_existing",
                                            ))
        global_matrix = axis_conversion(to_forward=self.axis_forward,
                                        to_up=self.axis_up,
                                        ).to_4x4()
        keywords["global_matrix"] = global_matrix

        return export_bmd0.save(self, context, **keywords)


# Add to a menu
def menu_func_export(self, context):
    self.layout.operator(ExportBMD0.bl_idname, text="BMD0 (.bmd0)")


def menu_func_import(self, context):
    self.layout.operator(ImportBMD0.bl_idname, text="BMD0 (.bmd0)")


def register():
    bpy.utils.register_module(__name__)

    bpy.types.INFO_MT_file_import.append(menu_func_import)
    bpy.types.INFO_MT_file_export.append(menu_func_export)


def unregister():
    bpy.utils.unregister_module(__name__)

    bpy.types.INFO_MT_file_import.remove(menu_func_import)
    bpy.types.INFO_MT_file_export.remove(menu_func_export)

# NOTES:
# why add 1 extra vertex? and remove it when done? -
#  "Answer - eekadoodle - would need to re-order UV's without this since face
#  order isnt always what we give blender, BMesh will solve :D"
#
# disabled scaling to size, this requires exposing bb (easy) and understanding
# how it works (needs some time)

if __name__ == "__main__":
    register()
