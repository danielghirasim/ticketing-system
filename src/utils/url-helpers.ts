import { NextRequest } from 'next/server';

// eslint-disable-next-line @typescript-eslint/no-unused-vars
export function urlPath(applicationPath: string, tenant: string) {
  return applicationPath;
}

export function getHostnameAndPort(request: NextRequest) {
  const hostnameWithPort = request.headers.get('host')!;
  const [realHostname, port] = hostnameWithPort.split(':');

  let hostname;
  if (process.env.OVERRIDE_TENANT_DOMAIN) {
    hostname = process.env.OVERRIDE_TENANT_DOMAIN;
  } else {
    hostname = realHostname;
  }
  return [hostname, port];
}

export function buildUrl(applicationPath: string, tenant: string, request: NextRequest) {
  const [hostname, port] = getHostnameAndPort(request);

  const portSuffix = port && port != '443' ? `:${port}` : '';
  const { protocol } = request.nextUrl;
  const tenantUrl = `${protocol}//${hostname}${portSuffix}/`;
  return new URL(urlPath(applicationPath, tenant), tenantUrl);
}
