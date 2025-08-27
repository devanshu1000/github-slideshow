import { SignedIn, SignedOut, UserButton } from "@clerk/nextjs";
import Link from "next/link";

export default function Navbar() {
  return (
    <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur-sm">
      <div className="container mx-auto flex h-14 items-center">
        <div className="mr-4 flex">
          <Link href="/" className="mr-6 flex items-center space-x-2">
            <span className="font-bold">RE MARRIAGEE</span>
          </Link>
        </div>
        <div className="flex flex-1 items-center justify-center space-x-4">
          <input
            type="text"
            placeholder="Profile ID Search"
            className="hidden sm:flex w-1/3 rounded-md border px-3 py-1 text-sm"
          />
          <Link href="/contact-us" className="text-sm font-medium text-muted-foreground transition-colors hover:text-primary">
            Contact Us
          </Link>
        </div>
        <div className="flex items-center justify-end space-x-2 sm:space-x-4">
          <SignedIn>
            <UserButton afterSignOutUrl="/" />
          </SignedIn>
          <SignedOut>
            <Link href="/sign-in" className="text-sm font-medium">
              Login
            </Link>
            <Link href="/sign-up" className="rounded-md bg-black text-white px-3 py-1.5 text-sm font-medium">
              Register Free
            </Link>
          </SignedOut>
        </div>
      </div>
    </header>
  );
}
