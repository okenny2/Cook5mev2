class Cook < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true
	has_many :dishes
	has_many :diets
	has_many :testimonials 

   IMAGES = [
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIDlbqBP0X_5TyeB00tmTgdgQqxQEENKM_ekNCpDAY4DSlika7",
	   	    	"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS7GMjvtxbFbjFO5zD27ml4hx2fe-UuNhhm-2dc0ZTfP-HKis7P",
	   	    	"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQvLBAhiRl2yM1rKR4k5rfrZOvlBsTYpo1w7lRMxPikDuHZp1R6",
	   	    	"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR35a-LK8JUf2R2GyKUhqB3i-5Yz6U9GT8xDM3ynIZLgvkQAeh6",
	   	    	"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQicqtgBcaEkgQSXlUHC3ewd6IZnnLKWzoMsk6Ad_158ptc_c4xHQ",
	   	    	"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQChW2U7_8Ixu3zrrfyovbydwBhHblqQIPEFWuekevx_RIgZlcYCQ",
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTdq41pC95W5U4Ju7_0XRPcbK7A14YJUicQsKHibiXQj4QCcdH",
	   	    	"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR4g7fAHqA-n9ZPLsOIDjIamHAGR-6F4BsUtJevQeYV7Eyifo1DlQ",
	   	    	"https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSD17Of7Vxxv6HsxSJjGzrdA__Pc7vgN0wlXWaE_vLtiRbKR3B_",
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5xSTsmP_3NiUrRSvcCx1mrRSMyLTrLdjJkcKINBXNVx3ew0H8Ww",
	   	    	"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTks-NzNg3cqSyYcUDWPGZ2crhwAqs6GhsAeyMtERs4Q14Z7hb7",
	   	    	"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRGQl1lVDJO4Sj7JI3TFBmr7Ma7STkTkCsAZ3Z3uMzykmveU-Mw",
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMXyAgxNtHtKOQCD44Dt6Aee5k-yuwc4e18014XXCvzRrZif2jZQ",
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTXAqCrq6_QXq9LlX2doKfuqXXYvEILG85TxT_1dFFNK0OrUQ3xg",
	   	    	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPp56thset2wmBF-5OK2ppLwB_CU5Tn9X_yidcxm_YgDXL6fGEQQ",
	   	    	 ]


end
