import { type CSSProperties, type PropsWithChildren } from 'react';

type PageSurfaceProps = PropsWithChildren<{ background?: string }>;

export function PageSurface({ background, children }: PageSurfaceProps) {
  const style = background ? ({ '--app-background': background } as CSSProperties) : undefined;
  return <div className="page-surface" style={style}>{children}</div>;
}
