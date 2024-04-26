runs = 88;
positions = 2;
folder = "X:/Jun/bigstream_test/";

for (t = 79; t <= runs; t++)
{
	if ( t < 10 ) {
		t0 = "t0"+t;
	}
	else {
		t0 = "t"+t;
	}
	
	for (i = 0; i <= positions; i++)
	{
		file = folder + "affine_ref_t16_"+t0+"_c"+i;
		open(file+".tiff");
		rename("input");
		
		selectWindow("input");
		setMinAndMax(0, 300);
		
		run("RS-FISH", "image=input mode=Advanced anisotropy=1.0000 robust_fitting=RANSAC compute_min/max use_anisotropy browse="+file+".csv sigma=0.994 threshold=0.0023 support=4 min_inlier_ratio=0.18 max_error=1.21 spot_intensity_threshold=0 background=[No background subtraction] background_subtraction_max_error=0.05 background_subtraction_min_inlier_ratio=0.10 results_file="+file+".csv use_multithreading num_threads=60 block_size_x=128 block_size_y=128 block_size_z=69");
		close("input");
	}
}

