require_relative '../minitest_helper'

class BlenderTesting < MinitestHelper

  def test_features_page
    @browser.li(id: "menu-item-10").click
    assert_equal(@browser.title.lstrip, "Features - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal @browser.url, "http://www.blender.org/features/"
    assert(@browser.div(class: "header_static", index: 0).h1.text.include? "Features")
    
    assert(@browser.div(class: "entry-content", index: 0).h3.text.include? "Blender is free and open source software, free to use for any purpose")
    
    element = @browser.div(class: "span6", index: 0)
    
    assert(element.h1.text.include? "Photorealistic Rendering")
    assert(element.p(index: 0).text.include? "Blender now features a powerful new unbiased rendering engine called Cycles that offers stunning ultra-realistic rendering.")
    assert(element.p(index: 1).text.include? "The built-in Cycles rendering engine offers:")
    assert(element.ul.li(index: 0).text.include? "GPU & CPU rendering")
    assert(element.ul.li(index: 1).text.include? "Realtime viewport preview")
    assert(element.ul.li(index: 2).text.include? "HDR lighting support")
    assert(element.ul.li(index: 3).text.include? "Permissive License for linking with external software")
    
    assert(@browser.div(class: "span6", index: 1).img(alt: 'Rendering in Blender with Cycles').exists?)
    
    assert(@browser.div(class: "span6", index: 2).img(alt: 'Modelling in Blender').exists?)
    
    element = @browser.div(class: "span6", index: 3)
    
    assert(element.h1.text.include? "Fast Modelling")
    assert(element.p(index: 0).text.include? "Blender’s comprehensive array of modeling tools make creating, transforming and editing your models a breeze.")
    assert(element.p(index: 1).text.include? "Blender’s modeling tools include:")
    assert(element.ul.li(index: 0).text.include? "Keyboard shortcuts for a fast workflow")
    assert(element.ul.li(index: 1).text.include? "N-Gon support")
    assert(element.ul.li(index: 2).text.include? "Edge slide, collapse and dissolve")
    assert(element.ul.li(index: 3).text.include? "Grid and Bridge fill")
    assert(element.ul.li(index: 4).text.include? "Python scripting for custom tools and addons")
    
      element = @browser.div(class: "span6", index: 4)
    
    assert(element.h1.text.include? "Realistic Materials")
    assert(element.p(index: 0).text.include? "With Blender’s new rendering engine the possibilities for materials are endless.")
    assert(element.p(index: 1).text.include? "Key features are:")
    assert(element.ul.li(index: 0).text.include? "Complete Node Support for full customization")
    assert(element.ul.li(index: 1).text.include? "Physically accurate shaders like glass, translucency and SSS")
    assert(element.ul.li(index: 2).text.include? "Open Shading Language (OSL) support for coding unique shaders")
    
    assert(@browser.div(class: "span6", index: 5).img(alt: "Materials in Blender").exists?)
    
    assert(@browser.div(class: "span6", index: 6).img(alt: "Rigging in Blender").exists?) 
    
     element = @browser.div(class: "span6", index: 7)
    
    assert(element.h1.text.include? "Fast Rigging")
    assert(element.p(index: 0).text.include? "Transforming a model into a poseable character has never been easier!")
    assert(element.p(index: 1).text.include? "Blender offers an impressive set of rigging tools including:")
    assert(element.ul.li(index: 0).text.include? "Envelope, skeleton and automatic skinning")
    assert(element.ul.li(index: 1).text.include? "Easy weight painting")
    assert(element.ul.li(index: 2).text.include? "Mirror functionality")
    assert(element.ul.li(index: 3).text.include? "Bone layers and colored groups for organization")
    assert(element.ul.li(index: 4).text.include? "B-spline interpolated bones")
    
     element = @browser.div(class: "span6", index: 8)
    
    assert(element.h1.text.include? "Animation toolset")
    assert(element.p(index: 0).text.include? "Whether it’s simple keyframing or complex walk-cycles, Blender allows artists to turn their still characters into impressive animations.")
    assert(element.p(index: 1).text.include? "Blender’s animation feature set offers:")
    assert(element.ul.li(index: 0).text.include? "Automated walk-cycles along paths")
    assert(element.ul.li(index: 1).text.include? "Character animation pose editor")
    assert(element.ul.li(index: 2).text.include? "Non Linear Animation (NLA) for independent movements")
    assert(element.ul.li(index: 3).text.include? "IK forward/inverse kinematics for fast poses")
    assert(element.ul.li(index: 4).text.include? "Sound synchronization")
    
    assert(@browser.div(class: "span6", index: 9).img(alt: "rigging").exists?)
    
    assert(@browser.div(class: "span6", index: 10).img(alt: "Sculpting in Blender").exists?) 
    
    element = @browser.div(class: "span6", index: 11)
    
    assert(element.h1.text.include? "Sculpting")
    assert(element.p(index: 0).text.include? "Experience the joy of sculpting organic subjects using the built-in sculpting feature set of Blender.")
    assert(element.p(index: 1).text.include? "Sculpting in Blender includes:")
    assert(element.ul.li(index: 0).text.include? "20 different brush types")
    assert(element.ul.li(index: 1).text.include? "Multi-res sculpting support")
    assert(element.ul.li(index: 2).text.include? "Dynamic Topology sculpting")
    assert(element.ul.li(index: 3).text.include? "Mirrored sculpting")

    element = @browser.div(class: "span6", index: 12)
      
    assert(element.h1.text.include? "Fast UV Unwrapping")
    assert(element.p(index: 0).text.include? "Easily unwrap your mesh right inside Blender, and use image textures or paint your own directly onto the model.")
    assert(element.p(index: 1).text.include? "Blender allows for:")
    assert(element.ul.li(index: 0).text.include? "Fast Cube, Cylinder, Sphere and Camera projections")
    assert(element.ul.li(index: 1).text.include? "Conformal and Angle Based unwrapping (with edge seams and vertex pinning)")
    assert(element.ul.li(index: 2).text.include? "Painting directly onto the mesh")
    assert(element.ul.li(index: 3).text.include? "Multiple UV layers")
    assert(element.ul.li(index: 4).text.include? "UV layout image exporting")
     
    assert(@browser.div(class: "span6", index: 13).img(alt: "UV Unwrapping in Blender").exists?)
     
    assert(@browser.div(class: "span6", index: 14).img(alt: "Compositing in Blender").exists?)
     
    assert(@browser.div(class: "span6", index: 15).h1.text.include? "Full Compositor")
    assert(@browser.div(class: "span6", index: 15).p(index: 0).text.include? "Blender comes with a fully fledged compositor built right in. That means no more exporting to third party programs, you can do it all without leaving the program.")
    assert(@browser.div(class: "span6", index: 15).p(index: 1).text.include? "The compositor comes with:")
    assert(@browser.div(class: "span6", index: 15).ul.li(index: 0).text.include? "Impressive library of nodes for creating camera fx, color grading, vignettes and much more")
    assert(@browser.div(class: "span6", index: 15).ul.li(index: 1).text.include? "Render-layer support")
    assert(@browser.div(class: "span6", index: 15).ul.li(index: 2).text.include? "Full compositing with images and video files")
    assert(@browser.div(class: "span6", index: 15).ul.li(index: 3).text.include? "Ability to render to multiLayer OpenEXR files")
    assert(@browser.div(class: "span6", index: 15).ul.li(index: 4).text.include? "Multi-threaded")
     
    assert(@browser.div(class: "span6", index: 16).h1.text.include? "Amazing Simulations")
    assert(@browser.div(class: "span6", index: 16).p(index: 0).text.include? "Whether you need a crumbling building, rain, fire, smoke, fluid, cloth or full on destruction, Blender delivers great looking results.")
    assert(@browser.div(class: "span6", index: 16).p(index: 1).text.include? "Blender’s simulation tools include")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 0).text.include? "Fluid – Realistic water and fluid simulations.")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 1).text.include? "Smoke –  Billowing smoke with flames and scene interaction.")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 2).text.include? "Hair –  Beautiful wafts of hair that blows in the wind and interacts with collisions.")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 3).text.include? "Cloth – Amazingly realistic cloth simulations for clothing and environments")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 4).text.include? "Rigid Body Physics – Makes any object destructable and collidable")
    assert(@browser.div(class: "span6", index: 16).ul.li(index: 5).text.include? "Particles – For creating things like rain, sparks and shrapnel")
     
    assert(@browser.div(class: "span6", index: 17).img(alt: "463e785104").exists?)
     
    assert(@browser.div(class: "span6", index: 18).img(alt: "Blender Game Engine Screenshot").exists?)
     
    assert(@browser.div(class: "span6", index: 19).h1.text.include? "Game Creation")
    assert(@browser.div(class: "span6", index: 19).p(index: 0).text.include? "Included in Blender is a complete game engine, allowing you to create a fully featured 3d game right inside Blender.")
    assert(@browser.div(class: "span6", index: 19).p(index: 1).text.include? "The game engine includes:")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 0).text.include? "Ability to port your models to any third-party game engine")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 1).text.include? "Create or code your own game logic")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 2).text.include? "Full Bullet Physics integration")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 3).text.include? "Python scripting API for advanced control and AI")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 4).text.include? "Support for all OpenGLTM  dynamic lighting, toon shading, animated materials as well as Normal and Parallax Mapping")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 5).text.include? "Playback of games inside Blender without compiling or preprocessing")
    assert(@browser.div(class: "span6", index: 19).ul.li(index: 6).text.include? "3D spatial audio using OpenAL")

    assert(@browser.div(class: "span6", index: 20).h1.text.include? "Camera and Object tracking")
    assert(@browser.div(class: "span6", index: 20).p(index: 0).text.include? "Blender now includes production ready camera and object tracking. Allowing you to import raw footage, track the footage, mask areas and see the camera movements live in your 3d scene. Eliminating the need to switch between programs.")
    assert(@browser.div(class: "span6", index: 20).p(index: 1).text.include? "The Camera and Object Tracker includes:")
    assert(@browser.div(class: "span6", index: 20).ul.li(index: 0).text.include? "Auto and manual tracking")
    assert(@browser.div(class: "span6", index: 20).ul.li(index: 1).text.include? "Powerful camera reconstruction")
     assert(@browser.div(class: "span6", index: 20).ul.li(index: 2).text.include? "Real-time preview of your tracked footage and 3d scene")
     assert(@browser.div(class: "span6", index: 20).ul.li(index: 3).text.include? "Support for Planar tracking and Tripod solvers")

     assert(@browser.div(class: "span6", index: 21).img(alt: "Camera tracking in Blender").exists?)
     
     assert(@browser.div(class: "span6", index: 22).img(alt: "3057383d1a").exists?)
     
     assert(@browser.div(class: "span6", index: 23).h1.text.include? "Library of Extensions")
     assert(@browser.div(class: "span6", index: 23).p(index: 0).text.include? "With a large community of enthusiasts and developers, Blender comes loaded with a vast array of extensions that you can turn on or off easily.")
     assert(@browser.div(class: "span6", index: 23).p(index: 1).text.include? "Some existing extensions include:")
     assert(@browser.div(class: "span6", index: 23).ul.li(index: 0).text.include? "Generators for trees, terrain, ivy and clouds.")
     assert(@browser.div(class: "span6", index: 23).ul.li(index: 1).text.include? "Fracture Objects.")
     assert(@browser.div(class: "span6", index: 23).ul.li(index: 2).text.include? "3D Printing Toolbox.")
     assert(@browser.div(class: "span6", index: 23).ul.li(index: 3).text.include? "Rigify meta-rigging system.")
     assert(@browser.div(class: "span6", index: 23).ul.li(index: 4).text.include? "Import and Export format support for AfterEffects, DirectX, Unreal Game Engine and more!")
     
     assert(@browser.div(class: "span6", index: 23).p(index: 2).text.include? "Plus many more that you can download here")
     
     assert(@browser.div(class: "span6", index: 24).h1.text.include? "Flexible Interface")
     assert(@browser.div(class: "span6", index: 24).p(index: 0).text.include? "Novice and advanced users will love the ability to customize their layout completely. From simply splitting their viewport, to fully customizing it with python scripting, blender works for you.")
     assert(@browser.div(class: "span6", index: 24).p(index: 1).text.include? "Blender’s interface also offers:")
     assert(@browser.div(class: "span6", index: 24).ul.li(index: 0).text.include? "Consistency across all platforms")
     assert(@browser.div(class: "span6", index: 24).ul.li(index: 1).text.include? "No disruptive pop-up windows")
     assert(@browser.div(class: "span6", index: 24).ul.li(index: 2).text.include? "Crisp text (support for retina on OSX)")
     
     assert(@browser.div(class: "span6", index: 25).img(alt: "Blender's UI").exists?)
     
     assert(@browser.div(class: "span6", index: 26).img(alt: "Exporting in Blender").exists?)
     
    assert(@browser.div(class: "span6", index: 27).h1.text.include? "File Formats")
    assert(@browser.div(class: "span6", index: 27).p(index: 0).text.include? "Blender comes packed with import/export support for many different programs.")
    assert(@browser.div(class: "span6", index: 27).p(index: 1).text.include? "Including:")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 0).text.include? "Image")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 0).text.include? "JPEG, JPEG2000, PNG, TARGA, OpenEXR, DPX, Cineon, Radiance HDR, SGI Iris, TIFF")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 1).text.include? "Video")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 1).text.include? "AVI, MPEG and Quicktime (on OSX).")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 2).text.include? "3D")
    assert(@browser.div(class: "span6", index: 27).ul.li(index: 2).text.include? "3D Studio (3DS), COLLADA (DAE), Filmbox (FBX), Autodesk (DXF), Wavefront (OBJ), DirectX (x), Lightwave (LWO), Motion Capture (BVH), SVG, Stanford PLY, STL, VRML, VRML97, X3D.")
     
  end 
         
 

end