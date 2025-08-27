import Link from "next/link";

export default function Footer() {
  return (
    <footer className="border-t">
      <div className="container mx-auto flex flex-col items-center justify-between gap-4 py-10 md:h-24 md:flex-row md:py-0">
        <div className="flex flex-col items-center gap-4 px-8 md:flex-row md:gap-2 md:px-0">
          <p className="text-center text-sm leading-loose text-muted-foreground md:text-left">
            © {new Date().getFullYear()} RE MARRIAGEE. All rights reserved.
          </p>
        </div>
        <div className="flex items-center gap-4">
          <Link href="/contact-us" className="text-sm font-medium text-muted-foreground transition-colors hover:text-primary">
            Contact
          </Link>
          <Link href="/privacy-policy" className="text-sm font-medium text-muted-foreground transition-colors hover:text-primary">
            Privacy
          </Link>
          <Link href="/terms" className="text-sm font-medium text-muted-foreground transition-colors hover:text-primary">
            Terms
          </Link>
        </div>
      </div>
    </footer>
  );
}
