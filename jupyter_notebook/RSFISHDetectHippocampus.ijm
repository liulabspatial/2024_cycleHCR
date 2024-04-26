runs = 39;
positions = 2;
folder = "X:/Hippo_registration_crop/padded/";

for (t = 32; t <= runs; t++)
{
	if ( t < 10 ) {
		t0 = "t0"+t;
	}
	else {
		t0 = "t"+t;
	}
	
	for (i = 0; i <= positions; i++)
	{
		file = folder + "warped_ref_t15_"+t0+"_c"+i+"_s2_padded_crop_padded";
		open(file+".tiff");
		rename("input");
		
		selectWindow("input");
		setMinAndMax(0, 300);
		
		run("RS-FISH", "image=input mode=Advanced anisotropy=1.0000 robust_fitting=RANSAC use_anisotropy spot_intensity=[Linear Interpolation] image_min=0 image_max=300 sigma=0.99400 threshold=0.00336 support=4 min_inlier_ratio=0.25 max_error=1.97 spot_intensity_threshold=0 background=[No background subtraction] background_subtraction_max_error=0.05 background_subtraction_min_inlier_ratio=0.10 results_file="+file+".csv use_multithreading num_threads=60 block_size_x=128 block_size_y=128 block_size_z=69");
		close("input");
	}
}


