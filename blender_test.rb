require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end

  def test_features_page
    @b.li(id: "menu-item-10").click
    assert_equal(@b.title.lstrip, "Features - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal @b.url, "http://www.blender.org/features/"
    assert(@b.div(class: "header_static", index: 0).h1.text.include? "Features")
    
    assert(@b.div(class: "entry-content", index: 0).h3.text.include? "Blender is free and open source software, free to use for any purpose")
    
    element = @b.div(class: "span6", index: 0)
    
    assert(element.h1.text.include? "Photorealistic Rendering")
    assert(element.p(index: 0).text.include? "Blender now features a powerful new unbiased rendering engine called Cycles that offers stunning ultra-realistic rendering.")
    assert(element.p(index: 1).text.include? "The built-in Cycles rendering engine offers:")
    assert(element.ul.li(index: 0).text.include? "GPU & CPU rendering")
    assert(element.ul.li(index: 1).text.include? "Realtime viewport preview")
    assert(element.ul.li(index: 2).text.include? "HDR lighting support")
    assert(element.ul.li(index: 3).text.include? "Permissive License for linking with external software")
    
    assert(@b.div(class: "span6", index: 1).img(alt: 'Rendering in Blender with Cycles').exists?)
    
    assert(@b.div(class: "span6", index: 2).img(alt: 'Modelling in Blender').exists?)
    
    element = @b.div(class: "span6", index: 3)
    
    assert(element.h1.text.include? "Fast Modelling")
    assert(element.p(index: 0).text.include? "Blender’s comprehensive array of modeling tools make creating, transforming and editing your models a breeze.")
    assert(element.p(index: 1).text.include? "Blender’s modeling tools include:")
    assert(element.ul.li(index: 0).text.include? "Keyboard shortcuts for a fast workflow")
    assert(element.ul.li(index: 1).text.include? "N-Gon support")
    assert(element.ul.li(index: 2).text.include? "Edge slide, collapse and dissolve")
    assert(element.ul.li(index: 3).text.include? "Grid and Bridge fill")
    assert(element.ul.li(index: 4).text.include? "Python scripting for custom tools and addons")
    
      element = @b.div(class: "span6", index: 4)
    
    assert(element.h1.text.include? "Realistic Materials")
    assert(element.p(index: 0).text.include? "With Blender’s new rendering engine the possibilities for materials are endless.")
    assert(element.p(index: 1).text.include? "Key features are:")
    assert(element.ul.li(index: 0).text.include? "Complete Node Support for full customization")
    assert(element.ul.li(index: 1).text.include? "Physically accurate shaders like glass, translucency and SSS")
    assert(element.ul.li(index: 2).text.include? "Open Shading Language (OSL) support for coding unique shaders")
    
    assert(@b.div(class: "span6", index: 5).img(alt: "Materials in Blender").exists?)
    
    assert(@b.div(class: "span6", index: 6).img(alt: "Rigging in Blender").exists?) 
    
     element = @b.div(class: "span6", index: 7)
    
    assert(element.h1.text.include? "Fast Rigging")
    assert(element.p(index: 0).text.include? "Transforming a model into a poseable character has never been easier!")
    assert(element.p(index: 1).text.include? "Blender offers an impressive set of rigging tools including:")
    assert(element.ul.li(index: 0).text.include? "Envelope, skeleton and automatic skinning")
    assert(element.ul.li(index: 1).text.include? "Easy weight painting")
    assert(element.ul.li(index: 2).text.include? "Mirror functionality")
    assert(element.ul.li(index: 3).text.include? "Bone layers and colored groups for organization")
    assert(element.ul.li(index: 4).text.include? "B-spline interpolated bones")
    
     element = @b.div(class: "span6", index: 8)
    
    assert(element.h1.text.include? "Animation toolset")
    assert(element.p(index: 0).text.include? "Whether it’s simple keyframing or complex walk-cycles, Blender allows artists to turn their still characters into impressive animations.")
    assert(element.p(index: 1).text.include? "Blender’s animation feature set offers:")
    assert(element.ul.li(index: 0).text.include? "Automated walk-cycles along paths")
    assert(element.ul.li(index: 1).text.include? "Character animation pose editor")
    assert(element.ul.li(index: 2).text.include? "Non Linear Animation (NLA) for independent movements")
    assert(element.ul.li(index: 3).text.include? "IK forward/inverse kinematics for fast poses")
    assert(element.ul.li(index: 4).text.include? "Sound synchronization")
    
    assert(@b.div(class: "span6", index: 9).img(alt: "rigging").exists?)
    
    assert(@b.div(class: "span6", index: 10).img(alt: "Sculpting in Blender").exists?) 
    
    element = @b.div(class: "span6", index: 11)
    
    assert(element.h1.text.include? "Sculpting")
    assert(element.p(index: 0).text.include? "Experience the joy of sculpting organic subjects using the built-in sculpting feature set of Blender.")
    assert(element.p(index: 1).text.include? "Sculpting in Blender includes:")
    assert(element.ul.li(index: 0).text.include? "20 different brush types")
    assert(element.ul.li(index: 1).text.include? "Multi-res sculpting support")
    assert(element.ul.li(index: 2).text.include? "Dynamic Topology sculpting")
    assert(element.ul.li(index: 3).text.include? "Mirrored sculpting")

    element = @b.div(class: "span6", index: 12)
      
    assert(element.h1.text.include? "Fast UV Unwrapping")
    assert(element.p(index: 0).text.include? "Easily unwrap your mesh right inside Blender, and use image textures or paint your own directly onto the model.")
    assert(element.p(index: 1).text.include? "Blender allows for:")
    assert(element.ul.li(index: 0).text.include? "Fast Cube, Cylinder, Sphere and Camera projections")
    assert(element.ul.li(index: 1).text.include? "Conformal and Angle Based unwrapping (with edge seams and vertex pinning)")
    assert(element.ul.li(index: 2).text.include? "Painting directly onto the mesh")
    assert(element.ul.li(index: 3).text.include? "Multiple UV layers")
    assert(element.ul.li(index: 4).text.include? "UV layout image exporting")
     
    assert(@b.div(class: "span6", index: 13).img(alt: "UV Unwrapping in Blender").exists?)
     
    assert(@b.div(class: "span6", index: 14).img(alt: "Compositing in Blender").exists?)
     
    assert(@b.div(class: "span6", index: 15).h1.text.include? "Full Compositor")
    assert(@b.div(class: "span6", index: 15).p(index: 0).text.include? "Blender comes with a fully fledged compositor built right in. That means no more exporting to third party programs, you can do it all without leaving the program.")
    assert(@b.div(class: "span6", index: 15).p(index: 1).text.include? "The compositor comes with:")
    assert(@b.div(class: "span6", index: 15).ul.li(index: 0).text.include? "Impressive library of nodes for creating camera fx, color grading, vignettes and much more")
    assert(@b.div(class: "span6", index: 15).ul.li(index: 1).text.include? "Render-layer support")
    assert(@b.div(class: "span6", index: 15).ul.li(index: 2).text.include? "Full compositing with images and video files")
    assert(@b.div(class: "span6", index: 15).ul.li(index: 3).text.include? "Ability to render to multiLayer OpenEXR files")
    assert(@b.div(class: "span6", index: 15).ul.li(index: 4).text.include? "Multi-threaded")
     
    assert(@b.div(class: "span6", index: 16).h1.text.include? "Amazing Simulations")
    assert(@b.div(class: "span6", index: 16).p(index: 0).text.include? "Whether you need a crumbling building, rain, fire, smoke, fluid, cloth or full on destruction, Blender delivers great looking results.")
    assert(@b.div(class: "span6", index: 16).p(index: 1).text.include? "Blender’s simulation tools include")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 0).text.include? "Fluid – Realistic water and fluid simulations.")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 1).text.include? "Smoke –  Billowing smoke with flames and scene interaction.")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 2).text.include? "Hair –  Beautiful wafts of hair that blows in the wind and interacts with collisions.")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 3).text.include? "Cloth – Amazingly realistic cloth simulations for clothing and environments")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 4).text.include? "Rigid Body Physics – Makes any object destructable and collidable")
    assert(@b.div(class: "span6", index: 16).ul.li(index: 5).text.include? "Particles – For creating things like rain, sparks and shrapnel")
     
    assert(@b.div(class: "span6", index: 17).img(alt: "463e785104").exists?)
     
    assert(@b.div(class: "span6", index: 18).img(alt: "Blender Game Engine Screenshot").exists?)
     
    assert(@b.div(class: "span6", index: 19).h1.text.include? "Game Creation")
    assert(@b.div(class: "span6", index: 19).p(index: 0).text.include? "Included in Blender is a complete game engine, allowing you to create a fully featured 3d game right inside Blender.")
    assert(@b.div(class: "span6", index: 19).p(index: 1).text.include? "The game engine includes:")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 0).text.include? "Ability to port your models to any third-party game engine")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 1).text.include? "Create or code your own game logic")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 2).text.include? "Full Bullet Physics integration")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 3).text.include? "Python scripting API for advanced control and AI")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 4).text.include? "Support for all OpenGLTM  dynamic lighting, toon shading, animated materials as well as Normal and Parallax Mapping")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 5).text.include? "Playback of games inside Blender without compiling or preprocessing")
    assert(@b.div(class: "span6", index: 19).ul.li(index: 6).text.include? "3D spatial audio using OpenAL")

    assert(@b.div(class: "span6", index: 20).h1.text.include? "Camera and Object tracking")
    assert(@b.div(class: "span6", index: 20).p(index: 0).text.include? "Blender now includes production ready camera and object tracking. Allowing you to import raw footage, track the footage, mask areas and see the camera movements live in your 3d scene. Eliminating the need to switch between programs.")
    assert(@b.div(class: "span6", index: 20).p(index: 1).text.include? "The Camera and Object Tracker includes:")
    assert(@b.div(class: "span6", index: 20).ul.li(index: 0).text.include? "Auto and manual tracking")
    assert(@b.div(class: "span6", index: 20).ul.li(index: 1).text.include? "Powerful camera reconstruction")
     assert(@b.div(class: "span6", index: 20).ul.li(index: 2).text.include? "Real-time preview of your tracked footage and 3d scene")
     assert(@b.div(class: "span6", index: 20).ul.li(index: 3).text.include? "Support for Planar tracking and Tripod solvers")

     assert(@b.div(class: "span6", index: 21).img(alt: "Camera tracking in Blender").exists?)
     
     assert(@b.div(class: "span6", index: 22).img(alt: "3057383d1a").exists?)
     
     assert(@b.div(class: "span6", index: 23).h1.text.include? "Library of Extensions")
     assert(@b.div(class: "span6", index: 23).p(index: 0).text.include? "With a large community of enthusiasts and developers, Blender comes loaded with a vast array of extensions that you can turn on or off easily.")
     assert(@b.div(class: "span6", index: 23).p(index: 1).text.include? "Some existing extensions include:")
     assert(@b.div(class: "span6", index: 23).ul.li(index: 0).text.include? "Generators for trees, terrain, ivy and clouds.")
     assert(@b.div(class: "span6", index: 23).ul.li(index: 1).text.include? "Fracture Objects.")
     assert(@b.div(class: "span6", index: 23).ul.li(index: 2).text.include? "3D Printing Toolbox.")
     assert(@b.div(class: "span6", index: 23).ul.li(index: 3).text.include? "Rigify meta-rigging system.")
     assert(@b.div(class: "span6", index: 23).ul.li(index: 4).text.include? "Import and Export format support for AfterEffects, DirectX, Unreal Game Engine and more!")
     
     assert(@b.div(class: "span6", index: 23).p(index: 2).text.include? "Plus many more that you can download here")
     
     assert(@b.div(class: "span6", index: 24).h1.text.include? "Flexible Interface")
     assert(@b.div(class: "span6", index: 24).p(index: 0).text.include? "Novice and advanced users will love the ability to customize their layout completely. From simply splitting their viewport, to fully customizing it with python scripting, blender works for you.")
     assert(@b.div(class: "span6", index: 24).p(index: 1).text.include? "Blender’s interface also offers:")
     assert(@b.div(class: "span6", index: 24).ul.li(index: 0).text.include? "Consistency across all platforms")
     assert(@b.div(class: "span6", index: 24).ul.li(index: 1).text.include? "No disruptive pop-up windows")
     assert(@b.div(class: "span6", index: 24).ul.li(index: 2).text.include? "Crisp text (support for retina on OSX)")
     
     assert(@b.div(class: "span6", index: 25).img(alt: "Blender's UI").exists?)
     
     assert(@b.div(class: "span6", index: 26).img(alt: "Exporting in Blender").exists?)
     
    assert(@b.div(class: "span6", index: 27).h1.text.include? "File Formats")
    assert(@b.div(class: "span6", index: 27).p(index: 0).text.include? "Blender comes packed with import/export support for many different programs.")
    assert(@b.div(class: "span6", index: 27).p(index: 1).text.include? "Including:")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 0).text.include? "Image")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 0).text.include? "JPEG, JPEG2000, PNG, TARGA, OpenEXR, DPX, Cineon, Radiance HDR, SGI Iris, TIFF")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 1).text.include? "Video")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 1).text.include? "AVI, MPEG and Quicktime (on OSX).")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 2).text.include? "3D")
    assert(@b.div(class: "span6", index: 27).ul.li(index: 2).text.include? "3D Studio (3DS), COLLADA (DAE), Filmbox (FBX), Autodesk (DXF), Wavefront (OBJ), DirectX (x), Lightwave (LWO), Motion Capture (BVH), SVG, Stanford PLY, STL, VRML, VRML97, X3D.")
     
    @b.div(class: "span12 sitemap", index: 0).li(index: 2).click  
      
    assert(@b.li(class: "page_item page-item-3914").exists?)
    @b.li(class: "page_item page-item-3914").click
    assert(@b.li(class: "page_item page-item-597").exists?)
    @b.li(class: "page_item page-item-597").click
    assert(@b.li(class: "page_item page-item-3459 page_item_has_children").exists?)
    @b.li(class: "page_item page-item-3459 page_item_has_children").click
    assert(@b.li(class: "page_item page-item-2937").exists?)
    @b.li(class: "page_item page-item-2937").click
  end 
  
  def test_download_page    
    assert(@b.li(id: "menu-item-125").exists?)    
    @b.li(id: "menu-item-125").click
    assert_equal(@b.title.lstrip, "Download - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert(@b.div(id:"windows").exists?)
    assert(@b.div(class: "carousel-caption bottom left", index: 0).h1.text.include? "Blender 2.70")
    #assert(@b.div(class: "introduction", index: 0).h1.text.include? "Download Blender 2.70a for Windows")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a is the latest stable release from the Blender Foundation")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "To download it, please select your platform and location. Blender is Free & Open Source Software")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a was released on April 11, 2014")
    assert(@b.div(class: "introduction", index: 0).p(index: 2).text.include? "The release logs for this release can be found here.")
    
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 0).h4.text.include? "Open Animation Film - Crowd funding now!")
    
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 0).img(alt: "gb-promo2").exists?)
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 1).h4.text.include? "Donate to the Blender Foundation")

    assert(@b.div(class: "clearfix").exists?)
    
   
    
    assert(@b.div(class:"depth_text").exists?)
    assert(@b.i(class:"icon-download").exists?)
    
    assert(@b.div(class: "well", index: 0).h3.text.include? "How do I install Blender?")
    assert(@b.div(class: "well", index: 0).text.include? "To install Blender, download the appropriate package for your platform. The Windows version comes with an optional self-extracting installer, for other operating systems you can simply unpack the compressed file to the location of your choice.")
    assert(@b.div(class: "well", index: 0).text.include? "Provided the Blender binary is in the original extracted directory, Blender will run straight out of the box. No system libraries or system preferences are altered.")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4.text.include? "Blender")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 0).text.include? "Download")
    @b.div(class: "span12 sitemap", index: 0).li(index: 0).click
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 1).text.include? "Source code")
    @b.div(class: "span12 sitemap", index: 0).li(index: 1).click
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 2).text.include? "Features")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 3).text.include? "Documentation")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 1).text.include? "Organization")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 4).text.include? "Foundation")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 5).text.include? "Institute")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 6).text.include? "Developers")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 7).text.include? "Partners Network")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 2).text.include? "Get Involved")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 8).text.include? "Software")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 9).text.include? "Websites and docs")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 10).text.include? "Donations")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 11).text.include? "Conferences")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 3).text.include? "blender.org")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 12).text.include? "News")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 13).text.include? "Contact us")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 14).text.include? "Trademark and logo")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 15).text.include? "Website license")
    
    
    @b.div(class: "container download", index: 0).li(index: 0).click
    @b.div(class: "container download", index: 0).li(index: 1).click
    @b.div(class: "container download", index: 0).li(index: 2).click
    @b.div(class: "container download", index: 0).li(index: 3).click
    @b.div(class: "container download", index: 0).li(index: 4).click 
    
    assert(@b.li(class: "page_item page-item-127").exists?)
    @b.li(class: "page_item page-item-127").click
    assert(@b.li(class: "page_item page-item-112").exists?)
    @b.li(class: "page_item page-item-112").click
    assert(@b.li(class: "page_item page-item-157").exists?)
    @b.li(class: "page_item page-item-157").click
    @b.div(class: "span12 sitemap", index: 0).li(index: 3).click    
     
  end
  
  def test_support_page
    @b.li(id: 'menu-item-126').click
    assert_equal(@b.title.lstrip, "Support - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/support/")
  end
 
  def test_documentation_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 3).click   
  end
 
  def test_foundation_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 4).click   
  end
 
  def test_institute_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 5).click   
  end
  
  def test_developers_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 6).click 
  end
  
  def test_partners_network_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 7).click  
  end
  
  def test_software_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 8).click  
  end
  
  def test_websites_and_docs_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 9).click  
  end
  
  def test_donation_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 10).click 
  end
  
  def test_conference_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 11).click  
  end
  
  def test_news_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 12).click  
  end
  
  def test_contact_us_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 13).click  
  end
  
  def test_trademark_and_logo_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 14).click  
  end
  
  def test_website_licence_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 15).click  
  end  
  
  def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end

end