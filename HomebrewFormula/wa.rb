# https://github.com/wa-lang/wa/releases/tag/v0.5.1

# 0514e4b4fff843653d4968dfff9033f9da15b45f368db5c08d8dc643fff593ca  wa_0.5.1_windows_arm64.tar.gz
# 65fd7d979cd989c5f1076d70069953b75db564f0b655c61095a2f759275a1ec8  wa_0.5.1_linux_386.tar.gz
# 6e15d809385a6c25885557dbe50b076da0454ea357e5dd472d1a8258501d9c24  wa_0.5.1_windows_386.tar.gz
# 77c0a551d4ab8c24cc382eba09989e7f9ccfcae32f18dd182a08df30902ebc3d  wa_0.5.1_windows_amd64.tar.gz
# 7e811c89bf4284cc230811cc0393c08405a039b2ec6b4a02c64d3c627c57a8c7  wa_0.5.1_darwin_amd64.tar.gz
# 9f9e6796151edb82ac6473a8b1cc555b6177095be6924305882ea33baaa16223  wa_0.5.1_darwin_arm64.tar.gz
# b615d2f966449acce31615b748de51904387eeb00aada9cb189607cbf6195042  wa_0.5.1_linux_arm64.tar.gz
# ba0d6dfc145a674d41bfa44ac6e6bf63abea5b18c22fbb40f9bc57dfc389fb81  wa_0.5.1_linux_amd64.tar.gz

class Wa < Formula
	desc "The Wa Programming Language"
	homepage "https://github.com/wa-lang/wa"
	version "0.5.1"
	license "AGPL-v3 License"
    
	on_macos do
	  if Hardware::CPU.intel?
		url "https://github.com/wa-lang/wa/releases/download/v0.5.1/wa_0.5.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
		sha256 "7e811c89bf4284cc230811cc0393c08405a039b2ec6b4a02c64d3c627c57a8c7"
  
		def install
		  bin.install "wa"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://github.com/wa-lang/wa/releases/download/v0.5.1/wa_0.5.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
		sha256 "9f9e6796151edb82ac6473a8b1cc555b6177095be6924305882ea33baaa16223"
  
		def install
		  bin.install "wa"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.intel?
		url "https://github.com/wa-lang/wa/releases/download/v0.5.1/wa_0.5.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
		sha256 "ba0d6dfc145a674d41bfa44ac6e6bf63abea5b18c22fbb40f9bc57dfc389fb81"
  
		def install
		  bin.install "wa"
		end
	  end
	end
  
	test do
	  system "#{bin}/wa -v"
	end
  end