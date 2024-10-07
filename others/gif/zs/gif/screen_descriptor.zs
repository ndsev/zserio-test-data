package gif.screen_descriptor;

import gif.gif_version.GifVersion;
import gif.rgb_color.RgbColor;

struct ScreenDescriptor(GifVersion version)
{
    uint16      width;
    uint16      height;

    bit:1       globalColorMapFollows;
    bit:3       bitsOfColorResolution;
    bit:1       null1 if version == GifVersion.V87A : null1 == 0;
    bit:1       sortFlag if version == GifVersion.V89A;
    bit:3       bitsPerPixel;

    uint8       bgColor;
    uint8       null2 if version == GifVersion.V87A : null2 == 0;
    uint8       pixelAspectRatio if version == GifVersion.V89A;

    RgbColor    globalColorMap[1 << (bitsPerPixel+1)] if globalColorMapFollows == 1;
};
