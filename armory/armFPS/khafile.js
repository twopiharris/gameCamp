// Auto-generated
let project = new Project('armFPS');

project.addSources('Sources');
project.addLibrary("C:/Users/13175/Desktop/ArmorySDK/armory");
project.addLibrary("C:/Users/13175/Desktop/ArmorySDK/iron");
project.addLibrary("C:/Users/13175/Desktop/ArmorySDK/lib/haxebullet");
project.addAssets("C:/Users/13175/Desktop/ArmorySDK/lib/haxebullet/ammo/ammo.js", { notinlist: true });
project.addParameter('arm.FirstPersonController');
project.addParameter("--macro keep('arm.FirstPersonController')");
project.addParameter('arm.node.FireBullet');
project.addParameter("--macro keep('arm.node.FireBullet')");
project.addParameter('armory.trait.physics.bullet.PhysicsWorld');
project.addParameter("--macro keep('armory.trait.physics.bullet.PhysicsWorld')");
project.addParameter('armory.trait.physics.bullet.RigidBody');
project.addParameter("--macro keep('armory.trait.physics.bullet.RigidBody')");
project.addShaders("build_armFPS/compiled/Shaders/*.glsl", { noembed: false});
project.addAssets("build_armFPS/compiled/Assets/**", { notinlist: true });
project.addAssets("build_armFPS/compiled/Shaders/*.arm", { notinlist: true });
project.addAssets("C:/Users/13175/Desktop/ArmorySDK/armory/Assets/brdf.png", { notinlist: true });
project.addAssets("C:/Users/13175/Desktop/ArmorySDK/armory/Assets/smaa_area.png", { notinlist: true });
project.addAssets("C:/Users/13175/Desktop/ArmorySDK/armory/Assets/smaa_search.png", { notinlist: true });
project.addAssets("Pew_Pew-DKnight556-1379997159 (1).wav", { notinlist: true , quality: 0.8999999761581421});
project.addDefine('arm_deferred');
project.addDefine('arm_csm');
project.addDefine('rp_hdr');
project.addDefine('rp_renderer=Deferred');
project.addDefine('rp_shadowmap');
project.addDefine('rp_shadowmap_cascade=1024');
project.addDefine('rp_shadowmap_cube=512');
project.addDefine('rp_background=World');
project.addDefine('rp_render_to_texture');
project.addDefine('rp_compositornodes');
project.addDefine('rp_antialiasing=SMAA');
project.addDefine('rp_supersampling=1');
project.addDefine('rp_ssgi=SSAO');
project.addDefine('arm_audio');
project.addDefine('arm_physics');
project.addDefine('arm_bullet');
project.addDefine('arm_soundcompress');
project.addDefine('arm_skin');
project.addDefine('arm_particles');
project.addDefine('arm_resizable');


resolve(project);
