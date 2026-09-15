import { createContext, useCallback, useContext, useEffect, useRef, useState, type PropsWithChildren } from 'react';

/* Shared confirm dialog used by list delete actions. */
/* eslint-disable react-refresh/only-export-components */

type AskDelete = () => Promise<boolean>;
const ConfirmDeleteContext = createContext<AskDelete | null>(null);

export function ConfirmDeleteProvider({ children }: PropsWithChildren) {
  const [open, setOpen] = useState(false);
  const resolveRef = useRef<((value: boolean) => void) | null>(null);

  const finish = useCallback((value: boolean) => {
    resolveRef.current?.(value);
    resolveRef.current = null;
    setOpen(false);
  }, []);

  const ask = useCallback(() => new Promise<boolean>((resolve) => {
    document.querySelectorAll('details.row-menu[open]').forEach((node) => { (node as HTMLDetailsElement).open = false; });
    resolveRef.current = resolve;
    setOpen(true);
  }), []);

  useEffect(() => {
    if (!open) return undefined;
    const onKey = (event: KeyboardEvent) => { if (event.key === 'Escape') finish(false); };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [finish, open]);

  return (
    <ConfirmDeleteContext.Provider value={ask}>
      {children}
      {open ? (
        <div className="dialog-backdrop" onClick={() => finish(false)}>
          <div className="dialog" role="alertdialog" aria-modal="true" aria-labelledby="confirm-delete-title" onClick={(event) => event.stopPropagation()}>
            <p id="confirm-delete-title">Are you sure you want to delete?</p>
            <div className="row-actions">
              <button className="btn small secondary" type="button" onClick={() => finish(false)}>Cancel</button>
              <button className="btn small" type="button" onClick={() => finish(true)}>Delete</button>
            </div>
          </div>
        </div>
      ) : null}
    </ConfirmDeleteContext.Provider>
  );
}

export function useConfirmDelete() {
  const ask = useContext(ConfirmDeleteContext);
  if (!ask) throw new Error('useConfirmDelete must be used within ConfirmDeleteProvider');
  return ask;
}
