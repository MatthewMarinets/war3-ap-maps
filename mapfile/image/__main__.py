
import argparse
from . import blp, jpg, tga


def main() -> None:
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('file', type=str)
    args = parser.parse_args()
    if args.file.endswith('.blp'):
        blp_data = blp.read_blp(args.file)
        print(f'Blip with {len(blp_data.image_data[0])} mipmap levels')
        for index, image_data in enumerate(blp_data.image_data):
            jpg_data = jpg.read_jpg_data(image_data)
            print(f'{index}: {jpg_data.width}x{jpg_data.height}, {jpg_data.num_components} channels')
    elif args.file.endswith('.jpg') or args.file.endswith('.jpeg'):
        jpg_data = jpg.read_jpg_file()
        print(f'{jpg_data.width}x{jpg_data.height}, {jpg_data.num_components} channels')
    elif args.file.endswith('.tga'):
        image = tga.read_tga_file(args.file)
        print(f'{image.width}x{image.height}, {image.bits_per_pixel} bits/px, {image.alpha_bits} alpha bits')
    else:
        print(f'Unknown file extension for file {args.file}')


if __name__ == '__main__':
    main()
