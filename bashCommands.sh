#!/usr/bin/env bash

##create s3 bucket
aws s3 mb s3://imageload-vbloise

##dynamodb Amazon Resource Name (ARN)
arn:aws:dynamodb:us-west-2:001178231653:table/images

##zip command
zip -9 -r ../createThumbnailAndStoreInDB-v1.0.zip *