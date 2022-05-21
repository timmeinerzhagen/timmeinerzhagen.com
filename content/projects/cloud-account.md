+++ 
draft = false
date = 2022-04-10T22:04:38-04:00
title = "Cloud Account Management Tool"
description = "Keeping track of cloud accounts and connected metadata at Bayer. Created as IHK final project - still in productive use"
tags = ["work", "academic", "closed-source", "cloud"]
weight = 0
+++

# Cloud Account Management Tool

As part of the final project of my appretenticeship program in informatics, focus application development, which I absolved at Bayer, we were required to develop a full fledged application and document the whole process thoroughly.

I finished this project in the cloud team, which needed a single pane of glass that allowed them to get an overview of all cloud accounts and internal metadata for it. My final project was thus creating such a tool.

## Implementation

Architecting the tool was the first part of the project. It was envisioned as a web application, which is storing its data in a database. Hosted in the cloud, as would be expected of the cloud team.

It was realised within AWS utilizing serverless technologies including Lambda functions, DynamoDB, and website hosting via S3 and CloudFront. All integrated with Bayer default authentication.

## References

The project itself is closed source, but the corresponding paper can be shared on request.
