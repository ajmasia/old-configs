with import <nixpkgs> { };

# { lib, stdenv, fetchurl, appimageTools, makeWrapper, electron, libsecret }:

stdenv.mkDerivation rec {
  pname = "bazecor";
  version = "0.3.4";

  src = fetchurl {
    url = "https://github.com/Dygmalab/Bazecor/releases/download/v${version}/Bazecor-${version}.AppImage";
    sha256 = "75680b07dc11d59778d03e78efd51c0928f1d333d65e6c3a412d04ac2ae61ff7";
  };

  appimageContents = appimageTools.extractType2 {
    name = "${pname}-${version}";
    inherit src;
  };

  dontUnpack = true;
  dontConfigure = true;
  dontBuild = true;

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin $out/share/${pname} $out/share/applications $out/share/icons/hicolor/0x0
    cp -a ${appimageContents}/{locales,resources} $out/share/${pname}
    cp -a ${appimageContents}/bazecor.desktop $out/share/applications/${pname}.desktop
    cp -a ${appimageContents}/usr/share/icons/hicolor/0x0/apps $out/share/icons/hicolor/0x0
    substituteInPlace $out/share/applications/${pname}.desktop \
      --replace 'Exec=AppRun' 'Exec=${pname}'
    runHook postInstall
  '';

  postFixup = ''
    makeWrapper ${electron}/bin/electron $out/bin/${pname} \
      --add-flags $out/share/${pname}/resources/app.asar \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath [ stdenv.cc.cc libsecret ]}"
  '';

  meta = with lib; {
    homepage = "https://dygma.com/";
    description = "Dygma Raise Keyboard";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfree;
    # maintainers = with maintainers; [ i077 kylesferrazza ];
  };
}
