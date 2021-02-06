# do-dns-updater

## About this Image

This container is useful as dynamic DNS, to keep updated the DNS records with the IP assigned by your ISP.

Use the [Digital Ocean Network API](https://developers.digitalocean.com/documentation/v2/#domain-records)

## How to use

- Point your domains to [Digital Ocean](https://m.do.co/c/b6dc7cce9ea7) using the nameservers
`n1.digitalocean.com`
`n2.digitalocean.com`
`n3.digitalocean.com`

- Create the domain in the `Networking` menu and add a new `A Record`, take note of the ID.
- Genetare `Personal access tokens` in `API` >  `Tokens/Keys` and store them in a safe place.

- Run the container with property `EVN` vars

```bash
docker run -e 'DOMAINS_INFO=domain1,domain2,domain3' -e 'RECORDS_IDS=id1,id2,id3' -e 'DO_API_KEY=your_personal_token' -name dns-updater --restart always jparadasb/do-dns-updater:latest
```

## Disclaimer

This container just allow to update one record per domain
