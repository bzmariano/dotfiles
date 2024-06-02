import hashlib
import argparse

def calculate_sha256(file):
    sha256 = hashlib.sha256()
    with open(file, 'rb') as f:
        for block in iter(lambda: f.read(4096), b""):
            sha256.update(block)
    return sha256.hexdigest()

def main():
    parser = argparse.ArgumentParser(description='Verify checksum SHA-256 of a file.')
    parser.add_argument('file', type=str, help='File to verify.')
    parser.add_argument('checksum_original', type=str, help='SHA-256 checksum submitted.')

    args = parser.parse_args()

    checksum_downloaded = calculate_sha256(args.file)

    if checksum_downloaded == args.checksum_original:
        print("The file is fine.")
    else:
        print("The file has been altered.")

if __name__ == '__main__':
    main()
