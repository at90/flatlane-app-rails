class Builder < ActiveRecord::Base
	 mount_uploader :avatar, AvatarUploader 
end
