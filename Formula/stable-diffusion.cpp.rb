class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-929-3f8527a/sd-master-929-3f8527a-bin-macos-metal-arm64.zip"
  version "0.0.929_3f8527a"
  sha256 "90fae3c7d5998d812df88e8ff4dc43f0294f7d79d94b7ff9101d69f43a7c48bf"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
