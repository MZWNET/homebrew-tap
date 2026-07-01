class StableDiffusionCpp < Formula
  desc "Diffusion model(SD,Flux,Wan,Qwen Image,Z-Image,...) inference in pure C/C++"
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  url "https://github.com/MZWNET/actions/releases/download/sd-master-741-484baa4/sd-master-741-484baa4-bin-macos-metal-arm64.zip"
  version "0.0.741_484baa4"
  sha256 "43b0472f670cad189e863d1bf38b0a4ce05ae2953c0e8f8ac58ea2430ef3b4d3"
  license "MIT"
  head "https://github.com/leejet/stable-diffusion.cpp.git"

  depends_on "libomp"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"sd-cli"
    bin.install_symlink libexec/"sd-server"
  end
end
