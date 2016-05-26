#!/usr/bin/env bash

##create s3 bucket
aws s3 mb s3://imageload-vbloise

##dynamodb Amazon Resource Name (ARN)
arn:aws:dynamodb:us-west-2:001178231653:table/images

##zip command
zip -9 -r ../createThumbnailAndStoreInDB-v1.0.zip *

##policy for creating and storing thumbnail in s3 bucket and dynamodb table
{
    "Version":  "2012-10-17",
    "Statement": [
    {
        "Effect": "Allow",
        "Action": [
            "s3:GetObject"
        ],
        "Resource": [
            "arn:aws:s3:::imageload-vbloise/images/*"
        ]
    },
    {
        "Effect": "Allow",
        "Action": [
            ""s3"PutObject"
        ],
        "Resource": [
            "arn:aws:s3:::imageload-vbloise/thumbs/*"
        ]
    },
    {
        "Effect": "Allow",
        "Action": [
            "dynamodb:PutItem"
        ],
        "Resource": [
            "arn:aws:dynamodb:us-west-2:001178231653:table/images"
        ]
    }
    ]
}