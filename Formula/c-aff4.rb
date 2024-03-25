class CAff4 < Formula
  desc "Advanced Forensic Format"
  homepage "https://github.com/dlemper/c-aff4"
  url "https://github.com/dlemper/c-aff4.git"
  license "Apache"
  revision 1

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "snappy" => :build
  depends_on "lz4" => :build
  depends_on "raptor" => :build
  depends_on "tclap" => :build
  depends_on "uriparser" => :build
  depends_on "spdlog" => :build
  depends_on "yaml-cpp" => :build
  depends_on "pkg-config" => :build

  def install
    system "./autogen.sh"
    system "./configure", *std_configure_args
    system "make", "install"
  end

  test do
    system "#{bin}/aff4imager", "--version"
  end
end