class TrezorAgent < Formula
  include Language::Python::Virtualenv

  desc "Hardware SSH/GPG agent for Trezor, Keepkey & Ledger"
  homepage "https://github.com/romanz/trezor-agent"
  url "https://files.pythonhosted.org/packages/11/bc/aa2bdee9cd81af9ecde0a9e8b5c6c6594a4a0ee7ade950b51a39d54f9e63/trezor_agent-0.12.0.tar.gz"
  sha256 "e08ca5a54bd7658017164c8518d6cdf623d3b077dfdccfd12f612af5fef05855"
  license "LGPL-3.0-only"
  revision 2

  bottle do
    rebuild 4
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "63f143d7c24c62f6c6ff9731f72155054e49c60d46915c569ef51edf96f6066f"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "aa62ddf992508c99169762ff51157ddb66bc92c7b54f5c10dc98bc6d1ce0dee5"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "4ea33ea359a69ba46711c984f1c4982d46b3dde7317dc329df366192b8200f8e"
    sha256 cellar: :any_skip_relocation, sonoma:         "07b05a880c8bf5121535b4b19f0dfd712efffa0b02ffcef19503371ffac05000"
    sha256 cellar: :any_skip_relocation, ventura:        "420865d8596b9816eddba23ca25efe0ac88ef83ecc85b5198e7d3061bae78eee"
    sha256 cellar: :any_skip_relocation, monterey:       "b22396f248a8c11d8dd21c40745051d063d48d88c9ae511083fdf547a9a601c8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "056fb13f79cb3e17a4bd4f25d64d36740012f9ccc4af54621be57dac2cb3325c"
  end

  depends_on "cffi"
  depends_on "docutils"
  depends_on "libusb"
  depends_on "pillow"
  depends_on "pycparser"
  depends_on "python-certifi"
  depends_on "python-cryptography"
  depends_on "python-setuptools"
  depends_on "python-typing-extensions"
  depends_on "python@3.12"
  depends_on "six"

  resource "backports-shutil-which" do
    url "https://files.pythonhosted.org/packages/a0/22/51b896a4539f1bff6a7ab8514eb031b9f43f12bff23f75a4c3f4e9a666e5/backports.shutil_which-3.5.2.tar.gz"
    sha256 "fe39f567cbe4fad89e8ac4dbeb23f87ef80f7fe8e829669d0221ecdb0437c133"
  end

  resource "bech32" do
    url "https://files.pythonhosted.org/packages/ab/fe/b67ac9b123e25a3c1b8fc3f3c92648804516ab44215adb165284e024c43f/bech32-1.2.0.tar.gz"
    sha256 "7d6db8214603bd7871fcfa6c0826ef68b85b0abd90fa21c285a9c5e21d2bd899"
  end

  resource "bleak" do
    url "https://files.pythonhosted.org/packages/6a/c0/3aca655fa43b8ff5340d99fac4e67061f53f42f092fc847bdd0559d67846/bleak-0.21.1.tar.gz"
    sha256 "ec4a1a2772fb315b992cbaa1153070c7e26968a52b0e2727035f443a1af5c18f"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/cf/ac/e89b2f2f75f51e9859979b56d2ec162f7f893221975d244d8d5277aa9489/charset-normalizer-3.3.0.tar.gz"
    sha256 "63563193aec44bce707e0c5ca64ff69fa72ed7cf34ce6e11d5127555756fd2f6"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "configargparse" do
    url "https://files.pythonhosted.org/packages/70/8a/73f1008adfad01cb923255b924b1528727b8270e67cb4ef41eabdc7d783e/ConfigArgParse-1.7.tar.gz"
    sha256 "e7067471884de5478c58a511e529f0f9bd1c66bfef1dea90935438d6c23306d1"
  end

  resource "construct" do
    url "https://files.pythonhosted.org/packages/e0/b7/a4a032e94bcfdff481f2e6fecd472794d9da09f474a2185ed33b2c7cad64/construct-2.10.68.tar.gz"
    sha256 "7b2a3fd8e5f597a5aa1d614c3bd516fa065db01704c72a1efaaeec6ef23d8b45"
  end

  resource "construct-classes" do
    url "https://files.pythonhosted.org/packages/83/d3/e42d3cc9eab95995d5349ec51f6d638028b9c21e7e8ac6bea056b36438b8/construct-classes-0.1.2.tar.gz"
    sha256 "72ac1abbae5bddb4918688713f991f5a7fb6c9b593646a82f4bf3ac53de7eeb5"
  end

  resource "ecdsa" do
    url "https://files.pythonhosted.org/packages/ff/7b/ba6547a76c468a0d22de93e89ae60d9561ec911f59532907e72b0d8bc0f1/ecdsa-0.18.0.tar.gz"
    sha256 "190348041559e21b22a1d65cee485282ca11a6f81d503fddb84d5017e9ed1e49"
  end

  resource "ecpy" do
    url "https://files.pythonhosted.org/packages/e0/48/3f8c1a252e3a46fd04e6fabc5e11c933b9c39cf84edd4e7c906e29c23750/ECPy-1.2.5.tar.gz"
    sha256 "9635cffb9b6ecf7fd7f72aea1665829ac74a1d272006d0057d45a621aae20228"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/8f/2e/cf6accf7415237d6faeeebdc7832023c90e0282aa16fd3263db0eb4715ec/future-0.18.3.tar.gz"
    sha256 "34a17436ed1e96697a86f9de3d15a3b0be01d8bc8de9c1dffd59fb8234ed5307"
  end

  resource "hidapi" do
    url "https://files.pythonhosted.org/packages/95/0e/c106800c94219ec3e6b483210e91623117bfafcf1decaff3c422e18af349/hidapi-0.14.0.tar.gz"
    sha256 "a7cb029286ced5426a381286526d9501846409701a29c2538615c3d1a612b8be"

    # patch to build with Cython 3+, remove in next release
    patch do
      url "https://github.com/trezor/cython-hidapi/commit/749da6931f57c4c30596de678125648ccfd6e1cd.patch?full_index=1"
      sha256 "e3d70eb9850c7be0fdb0c31bf575b33be5c5848def904760a6ca9f4c3824f000"
    end
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "keepkey" do
    url "https://files.pythonhosted.org/packages/30/38/558d9a2dd1fd74f50ff4587b4054496ffb69e21ab1138eb448f3e8e2f4a7/keepkey-6.3.1.tar.gz"
    sha256 "cef1e862e195ece3e42640a0f57d15a63086fd1dedc8b5ddfcbc9c2657f0bb1e"
  end

  resource "keepkey-agent" do
    url "https://files.pythonhosted.org/packages/65/72/4bf47a7bc8dc93d2ac21672a0db4bc58a78ec5cee3c4bcebd0b4092a9110/keepkey_agent-0.9.0.tar.gz"
    sha256 "47c85de0c2ffb53c5d7bd2f4d2230146a416e82511259fad05119c4ef74be70c"
  end

  resource "ledger-agent" do
    url "https://files.pythonhosted.org/packages/a3/c9/ac7546d6168662af356493231ca8818bdf8ffd05238a68fe5085fd9e6358/ledger_agent-0.9.0.tar.gz"
    sha256 "2265ba9c6a4594ff798fe480856ea36bfe6d8ae7ba2190b74f9666510530f20f"
  end

  resource "ledgerblue" do
    url "https://files.pythonhosted.org/packages/c0/bb/b9d96530f4a94bec5d76116b47e9e7c8dcc362a28b22ad6faa1d25c1d9ec/ledgerblue-0.1.48.tar.gz"
    sha256 "2d544d72c4e624e477cd30616ca578574cc2424d2c93f51fea44a67db02181f6"
  end

  resource "libagent" do
    url "https://files.pythonhosted.org/packages/4e/0f/b48045dd9d12eea5c092aaad4c251443384da700c8d85349fc3c554a2320/libagent-0.14.7.tar.gz"
    sha256 "8cea67fbe94216f61dbc22fac9d3d749b41b9cfc11393a76b0b0013c204adb98"
  end

  resource "libusb1" do
    url "https://files.pythonhosted.org/packages/f4/83/59bf75e74e0c4859ea63eae0c7da660c1dcb78b31667d4a5f735d52f5974/libusb1-3.0.0.tar.gz"
    sha256 "5792a9defee40f15d330a40d9b1800545c32e47ba7fc66b6f28f133c9fcc8538"
  end

  resource "lockfile" do
    url "https://files.pythonhosted.org/packages/17/47/72cb04a58a35ec495f96984dddb48232b551aafb95bde614605b754fe6f7/lockfile-0.12.2.tar.gz"
    sha256 "6aed02de03cba24efabcd600b30540140634fc06cfa603822d508d5361e9f799"
  end

  resource "mnemonic" do
    url "https://files.pythonhosted.org/packages/f8/8d/d4dc2b2bddfeb57cab4404a41749b577f578f71140ab754da9afa8f5c599/mnemonic-0.20.tar.gz"
    sha256 "7c6fb5639d779388027a77944680aee4870f0fcd09b1e42a5525ee2ce4c625f6"
  end

  resource "ndeflib" do
    url "https://files.pythonhosted.org/packages/58/f8/cd11ec90bd6a6bcf35bb80e4e29fdebe8bf2b05e869a93ca1e41d85518d0/ndeflib-0.3.3.tar.gz"
    sha256 "1d56828558b9b16f2822a4051824346347b66adf5320ea86070748b6f2454a88"
  end

  resource "nfcpy" do
    url "https://files.pythonhosted.org/packages/38/a2/cce3ab796e84bea5098c4231ff56e523cb182c58a21280ccff0d75e693e6/nfcpy-1.0.4.tar.gz"
    sha256 "e5bd08d0119e1d9e95d05215f838b07b44d03b651adddc523cc1a38892b8af6b"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/52/5c/f2c0778278259089952f94b0884ca27a001a17ffbd992ebe30c841085f4c/protobuf-4.24.4.tar.gz"
    sha256 "5a70731910cd9104762161719c3d883c960151eea077134458503723b60e3667"
  end

  resource "pycryptodome" do
    url "https://files.pythonhosted.org/packages/1a/72/acc37a491b95849b51a2cced64df62aaff6a5c82d26aca10bc99dbda025b/pycryptodome-3.19.0.tar.gz"
    sha256 "bc35d463222cdb4dbebd35e0784155c81e161b9284e567e7e933d722e533331e"
  end

  resource "pycryptodomex" do
    url "https://files.pythonhosted.org/packages/14/c9/09d5df04c9f29ae1b49d0e34c9934646b53bb2131a55e8ed2a0d447c7c53/pycryptodomex-3.19.0.tar.gz"
    sha256 "af83a554b3f077564229865c45af0791be008ac6469ef0098152139e6bd4b5b6"
  end

  resource "pydes" do
    url "https://files.pythonhosted.org/packages/92/5e/0075a35ea5d307a182b0963900298b209ea2f363ccdd5a27e8cb04c58410/pyDes-2.0.1.tar.gz"
    sha256 "e2ab8e21d2b83e90d90dbfdcb6fb8ac0000b813238b7ecaede04f8435c389012"
  end

  resource "pyelftools" do
    url "https://files.pythonhosted.org/packages/84/05/fd41cd647de044d1ffec90ce5aaae935126ac217f8ecb302186655284fc8/pyelftools-0.30.tar.gz"
    sha256 "2fc92b0d534f8b081f58c7c370967379123d8e00984deb53c209364efd575b40"
  end

  resource "pymsgbox" do
    url "https://files.pythonhosted.org/packages/7d/ff/4c6f31a4f08979f12a663f2aeb6c8b765d3bd592e66eaaac445f547bb875/PyMsgBox-1.0.9.tar.gz"
    sha256 "2194227de8bff7a3d6da541848705a155dcbb2a06ee120d9f280a1d7f51263ff"
  end

  resource "pynacl" do
    url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
    sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/48/d9/a13566ce8914746557b9e8637a5abe1caae86ed202b0fb072029626b8bb1/pyobjc-core-9.2.tar.gz"
    sha256 "d734b9291fec91ff4e3ae38b9c6839debf02b79c07314476e87da8e90b2c68c3"
  end

  resource "pyobjc-framework-cocoa" do
    url "https://files.pythonhosted.org/packages/38/91/c54fdffda6d7cfad67ff617f19001163658d50bc72376d1584e691cf4895/pyobjc-framework-Cocoa-9.2.tar.gz"
    sha256 "efd78080872d8c8de6c2b97e0e4eac99d6203a5d1637aa135d071d464eb2db53"
  end

  resource "pyobjc-framework-corebluetooth" do
    url "https://files.pythonhosted.org/packages/f1/7a/239d5b1ac63056bb3e754c1f189f3e17051f3d2c3368c339d15b34f2ac48/pyobjc-framework-CoreBluetooth-9.2.tar.gz"
    sha256 "cb2481b1dfe211ae9ce55f36537dc8155dbf0dc8ff26e0bc2e13f7afb0a291d1"
  end

  resource "pyobjc-framework-libdispatch" do
    url "https://files.pythonhosted.org/packages/f1/73/455a8b92d3fc5b47b22e8055b6df19be96b2aa13715676e70a9cb7ed00b2/pyobjc-framework-libdispatch-9.2.tar.gz"
    sha256 "542e7f7c2b041939db5ed6f3119c1d67d73ec14a996278b92485f8513039c168"
  end

  resource "pyserial" do
    url "https://files.pythonhosted.org/packages/1e/7d/ae3f0a63f41e4d2f6cb66a5b57197850f919f59e558159a4dd3a818f5082/pyserial-3.5.tar.gz"
    sha256 "3c77e014170dfffbd816e6ffc205e9842efb10be9f58ec16d3e8675b4925cddb"
  end

  resource "python-daemon" do
    url "https://files.pythonhosted.org/packages/84/50/97b81327fccbb70eb99f3c95bd05a0c9d7f13fb3f4cfd975885110d1205a/python-daemon-3.0.1.tar.gz"
    sha256 "6c57452372f7eaff40934a1c03ad1826bf5e793558e87fef49131e6464b4dae5"
  end

  resource "python-gnupg" do
    url "https://files.pythonhosted.org/packages/98/62/7737485f44bd4d7d904f4094372f4119195865b29f119fa51a98e121a13a/python-gnupg-0.5.1.tar.gz"
    sha256 "5674bad4e93876c0b0d3197e314d7f942d39018bf31e2b833f6788a6813c3fb8"
  end

  resource "python-u2flib-host" do
    url "https://files.pythonhosted.org/packages/4d/3d/0997fe8196f5be24b7015708a0744a0ef928c4fb3c8bc820dc3328208ef2/python-u2flib-host-3.0.3.tar.gz"
    sha256 "ab678b9dc29466a779efcaa2f0150dce35059a7d17680fc26057fa599a53fc0a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/41/6c/a536cc008f38fd83b3c1b98ce19ead13b746b5588c9a0cb9dd9f6ea434bc/semver-3.0.2.tar.gz"
    sha256 "6253adb39c70f6e51afed2fa7152bcd414c411286088fb4b9effb133885ab4cc"
  end

  resource "simple-rlp" do
    url "https://files.pythonhosted.org/packages/b6/b5/d379d077e0c38c2b37c64dedfaef16099299e401f6323fc170d16d6c7d43/simple-rlp-0.1.3.tar.gz"
    sha256 "2df1d2b769f0a0177d26231ab8be16e65e3546b17bb0a9a490efd3517c082876"
  end

  resource "trezor" do
    url "https://files.pythonhosted.org/packages/36/d5/e9bca47144ab56148b3c699f52f2576d00f65a359b0c21e6870b0f527f56/trezor-0.13.7.tar.gz"
    sha256 "76875e5886017dc94f51bbb411f927f103bd9e3ecbf0754d5e44a353898149e0"
  end

  resource "unidecode" do
    url "https://files.pythonhosted.org/packages/80/5d/f156f6a7254ecc0549de0eb75f786d2df724c0310b97c825383517d2c98d/Unidecode-1.3.7.tar.gz"
    sha256 "3c90b4662aa0de0cb591884b934ead8d2225f1800d8da675a7750cbc3bd94610"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/af/47/b215df9f71b4fdba1025fc05a77db2ad243fa0926755a52c5e71659f4e3c/urllib3-2.0.7.tar.gz"
    sha256 "c97dfde1f7bd43a71c8d2a58e369e9b2bf692d1334ea9f9cae55add7d0dd0f84"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/cb/eb/19eadbb717ef032749853ef5eb1c28e9ca974711e28bccd4815913ba5546/websocket-client-1.6.4.tar.gz"
    sha256 "b3324019b3c28572086c4a319f91d1dcd44e6e11cd340232978c684a7650d0df"
  end

  resource "wheel" do
    url "https://files.pythonhosted.org/packages/a4/99/78c4f3bd50619d772168bec6a0f34379b02c19c9cced0ed833ecd021fd0d/wheel-0.41.2.tar.gz"
    sha256 "0c5ac5ff2afb79ac23ab82bab027a0be7b5dbcf2e54dc50efe4bf507de1f7985"
  end

  def install
    ENV.append "CFLAGS", "-I#{Formula["libusb"].include}/libusb-1.0"
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install resources.reject { |r| OS.mac? ? r.name == "dbus-fast" : r.name.start_with?("pyobjc") }
    venv.pip_install_and_link buildpath
  end

  test do
    output = shell_output("#{bin}/trezor-agent identity@myhost 2>&1", 1)
    assert_match "Trezor not connected", output
  end
end
